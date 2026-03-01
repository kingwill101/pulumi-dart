/// Specifies the kind of blueprint artifact.
enum ArtifactKind {
  valueTemplate("template"),
  valueRoleAssignment("roleAssignment"),
  valuePolicyAssignment("policyAssignment");

  const ArtifactKind(this.value);
  final String value;

  static ArtifactKind fromValue(String value) {
    for (final item in ArtifactKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ArtifactKind value: $value');
  }
}

