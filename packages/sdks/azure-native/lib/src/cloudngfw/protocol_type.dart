/// Protocol Type
enum ProtocolType {
  valueTCP("TCP"),
  valueUDP("UDP");

  const ProtocolType(this.wireValue);
  final String wireValue;

  static ProtocolType fromValue(String value) {
    for (final item in ProtocolType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtocolType value: $value');
  }
}

