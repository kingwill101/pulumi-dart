/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendBucketCompressionMode {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendBucketCompressionMode(this.value);
  final String value;

  static BackendBucketCompressionMode fromValue(String value) {
    for (final item in BackendBucketCompressionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendBucketCompressionMode value: $value');
  }
}

