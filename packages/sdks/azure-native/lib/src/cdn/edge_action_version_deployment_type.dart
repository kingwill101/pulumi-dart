import 'package:pulumi/pulumi.dart' as pulumi;

/// The deployment type
enum EdgeActionVersionDeploymentType implements pulumi.PulumiEnum<String> {
  zip("zip"),
  file("file"),
  others("others");

  const EdgeActionVersionDeploymentType(this.wireValue);
  @override
  final String wireValue;

  static EdgeActionVersionDeploymentType fromValue(String value) {
    for (final item in EdgeActionVersionDeploymentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EdgeActionVersionDeploymentType value: $value');
  }
}
