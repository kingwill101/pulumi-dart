/// Kafka acks. Can be all, one, or zero. No effect if the endpoint is used as a source.
enum DataflowEndpointKafkaAcks {
  zero("Zero"),
  one("One"),
  all("All");

  const DataflowEndpointKafkaAcks(this.wireValue);
  final String wireValue;

  static DataflowEndpointKafkaAcks fromValue(String value) {
    for (final item in DataflowEndpointKafkaAcks.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowEndpointKafkaAcks value: $value');
  }
}
