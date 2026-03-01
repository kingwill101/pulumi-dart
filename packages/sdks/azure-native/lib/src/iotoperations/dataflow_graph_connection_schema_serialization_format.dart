/// Output serialization format.
enum DataflowGraphConnectionSchemaSerializationFormat {
  delta("Delta"),
  json("Json"),
  parquet("Parquet"),
  avro("Avro");

  const DataflowGraphConnectionSchemaSerializationFormat(this.value);
  final String value;

  static DataflowGraphConnectionSchemaSerializationFormat fromValue(String value) {
    for (final item in DataflowGraphConnectionSchemaSerializationFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowGraphConnectionSchemaSerializationFormat value: $value');
  }
}

