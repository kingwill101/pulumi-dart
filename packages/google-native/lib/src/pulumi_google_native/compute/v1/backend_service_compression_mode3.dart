/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendServiceCompressionMode3 {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendServiceCompressionMode3(this.value);
  final String value;

  static BackendServiceCompressionMode3 fromValue(String value) {
    for (final item in BackendServiceCompressionMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceCompressionMode3 value: $value');
  }
}
