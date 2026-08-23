/// The type mapping format.
enum FormatTypes {
  valueTextFormat("TextFormat");

  const FormatTypes(this.wireValue);
  final String wireValue;

  static FormatTypes fromValue(String value) {
    for (final item in FormatTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FormatTypes value: $value');
  }
}
