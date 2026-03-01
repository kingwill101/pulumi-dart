/// The kind of nodes that the Big Data pool provides.
enum NodeSizeFamily {
  valueNone("None"),
  valueMemoryOptimized("MemoryOptimized"),
  valueHardwareAcceleratedFPGA("HardwareAcceleratedFPGA"),
  valueHardwareAcceleratedGPU("HardwareAcceleratedGPU");

  const NodeSizeFamily(this.value);
  final String value;

  static NodeSizeFamily fromValue(String value) {
    for (final item in NodeSizeFamily.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeSizeFamily value: $value');
  }
}

