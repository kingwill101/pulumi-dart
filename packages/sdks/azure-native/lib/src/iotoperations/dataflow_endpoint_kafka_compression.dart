import 'package:pulumi/pulumi.dart' as pulumi;

/// Compression. Can be none, gzip, lz4, or snappy. No effect if the endpoint is used as a source.
enum DataflowEndpointKafkaCompression implements pulumi.PulumiEnum<String> {
  none("None"),
  gzip("Gzip"),
  snappy("Snappy"),
  lz4("Lz4");

  const DataflowEndpointKafkaCompression(this.wireValue);
  @override
  final String wireValue;

  static DataflowEndpointKafkaCompression fromValue(String value) {
    for (final item in DataflowEndpointKafkaCompression.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowEndpointKafkaCompression value: $value');
  }
}
