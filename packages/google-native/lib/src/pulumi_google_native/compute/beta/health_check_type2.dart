/// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
enum HealthCheckType2 {
  grpc("GRPC"),
  http("HTTP"),
  http2("HTTP2"),
  https("HTTPS"),
  invalid("INVALID"),
  ssl("SSL"),
  tcp("TCP");

  const HealthCheckType2(this.value);
  final String value;

  static HealthCheckType2 fromValue(String value) {
    for (final item in HealthCheckType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HealthCheckType2 value: $value');
  }
}
