/// Partition handling strategy. Can be default or static. No effect if the endpoint is used as a source.
enum DataflowEndpointKafkaPartitionStrategy {
  default_("Default"),
  static("Static"),
  topic("Topic"),
  property("Property");

  const DataflowEndpointKafkaPartitionStrategy(this.value);
  final String value;

  static DataflowEndpointKafkaPartitionStrategy fromValue(String value) {
    for (final item in DataflowEndpointKafkaPartitionStrategy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowEndpointKafkaPartitionStrategy value: $value');
  }
}

