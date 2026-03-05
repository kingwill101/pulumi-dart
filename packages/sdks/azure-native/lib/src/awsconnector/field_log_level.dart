/// Property value
enum FieldLogLevel {
  aLL("ALL"),
  eRROR("ERROR"),
  nONE("NONE");

  const FieldLogLevel(this.wireValue);
  final String wireValue;

  static FieldLogLevel fromValue(String value) {
    for (final item in FieldLogLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FieldLogLevel value: $value');
  }
}

