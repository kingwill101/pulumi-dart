// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget {
  /// Required. Package name.
  final String name;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget].
  /// [name] Required. Package name.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourcePkgGooget(
      name: map['name'] as String,
    );
  }
}
