/// Virtual Machine priority
enum VmPriority {
  valueDedicated("Dedicated"),
  valueLowPriority("LowPriority");

  const VmPriority(this.value);
  final String value;

  static VmPriority fromValue(String value) {
    for (final item in VmPriority.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmPriority value: $value');
  }
}

