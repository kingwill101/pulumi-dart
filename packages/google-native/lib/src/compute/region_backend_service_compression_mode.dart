/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum RegionBackendServiceCompressionMode {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const RegionBackendServiceCompressionMode(this.value);
  final String value;

  static RegionBackendServiceCompressionMode fromValue(String value) {
    for (final item in RegionBackendServiceCompressionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionBackendServiceCompressionMode value: $value');
  }
}
