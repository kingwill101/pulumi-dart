import 'package:pulumi/pulumi.dart' as pulumi;

/// Deployment scale type.
enum DeploymentScaleType implements pulumi.PulumiEnum<String> {
  valueStandard("Standard"),
  valueManual("Manual");

  const DeploymentScaleType(this.wireValue);
  @override
  final String wireValue;

  static DeploymentScaleType fromValue(String value) {
    for (final item in DeploymentScaleType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentScaleType value: $value');
  }
}
