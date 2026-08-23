/// The transport protocol to use in the Thrift layer.
enum SparkThriftTransportProtocol {
  binary("Binary"),
  sASL("SASL"),
  hTTP("HTTP ");

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
