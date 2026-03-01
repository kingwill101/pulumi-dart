/// Compression. Can be none, gzip, lz4, or snappy. No effect if the endpoint is used as a source.
enum DataflowEndpointKafkaCompression {
  none("None"),
  gzip("Gzip"),
  snappy("Snappy"),
  lz4("Lz4");

  const DataflowEndpointKafkaCompression(this.value);
  final String value;

  static DataflowEndpointKafkaCompression fromValue(String value) {
    for (final item in DataflowEndpointKafkaCompression.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowEndpointKafkaCompression value: $value');
  }
}

