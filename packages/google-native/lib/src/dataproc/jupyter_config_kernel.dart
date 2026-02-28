/// Optional. Kernel
enum JupyterConfigKernel {
  kernelUnspecified("KERNEL_UNSPECIFIED"),
  python("PYTHON"),
  scala("SCALA");

  const JupyterConfigKernel(this.value);
  final String value;

  static JupyterConfigKernel fromValue(String value) {
    for (final item in JupyterConfigKernel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JupyterConfigKernel value: $value');
  }
}
