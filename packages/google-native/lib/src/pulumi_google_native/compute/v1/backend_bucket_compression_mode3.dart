/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendBucketCompressionMode3 {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendBucketCompressionMode3(this.value);
  final String value;

  static BackendBucketCompressionMode3 fromValue(String value) {
    for (final item in BackendBucketCompressionMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendBucketCompressionMode3 value: $value');
  }
}
