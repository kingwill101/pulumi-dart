/// Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header.
enum BackendBucketCompressionModeComputeV1 {
  automatic("AUTOMATIC"),
  disabled("DISABLED");

  const BackendBucketCompressionModeComputeV1(this.value);
  final String value;

  static BackendBucketCompressionModeComputeV1 fromValue(String value) {
    for (final item in BackendBucketCompressionModeComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown BackendBucketCompressionModeComputeV1 value: $value',
    );
  }
}
