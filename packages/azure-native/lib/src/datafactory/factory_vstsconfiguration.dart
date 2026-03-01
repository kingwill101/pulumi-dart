// ignore_for_file: unused_element, unnecessary_cast


/// Factory's VSTS repo information.
class FactoryVSTSConfiguration {
  /// Account name.
  final String accountName;
  /// Collaboration branch.
  final String collaborationBranch;
  /// Disable manual publish operation in ADF studio to favor automated publish.
  final bool? disablePublish;
  /// Last commit id.
  final String? lastCommitId;
  /// VSTS project name.
  final String projectName;
  /// Repository name.
  final String repositoryName;
  /// Root folder.
  final String rootFolder;
  /// VSTS tenant id.
  final String? tenantId;
  /// Type of repo configuration.
  /// Expected value is 'FactoryVSTSConfiguration'.
  final String type;

  /// Creates a new [FactoryVSTSConfiguration].
  /// [accountName] Account name.
  /// [collaborationBranch] Collaboration branch.
  /// [disablePublish] Disable manual publish operation in ADF studio to favor automated publish.
  /// [lastCommitId] Last commit id.
  /// [projectName] VSTS project name.
  /// [repositoryName] Repository name.
  /// [rootFolder] Root folder.
  /// [tenantId] VSTS tenant id.
  /// [type] Type of repo configuration.
  FactoryVSTSConfiguration({
    required this.accountName,
    required this.collaborationBranch,
    this.disablePublish,
    this.lastCommitId,
    required this.projectName,
    required this.repositoryName,
    required this.rootFolder,
    this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'collaborationBranch': collaborationBranch,
      'disablePublish': ?disablePublish,
      'lastCommitId': ?lastCommitId,
      'projectName': projectName,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
      'tenantId': ?tenantId,
      'type': type,
    };
  }

  factory FactoryVSTSConfiguration.fromMap(Map<String, dynamic> map) {
    return FactoryVSTSConfiguration(
      accountName: map['accountName'] as String,
      collaborationBranch: map['collaborationBranch'] as String,
      disablePublish: map['disablePublish'] == null ? null : map['disablePublish'] as bool,
      lastCommitId: map['lastCommitId'] == null ? null : map['lastCommitId'] as String,
      projectName: map['projectName'] as String,
      repositoryName: map['repositoryName'] as String,
      rootFolder: map['rootFolder'] as String,
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
      type: map['type'] as String,
    );
  }
}

