/// The transport protocol to use in the Thrift layer (for V2 only). Default value is Binary.
enum ImpalaThriftTransportProtocol {
  valueBinary("Binary"),
  valueHTTP("HTTP");

  const ImpalaThriftTransportProtocol(this.wireValue);
  final String wireValue;

  static ImpalaThriftTransportProtocol fromValue(String value) {
    for (final item in ImpalaThriftTransportProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImpalaThriftTransportProtocol value: $value');
  }
}

