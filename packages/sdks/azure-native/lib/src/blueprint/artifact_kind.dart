import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the kind of blueprint artifact.
enum ArtifactKind implements pulumi.PulumiEnum<String> {
  valueTemplate("template"),
  valueRoleAssignment("roleAssignment"),
  valuePolicyAssignment("policyAssignment");

  const ArtifactKind(this.wireValue);
  @override
  final String wireValue;

  static ArtifactKind fromValue(String value) {
    for (final item in ArtifactKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactKind value: $value');
  }
}
