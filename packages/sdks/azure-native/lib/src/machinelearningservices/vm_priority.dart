/// Virtual Machine priority
enum VmPriority {
  dedicated("Dedicated"),
  lowPriority("LowPriority");

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
