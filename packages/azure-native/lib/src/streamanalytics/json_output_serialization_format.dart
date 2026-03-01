/// This property only applies to JSON serialization of outputs only. It is not applicable to inputs. This property specifies the format of the JSON the output will be written in. The currently supported values are 'lineSeparated' indicating the output will be formatted by having each JSON object separated by a new line and 'array' indicating the output will be formatted as an array of JSON objects. Default value is 'lineSeparated' if left null.
enum JsonOutputSerializationFormat {
  valueLineSeparated("LineSeparated"),
  valueArray("Array");

  const JsonOutputSerializationFormat(this.value);
  final String value;

  static JsonOutputSerializationFormat fromValue(String value) {
    for (final item in JsonOutputSerializationFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JsonOutputSerializationFormat value: $value');
  }
}

