/// Column data type.
enum ColumnTypeEnum {
  valueString("string"),
  valueInt("int"),
  valueLong("long"),
  valueReal("real"),
  valueBoolean("boolean"),
  valueDateTime("dateTime"),
  valueGuid("guid"),
  valueDynamic("dynamic");

  const ColumnTypeEnum(this.value);
  final String value;

  static ColumnTypeEnum fromValue(String value) {
    for (final item in ColumnTypeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ColumnTypeEnum value: $value');
  }
}

