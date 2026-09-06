import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the column data.
enum KnownColumnDefinitionType implements pulumi.PulumiEnum<String> {
  valueString("string"),
  valueInt("int"),
  valueLong("long"),
  valueReal("real"),
  valueBoolean("boolean"),
  valueDatetime("datetime"),
  valueDynamic("dynamic");

  const KnownColumnDefinitionType(this.wireValue);
  @override
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
