// ignore_for_file: unused_element, unnecessary_cast

class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt {
  /// Type of archive files in this repository.
  /// Possible values are: `DEB`, `DEB_SRC`.
  final String archiveType;

  /// List of components for this repository. Must contain at least one
  /// item.
  final List<String> components;

  /// Distribution of this repository.
  final String distribution;

  /// URI of the key file for this repository. The agent maintains a
  /// keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
  final String? gpgKey;

  /// URI for this repository.
  final String uri;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt].
  /// [archiveType] Type of archive files in this repository.
  /// [components] List of components for this repository. Must contain at least one
  /// [distribution] Distribution of this repository.
  /// [gpgKey] URI of the key file for this repository. The agent maintains a
  /// [uri] URI for this repository.
  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt({
    required this.archiveType,
    required this.components,
    required this.distribution,
    this.gpgKey,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveType': archiveType,
      'components': components,
      'distribution': distribution,
      'gpgKey': ?gpgKey,
      'uri': uri,
    };
  }

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicyResourceGroupResourceRepositoryApt(
      archiveType: map['archiveType'] as String,
      components: (map['components'] as List).cast<String>(),
      distribution: map['distribution'] as String,
      gpgKey: map['gpgKey'] == null ? null : map['gpgKey'] as String,
      uri: map['uri'] as String,
    );
  }
}
