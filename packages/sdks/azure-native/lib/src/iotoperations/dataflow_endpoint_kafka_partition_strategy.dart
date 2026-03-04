/// Partition handling strategy. Can be default or static. No effect if the endpoint is used as a source.
enum DataflowEndpointKafkaPartitionStrategy {
  default_("Default"),
  static("Static"),
  topic("Topic"),
  property("Property");

  const DataflowEndpointKafkaPartitionStrategy(this.wireValue);
  final String wireValue;

  static DataflowEndpointKafkaPartitionStrategy fromValue(String value) {
    for (final item in DataflowEndpointKafkaPartitionStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DataflowEndpointKafkaPartitionStrategy value: $value',
    );
  }
}
