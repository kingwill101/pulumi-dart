/// Output serialization format.
enum DataflowGraphConnectionSchemaSerializationFormat {
  delta("Delta"),
  json("Json"),
  parquet("Parquet"),
  avro("Avro");

  const DataflowGraphConnectionSchemaSerializationFormat(this.wireValue);
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

