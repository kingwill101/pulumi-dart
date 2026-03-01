/// cidr should not be 'any'
enum BooleanEnum {
  valueTRUE("TRUE"),
  valueFALSE("FALSE");

  const BooleanEnum(this.value);
  final String value;

  static BooleanEnum fromValue(String value) {
    for (final item in BooleanEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BooleanEnum value: $value');
  }
}

