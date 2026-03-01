/// The transport protocol to use in the Thrift layer.
enum SparkThriftTransportProtocol {
  valueBinary("Binary"),
  valueSASL("SASL"),
  valueHTTP("HTTP ");

  const SparkThriftTransportProtocol(this.value);
  final String value;

  static SparkThriftTransportProtocol fromValue(String value) {
    for (final item in SparkThriftTransportProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkThriftTransportProtocol value: $value');
  }
}

