/// The compression to use for kafka messages.
enum KafkaMessageCompressionType {
  none("none"),
  gzip("gzip"),
  snappy("snappy"),
  lz4("lz4");

  const KafkaMessageCompressionType(this.value);
  final String value;

  static KafkaMessageCompressionType fromValue(String value) {
    for (final item in KafkaMessageCompressionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaMessageCompressionType value: $value');
  }
}

