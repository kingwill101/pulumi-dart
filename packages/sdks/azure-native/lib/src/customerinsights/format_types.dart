/// The type mapping format.
enum FormatTypes {
  valueTextFormat("TextFormat");

  const FormatTypes(this.value);
  final String value;

  static FormatTypes fromValue(String value) {
    for (final item in FormatTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FormatTypes value: $value');
  }
}

