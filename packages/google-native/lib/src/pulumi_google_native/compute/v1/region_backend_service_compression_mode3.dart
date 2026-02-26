/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum RegionBackendServiceCompressionMode3 {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const RegionBackendServiceCompressionMode3(this.value);
  final String value;

  static RegionBackendServiceCompressionMode3 fromValue(String value) {
    for (final item in RegionBackendServiceCompressionMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown RegionBackendServiceCompressionMode3 value: $value');
  }
}
