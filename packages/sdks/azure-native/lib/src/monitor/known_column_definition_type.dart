/// The type of the column data.
enum KnownColumnDefinitionType {
  valueString("string"),
  valueInt("int"),
  valueLong("long"),
  valueReal("real"),
  valueBoolean("boolean"),
  valueDatetime("datetime"),
  valueDynamic("dynamic");

  const KnownColumnDefinitionType(this.wireValue);
  final String wireValue;

  static KnownColumnDefinitionType fromValue(String value) {
    for (final item in KnownColumnDefinitionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownColumnDefinitionType value: $value');
  }
}
