/// The transport protocol to use in the Thrift layer.
enum SparkThriftTransportProtocol {
  valueBinary("Binary"),
  valueSASL("SASL"),
  valueHTTP("HTTP ");

  const SparkThriftTransportProtocol(this.wireValue);
  final String wireValue;

  static SparkThriftTransportProtocol fromValue(String value) {
    for (final item in SparkThriftTransportProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SparkThriftTransportProtocol value: $value');
  }
}
