import 'package:pulumi/pulumi.dart' as pulumi;

/// The filter type you want to apply on organizational units and accounts.
enum DeploymentTargetsAccountFilterType implements pulumi.PulumiEnum<String> {
  dIFFERENCE("DIFFERENCE"),
  iNTERSECTION("INTERSECTION"),
  nONE("NONE"),
  uNION("UNION");

  const DeploymentTargetsAccountFilterType(this.wireValue);
  @override
  final String wireValue;

  static DeploymentTargetsAccountFilterType fromValue(String value) {
    for (final item in DeploymentTargetsAccountFilterType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DeploymentTargetsAccountFilterType value: $value');
  }
}
