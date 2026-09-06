import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the parameter.
enum ScriptActivityParameterType implements pulumi.PulumiEnum<String> {
  boolean("Boolean"),
  dateTime("DateTime"),
  dateTimeOffset("DateTimeOffset"),
  decimal("Decimal"),
  double_("Double"),
  guid("Guid"),
  int16("Int16"),
  int32("Int32"),
  int64("Int64"),
  single("Single"),
  string_("String"),
  timespan("Timespan");

  const ScriptActivityParameterType(this.wireValue);
  @override
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
