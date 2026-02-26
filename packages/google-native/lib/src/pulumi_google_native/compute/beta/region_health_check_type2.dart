/// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
enum RegionHealthCheckType2 {
  grpc("GRPC"),
  http("HTTP"),
  http2("HTTP2"),
  https("HTTPS"),
  invalid("INVALID"),
  ssl("SSL"),
  tcp("TCP");

  const RegionHealthCheckType2(this.value);
  final String value;

  static RegionHealthCheckType2 fromValue(String value) {
    for (final item in RegionHealthCheckType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionHealthCheckType2 value: $value');
  }
}
