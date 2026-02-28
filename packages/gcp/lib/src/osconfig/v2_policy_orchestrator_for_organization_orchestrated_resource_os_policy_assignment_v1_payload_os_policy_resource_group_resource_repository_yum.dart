// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryYum {
  /// Required. The location of the repository directory.
  final String baseUrl;

  /// The display name of the repository.
  final String? displayName;

  /// URIs of GPG keys.
  final List<String>? gpgKeys;

  /// Required. A one word, unique name for this repository. This is  the `repo
  /// id` in the yum config file and also the `display_name` if
  /// `display_name` is omitted. This id is also used as the unique
  /// identifier when checking for resource conflicts.
  final String id;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryYum].
  /// [baseUrl] Required. The location of the repository directory.
  /// [displayName] The display name of the repository.
  /// [gpgKeys] URIs of GPG keys.
  /// [id] Required. A one word, unique name for this repository. This is  the `repo
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryYum({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseUrl'] = baseUrl;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gpgKeysValue = gpgKeys;
    if (gpgKeysValue != null) {
      map['gpgKeys'] = gpgKeysValue;
    }
    map['id'] = id;
    return map;
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryYum.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryYum(
      baseUrl: map['baseUrl'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      gpgKeys: map['gpgKeys'] == null
          ? null
          : (map['gpgKeys'] as List).cast<String>(),
      id: map['id'] as String,
    );
  }
}
