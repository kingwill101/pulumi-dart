/// Ingress transport protocol
enum IngressTransportMethod {
  valueAuto("auto"),
  valueHttp("http"),
  valueHttp2("http2"),
  valueTcp("tcp");

  const IngressTransportMethod(this.wireValue);
  final String wireValue;

  static IngressTransportMethod fromValue(String value) {
    for (final item in IngressTransportMethod.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngressTransportMethod value: $value');
  }
}

