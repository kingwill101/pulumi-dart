enum CompressionType {
  valueGzip("gzip"),
  valueEstargz("estargz"),
  valueZstd("zstd");

  const CompressionType(this.value);
  final String value;

  static CompressionType fromValue(String value) {
    for (final item in CompressionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompressionType value: $value');
  }
}

