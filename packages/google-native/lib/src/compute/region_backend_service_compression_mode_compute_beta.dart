/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum RegionBackendServiceCompressionModeComputeBeta {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const RegionBackendServiceCompressionModeComputeBeta(this.value);
  final String value;

  static RegionBackendServiceCompressionModeComputeBeta fromValue(
      String value) {
    for (final item in RegionBackendServiceCompressionModeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionBackendServiceCompressionModeComputeBeta value: $value');
  }
}
