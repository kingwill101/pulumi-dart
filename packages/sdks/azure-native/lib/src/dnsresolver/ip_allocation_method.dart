/// Private IP address allocation method.
enum IpAllocationMethod {
  valueStatic("Static"),
  valueDynamic("Dynamic");

  const IpAllocationMethod(this.value);
  final String value;

  static IpAllocationMethod fromValue(String value) {
    for (final item in IpAllocationMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAllocationMethod value: $value');
  }
}

