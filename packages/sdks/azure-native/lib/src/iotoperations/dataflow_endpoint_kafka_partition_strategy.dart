import 'package:pulumi/pulumi.dart' as pulumi;

/// Partition handling strategy. Can be default or static. No effect if the endpoint is used as a source.
enum DataflowEndpointKafkaPartitionStrategy implements pulumi.PulumiEnum<String> {
  default_("Default"),
  static("Static"),
  topic("Topic"),
  property("Property");

  const DataflowEndpointKafkaPartitionStrategy(this.wireValue);
  @override
  final String wireValue;

  static DataflowEndpointKafkaPartitionStrategy fromValue(String value) {
    for (final item in DataflowEndpointKafkaPartitionStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowEndpointKafkaPartitionStrategy value: $value');
  }
}
