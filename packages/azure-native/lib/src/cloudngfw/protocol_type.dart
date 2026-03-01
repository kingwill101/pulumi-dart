/// Protocol Type
enum ProtocolType {
  valueTCP("TCP"),
  valueUDP("UDP");

  const ProtocolType(this.value);
  final String value;

  static ProtocolType fromValue(String value) {
    for (final item in ProtocolType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtocolType value: $value');
  }
}

