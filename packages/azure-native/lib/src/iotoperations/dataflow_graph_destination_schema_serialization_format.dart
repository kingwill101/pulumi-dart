/// The format of the output data.
enum DataflowGraphDestinationSchemaSerializationFormat {
  parquet("Parquet"),
  delta("Delta");

  const DataflowGraphDestinationSchemaSerializationFormat(this.value);
  final String value;

  static DataflowGraphDestinationSchemaSerializationFormat fromValue(String value) {
    for (final item in DataflowGraphDestinationSchemaSerializationFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowGraphDestinationSchemaSerializationFormat value: $value');
  }
}

