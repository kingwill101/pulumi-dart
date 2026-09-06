import 'package:pulumi/pulumi.dart' as pulumi;

/// [Required] Type of deployment scaling algorithm
enum ScaleType implements pulumi.PulumiEnum<String> {
  default_("Default"),
  targetUtilization("TargetUtilization");

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
