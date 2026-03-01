// ignore_for_file: unused_element, unnecessary_cast


/// Git integration settings
class WorkspaceRepositoryConfigurationResponse {
  /// Account name
  final String? accountName;
  /// Collaboration branch
  final String? collaborationBranch;
  /// GitHub Enterprise host name. For example: `https://github.mydomain.com`
  final String? hostName;
  /// The last commit ID
  final String? lastCommitId;
  /// VSTS project name
  final String? projectName;
  /// Repository name
  final String? repositoryName;
  /// Root folder to use in the repository
  final String? rootFolder;
  /// The VSTS tenant ID
  final String? tenantId;
  /// Type of workspace repositoryID configuration. Example WorkspaceVSTSConfiguration, WorkspaceGitHubConfiguration
  final String? type;

  /// Creates a new [WorkspaceRepositoryConfigurationResponse].
  /// [accountName] Account name
  /// [collaborationBranch] Collaboration branch
  /// [hostName] GitHub Enterprise host name. For example: `https://github.mydomain.com`
  /// [lastCommitId] The last commit ID
  /// [projectName] VSTS project name
  /// [repositoryName] Repository name
  /// [rootFolder] Root folder to use in the repository
  /// [tenantId] The VSTS tenant ID
  /// [type] Type of workspace repositoryID configuration. Example WorkspaceVSTSConfiguration, WorkspaceGitHubConfiguration
  WorkspaceRepositoryConfigurationResponse({
    this.accountName,
    this.collaborationBranch,
    this.hostName,
    this.lastCommitId,
    this.projectName,
    this.repositoryName,
    this.rootFolder,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'collaborationBranch': ?collaborationBranch,
      'hostName': ?hostName,
      'lastCommitId': ?lastCommitId,
      'projectName': ?projectName,
      'repositoryName': ?repositoryName,
      'rootFolder': ?rootFolder,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory WorkspaceRepositoryConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WorkspaceRepositoryConfigurationResponse(
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      collaborationBranch: map['collaborationBranch'] == null ? null : map['collaborationBranch'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      lastCommitId: map['lastCommitId'] == null ? null : map['lastCommitId'] as String,
      projectName: map['projectName'] == null ? null : map['projectName'] as String,
      repositoryName: map['repositoryName'] == null ? null : map['repositoryName'] as String,
      rootFolder: map['rootFolder'] == null ? null : map['rootFolder'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

