/// Kafka acks. Can be all, one, or zero. No effect if the endpoint is used as a source.
enum DataflowEndpointKafkaAcks {
  zero("Zero"),
  one("One"),
  all("All");

  const DataflowEndpointKafkaAcks(this.value);
  final String value;

  static DataflowEndpointKafkaAcks fromValue(String value) {
    for (final item in DataflowEndpointKafkaAcks.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowEndpointKafkaAcks value: $value');
  }
}

