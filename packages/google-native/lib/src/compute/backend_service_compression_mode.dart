/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendServiceCompressionMode {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendServiceCompressionMode(this.value);
  final String value;

  static BackendServiceCompressionMode fromValue(String value) {
    for (final item in BackendServiceCompressionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendServiceCompressionMode value: $value');
  }
}

