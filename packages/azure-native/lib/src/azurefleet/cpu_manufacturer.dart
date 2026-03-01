/// Cpu Manufacturers  supported by Azure VMs.
enum CpuManufacturer {
  intel("Intel"),
  aMD("AMD"),
  microsoft("Microsoft"),
  ampere("Ampere");

  const CpuManufacturer(this.value);
  final String value;

  static CpuManufacturer fromValue(String value) {
    for (final item in CpuManufacturer.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CpuManufacturer value: $value');
  }
}

