/// Specifies the kind of blueprint artifact.
enum ArtifactKind {
  valueTemplate("template"),
  valueRoleAssignment("roleAssignment"),
  valuePolicyAssignment("policyAssignment");

  const ArtifactKind(this.wireValue);
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

