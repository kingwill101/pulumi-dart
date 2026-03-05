/// Property value
enum HypervisorType {
  ovm("ovm"),
  xen("xen");

  const HypervisorType(this.wireValue);
  final String wireValue;

  static HypervisorType fromValue(String value) {
    for (final item in HypervisorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HypervisorType value: $value');
  }
}

