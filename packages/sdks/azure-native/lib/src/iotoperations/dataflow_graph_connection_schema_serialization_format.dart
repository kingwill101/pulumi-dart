import 'package:pulumi/pulumi.dart' as pulumi;

/// Output serialization format.
enum DataflowGraphConnectionSchemaSerializationFormat implements pulumi.PulumiEnum<String> {
  delta("Delta"),
  json("Json"),
  parquet("Parquet"),
  avro("Avro");

  const DataflowGraphConnectionSchemaSerializationFormat(this.wireValue);
  @override
  final String wireValue;

  static DataflowGraphConnectionSchemaSerializationFormat fromValue(String value) {
    for (final item in DataflowGraphConnectionSchemaSerializationFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowGraphConnectionSchemaSerializationFormat value: $value');
  }
}
