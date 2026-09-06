import 'package:pulumi/pulumi.dart' as pulumi;

/// The property to decide policy is enforced or not on the volume
enum ElasticVolumePolicyEnforcement implements pulumi.PulumiEnum<String> {
  enforced("Enforced"),
  notEnforced("NotEnforced");

  const ElasticVolumePolicyEnforcement(this.wireValue);
  @override
  final String wireValue;

  static ElasticVolumePolicyEnforcement fromValue(String value) {
    for (final item in ElasticVolumePolicyEnforcement.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticVolumePolicyEnforcement value: $value');
  }
}
