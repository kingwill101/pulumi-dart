/// Property value
enum FieldLogLevel {
  aLL("ALL"),
  eRROR("ERROR"),
  nONE("NONE");

  const FieldLogLevel(this.value);
  final String value;

  static FieldLogLevel fromValue(String value) {
    for (final item in FieldLogLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FieldLogLevel value: $value');
  }
}

