/// Property value
enum HypervisorType {
  ovm("ovm"),
  xen("xen");

  const HypervisorType(this.value);
  final String value;

  static HypervisorType fromValue(String value) {
    for (final item in HypervisorType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HypervisorType value: $value');
  }
}

