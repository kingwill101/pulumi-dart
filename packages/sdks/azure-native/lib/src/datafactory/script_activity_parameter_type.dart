/// The type of the parameter.
enum ScriptActivityParameterType {
  valueBoolean("Boolean"),
  valueDateTime("DateTime"),
  valueDateTimeOffset("DateTimeOffset"),
  valueDecimal("Decimal"),
  valueDouble("Double"),
  valueGuid("Guid"),
  valueInt16("Int16"),
  valueInt32("Int32"),
  valueInt64("Int64"),
  valueSingle("Single"),
  valueString("String"),
  valueTimespan("Timespan");

  const ScriptActivityParameterType(this.wireValue);
  final String wireValue;

  static ScriptActivityParameterType fromValue(String value) {
    for (final item in ScriptActivityParameterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScriptActivityParameterType value: $value');
  }
}

