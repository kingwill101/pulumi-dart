/// Serialization format. Optional; defaults to JSON. Allowed value JSON Schema/draft-7, Parquet. Default: Json
enum TransformationSerializationFormat {
  delta("Delta"),
  json("Json"),
  parquet("Parquet");

  const TransformationSerializationFormat(this.value);
  final String value;

  static TransformationSerializationFormat fromValue(String value) {
    for (final item in TransformationSerializationFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TransformationSerializationFormat value: $value');
  }
}

