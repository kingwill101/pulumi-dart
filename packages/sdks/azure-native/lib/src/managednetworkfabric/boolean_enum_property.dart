import 'package:pulumi/pulumi.dart' as pulumi;

/// Based on this option layer3 parameters are mandatory. Example: True/False
enum BooleanEnumProperty implements pulumi.PulumiEnum<String> {
  valueTrue("True"),
  valueFalse("False");

  const BooleanEnumProperty(this.wireValue);
  @override
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
