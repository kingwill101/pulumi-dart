/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendServiceCompressionMode2 {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendServiceCompressionMode2(this.value);
  final String value;

  static BackendServiceCompressionMode2 fromValue(String value) {
    for (final item in BackendServiceCompressionMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceCompressionMode2 value: $value');
  }
}
