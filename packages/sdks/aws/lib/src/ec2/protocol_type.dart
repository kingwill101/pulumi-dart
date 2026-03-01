enum ProtocolType {
  all("all"),
  tCP("tcp"),
  uDP("udp"),
  iCMP("icmp");

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

