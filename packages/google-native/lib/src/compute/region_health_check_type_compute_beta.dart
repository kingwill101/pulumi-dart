/// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
enum RegionHealthCheckTypeComputeBeta {
  grpc("GRPC"),
  http("HTTP"),
  http2("HTTP2"),
  https("HTTPS"),
  invalid("INVALID"),
  ssl("SSL"),
  tcp("TCP");

  const RegionHealthCheckTypeComputeBeta(this.value);
  final String value;

  static RegionHealthCheckTypeComputeBeta fromValue(String value) {
    for (final item in RegionHealthCheckTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown RegionHealthCheckTypeComputeBeta value: $value',
    );
  }
}
