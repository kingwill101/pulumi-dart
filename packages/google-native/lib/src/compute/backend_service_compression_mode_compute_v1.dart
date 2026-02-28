/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendServiceCompressionModeComputeV1 {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendServiceCompressionModeComputeV1(this.value);
  final String value;

  static BackendServiceCompressionModeComputeV1 fromValue(String value) {
    for (final item in BackendServiceCompressionModeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BackendServiceCompressionModeComputeV1 value: $value');
  }
}
