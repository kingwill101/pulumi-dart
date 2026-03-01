// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper {
  /// Required. Package name.
  final String name;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper].
  /// [name] Required. Package name.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgZypper(
      name: map['name'] as String,
    );
  }
}
