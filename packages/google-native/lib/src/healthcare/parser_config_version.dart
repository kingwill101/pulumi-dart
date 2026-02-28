/// Immutable. Determines the version of both the default parser to be used when `schema` is not given, as well as the schematized parser used when `schema` is specified. This field is immutable after HL7v2 store creation.
enum ParserConfigVersion {
  parserVersionUnspecified("PARSER_VERSION_UNSPECIFIED"),
  v1("V1"),
  v2("V2"),
  v3("V3");

  const ParserConfigVersion(this.value);
  final String value;

  static ParserConfigVersion fromValue(String value) {
    for (final item in ParserConfigVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ParserConfigVersion value: $value');
  }
}
