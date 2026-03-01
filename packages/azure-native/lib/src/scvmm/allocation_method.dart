/// Gets or sets the mac address type.
enum AllocationMethod {
  valueDynamic("Dynamic"),
  valueStatic("Static");

  const AllocationMethod(this.value);
  final String value;

  static AllocationMethod fromValue(String value) {
    for (final item in AllocationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationMethod value: $value');
  }
}

