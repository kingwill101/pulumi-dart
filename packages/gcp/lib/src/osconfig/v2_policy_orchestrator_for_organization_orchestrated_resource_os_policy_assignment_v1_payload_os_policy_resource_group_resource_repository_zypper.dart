// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper {
  /// Required. The location of the repository directory.
  final String baseUrl;

  /// The display name of the repository.
  final String? displayName;

  /// URIs of GPG keys.
  final List<String>? gpgKeys;

  /// Required. A one word, unique name for this repository. This is the `repo
  /// id` in the zypper config file and also the `display_name` if
  /// `display_name` is omitted. This id is also used as the unique
  /// identifier when checking for GuestPolicy conflicts.
  final String id;

  /// Creates a new [V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper].
  /// [baseUrl] Required. The location of the repository directory.
  /// [displayName] The display name of the repository.
  /// [gpgKeys] URIs of GPG keys.
  /// [id] Required. A one word, unique name for this repository. This is the `repo
  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': baseUrl,
      'displayName': ?displayName,
      'gpgKeys': ?gpgKeys,
      'id': id,
    };
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryZypper(
      baseUrl: map['baseUrl'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      gpgKeys: map['gpgKeys'] == null
          ? null
          : (map['gpgKeys'] as List).cast<String>(),
      id: map['id'] as String,
    );
  }
}
