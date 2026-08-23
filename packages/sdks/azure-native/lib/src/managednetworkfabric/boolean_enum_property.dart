/// Based on this option layer3 parameters are mandatory. Example: True/False
enum BooleanEnumProperty {
  valueTrue("True"),
  valueFalse("False");

  const BooleanEnumProperty(this.wireValue);
  final String wireValue;

  static BooleanEnumProperty fromValue(String value) {
    for (final item in BooleanEnumProperty.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BooleanEnumProperty value: $value');
  }
}
