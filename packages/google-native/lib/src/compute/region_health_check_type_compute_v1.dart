/// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
enum RegionHealthCheckTypeComputeV1 {
  grpc("GRPC"),
  http("HTTP"),
  http2("HTTP2"),
  https("HTTPS"),
  invalid("INVALID"),
  ssl("SSL"),
  tcp("TCP");

  const RegionHealthCheckTypeComputeV1(this.value);
  final String value;

  static RegionHealthCheckTypeComputeV1 fromValue(String value) {
    for (final item in RegionHealthCheckTypeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RegionHealthCheckTypeComputeV1 value: $value');
  }
}
