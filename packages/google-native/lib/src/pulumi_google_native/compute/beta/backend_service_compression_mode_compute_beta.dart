/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendServiceCompressionModeComputeBeta {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendServiceCompressionModeComputeBeta(this.value);
  final String value;

  static BackendServiceCompressionModeComputeBeta fromValue(String value) {
    for (final item in BackendServiceCompressionModeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown BackendServiceCompressionModeComputeBeta value: $value');
  }
}
