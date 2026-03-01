/// The transport protocol to use in the Thrift layer.
enum HiveThriftTransportProtocol {
  valueBinary("Binary"),
  valueSASL("SASL"),
  valueHTTP("HTTP ");

  const HiveThriftTransportProtocol(this.value);
  final String value;

  static HiveThriftTransportProtocol fromValue(String value) {
    for (final item in HiveThriftTransportProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HiveThriftTransportProtocol value: $value');
  }
}

