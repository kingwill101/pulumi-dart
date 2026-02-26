/// Determines how messages that fail to parse are handled.
enum SchemaPackageSchematizedParsingType2 {
  schematizedParsingTypeUnspecified("SCHEMATIZED_PARSING_TYPE_UNSPECIFIED"),
  softFail("SOFT_FAIL"),
  hardFail("HARD_FAIL");

  const SchemaPackageSchematizedParsingType2(this.value);
  final String value;

  static SchemaPackageSchematizedParsingType2 fromValue(String value) {
    for (final item in SchemaPackageSchematizedParsingType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SchemaPackageSchematizedParsingType2 value: $value');
  }
}
