import 'package:pulumi/pulumi.dart' as pulumi;

/// the type of action that should occur when the scale rule fires.
enum ScaleType implements pulumi.PulumiEnum<String> {
  valueChangeCount("ChangeCount"),
  valuePercentChangeCount("PercentChangeCount"),
  valueExactCount("ExactCount"),
  valueServiceAllowedNextValue("ServiceAllowedNextValue");

  const ScaleType(this.wireValue);
  @override
  final String wireValue;

  static ScaleType fromValue(String value) {
    for (final item in ScaleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ScaleType value: $value');
  }
}
