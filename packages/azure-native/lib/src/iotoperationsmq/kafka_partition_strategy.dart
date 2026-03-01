/// The partition strategy to use for Kafka.
enum KafkaPartitionStrategy {
  default_("default"),
  static("static"),
  topic("topic"),
  property("property");

  const KafkaPartitionStrategy(this.value);
  final String value;

  static KafkaPartitionStrategy fromValue(String value) {
    for (final item in KafkaPartitionStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaPartitionStrategy value: $value');
  }
}

