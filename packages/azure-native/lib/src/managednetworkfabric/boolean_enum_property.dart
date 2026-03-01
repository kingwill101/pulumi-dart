/// Based on this option layer3 parameters are mandatory. Example: True/False
enum BooleanEnumProperty {
  valueTrue("True"),
  valueFalse("False");

  const BooleanEnumProperty(this.value);
  final String value;

  static BooleanEnumProperty fromValue(String value) {
    for (final item in BooleanEnumProperty.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BooleanEnumProperty value: $value');
  }
}

