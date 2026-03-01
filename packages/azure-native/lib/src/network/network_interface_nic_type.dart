/// Type of Network Interface resource.
enum NetworkInterfaceNicType {
  valueStandard("Standard"),
  valueElastic("Elastic");

  const NetworkInterfaceNicType(this.value);
  final String value;

  static NetworkInterfaceNicType fromValue(String value) {
    for (final item in NetworkInterfaceNicType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceNicType value: $value');
  }
}

