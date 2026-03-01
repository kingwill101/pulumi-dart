/// The type for the IpAllocation.
enum IpAllocationType {
  valueUndefined("Undefined"),
  valueHypernet("Hypernet");

  const IpAllocationType(this.value);
  final String value;

  static IpAllocationType fromValue(String value) {
    for (final item in IpAllocationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IpAllocationType value: $value');
  }
}

