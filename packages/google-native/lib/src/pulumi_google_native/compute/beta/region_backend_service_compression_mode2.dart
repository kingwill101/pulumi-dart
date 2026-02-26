/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum RegionBackendServiceCompressionMode2 {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const RegionBackendServiceCompressionMode2(this.value);
  final String value;

  static RegionBackendServiceCompressionMode2 fromValue(String value) {
    for (final item in RegionBackendServiceCompressionMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionBackendServiceCompressionMode2 value: $value');
  }
}
