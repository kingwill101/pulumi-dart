/// The transport protocol to use in the Thrift layer.
enum HiveThriftTransportProtocol {
  valueBinary("Binary"),
  valueSASL("SASL"),
  valueHTTP("HTTP ");

  const HiveThriftTransportProtocol(this.wireValue);
  final String wireValue;

  static HiveThriftTransportProtocol fromValue(String value) {
    for (final item in HiveThriftTransportProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HiveThriftTransportProtocol value: $value');
  }
}
