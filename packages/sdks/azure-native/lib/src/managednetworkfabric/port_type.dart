/// Port type that needs to be matched.
enum PortType {
  valueSourcePort("SourcePort"),
  valueDestinationPort("DestinationPort");

  const PortType(this.wireValue);
  final String wireValue;

  static PortType fromValue(String value) {
    for (final item in PortType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PortType value: $value');
  }
}
