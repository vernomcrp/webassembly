defmodule WebAssembly do
  @moduledoc """
  Wrapper module for assembling html document using macros.

  Main entry point is `WebAssembly.DSL.builder/1`, which prepares
  environment for using HTML macros from `WebAssembly.HTML` module.

  These modules are automatically imported, so you just use:

      use WebAssembly
      builder do
        div class: "mydiv" do
          #...
        end
      end
  """

  defmacro __using__(_opts) do
    quote do
      import WebAssembly.DSL
      use    WebAssembly.HTML
      import WebAssembly.Tools.Output, only: [flush: 1]
      :ok
    end
  end
end
