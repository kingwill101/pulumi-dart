/// cidr should not be 'any'
enum BooleanEnum {
  valueTRUE("TRUE"),
  valueFALSE("FALSE");

  const BooleanEnum(this.wireValue);
  final String wireValue;

  static BooleanEnum fromValue(String value) {
    for (final item in BooleanEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BooleanEnum value: $value');
  }
}

