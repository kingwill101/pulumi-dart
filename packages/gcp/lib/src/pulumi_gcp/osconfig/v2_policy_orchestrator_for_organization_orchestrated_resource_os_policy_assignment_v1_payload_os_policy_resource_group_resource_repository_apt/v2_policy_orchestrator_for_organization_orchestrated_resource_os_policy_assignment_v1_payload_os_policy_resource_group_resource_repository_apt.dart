// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt {
  /// Required. Type of archive files in this repository.
  /// Possible values:
  /// ARCHIVE_TYPE_UNSPECIFIED
  /// DEB
  /// DEB_SRC
  final String archiveType;

  /// Required. List of components for this repository. Must contain at least one
  /// item.
  final List<String> components;

  /// Required. Distribution of this repository.
  final String distribution;

  /// URI of the key file for this repository. The agent maintains a
  /// keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  final String? gpgKey;

  /// Required. URI for this repository.
  final String uri;

  V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['archiveType'] = archiveType;
    map['components'] = components;
    map['distribution'] = distribution;
    final gpgKeyValue = gpgKey;
    if (gpgKeyValue != null) {
      map['gpgKey'] = gpgKeyValue;
    }
    map['uri'] = uri;
    return map;
  }

  factory V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForOrganizationOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt(
      archiveType: map['archiveType'] as String,
      components: (map['components'] as List).cast<String>(),
      distribution: map['distribution'] as String,
      gpgKey: map['gpgKey'] == null ? null : map['gpgKey'] as String,
      uri: map['uri'] as String,
    );
  }
}
