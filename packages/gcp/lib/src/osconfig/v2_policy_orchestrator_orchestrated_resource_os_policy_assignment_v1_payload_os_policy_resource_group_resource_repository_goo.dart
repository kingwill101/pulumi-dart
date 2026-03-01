// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryGoo {
  /// Required. The name of the repository.
  final String name;

  /// Required. The url of the repository.
  final String url;

  /// Creates a new [V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryGoo].
  /// [name] Required. The name of the repository.
  /// [url] Required. The url of the repository.
  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryGoo({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'url': url};
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryGoo.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryGoo(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
