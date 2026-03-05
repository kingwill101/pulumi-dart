/// The partition strategy to use for Kafka.
enum KafkaPartitionStrategy {
  default_("default"),
  static("static"),
  topic("topic"),
  property("property");

  const KafkaPartitionStrategy(this.wireValue);
  final String wireValue;

  static KafkaPartitionStrategy fromValue(String value) {
    for (final item in KafkaPartitionStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KafkaPartitionStrategy value: $value');
  }
}

