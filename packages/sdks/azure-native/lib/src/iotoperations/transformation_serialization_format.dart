/// Serialization format. Optional; defaults to JSON. Allowed value JSON Schema/draft-7, Parquet. Default: Json
enum TransformationSerializationFormat {
  delta("Delta"),
  json("Json"),
  parquet("Parquet");

  const TransformationSerializationFormat(this.wireValue);
  final String wireValue;

  static TransformationSerializationFormat fromValue(String value) {
    for (final item in TransformationSerializationFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransformationSerializationFormat value: $value');
  }
}

