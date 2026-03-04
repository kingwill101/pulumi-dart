/// Cpu Manufacturers  supported by Azure VMs.
enum CpuManufacturer {
  intel("Intel"),
  aMD("AMD"),
  microsoft("Microsoft"),
  ampere("Ampere");

  const CpuManufacturer(this.wireValue);
  final String wireValue;

  static CpuManufacturer fromValue(String value) {
    for (final item in CpuManufacturer.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CpuManufacturer value: $value');
  }
}
