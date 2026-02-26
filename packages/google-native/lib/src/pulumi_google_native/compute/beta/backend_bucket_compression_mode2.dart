/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendBucketCompressionMode2 {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendBucketCompressionMode2(this.value);
  final String value;

  static BackendBucketCompressionMode2 fromValue(String value) {
    for (final item in BackendBucketCompressionMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendBucketCompressionMode2 value: $value');
  }
}
