/// Virtual Machine priority
enum VmPriority {
  valueDedicated("Dedicated"),
  valueLowPriority("LowPriority");

  const VmPriority(this.wireValue);
  final String wireValue;

  static VmPriority fromValue(String value) {
    for (final item in VmPriority.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmPriority value: $value');
  }
}
