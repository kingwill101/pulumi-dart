/// The format of the output data.
enum DataflowGraphDestinationSchemaSerializationFormat {
  parquet("Parquet"),
  delta("Delta");

  const DataflowGraphDestinationSchemaSerializationFormat(this.wireValue);
  final String wireValue;

  static DataflowGraphDestinationSchemaSerializationFormat fromValue(
    String value,
  ) {
    for (final item
        in DataflowGraphDestinationSchemaSerializationFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown DataflowGraphDestinationSchemaSerializationFormat value: $value',
    );
  }
}
