/// Port type that needs to be matched.
enum PortType {
  valueSourcePort("SourcePort"),
  valueDestinationPort("DestinationPort");

  const PortType(this.value);
  final String value;

  static PortType fromValue(String value) {
    for (final item in PortType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PortType value: $value');
  }
}

