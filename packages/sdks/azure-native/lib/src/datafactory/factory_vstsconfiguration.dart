// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Factory's VSTS repo information.
class FactoryVSTSConfiguration {
  /// Account name.
  final pulumi.Input<String> accountName;
  /// Collaboration branch.
  final pulumi.Input<String> collaborationBranch;
  /// Disable manual publish operation in ADF studio to favor automated publish.
  final pulumi.Input<bool>? disablePublish;
  /// Last commit id.
  final pulumi.Input<String>? lastCommitId;
  /// VSTS project name.
  final pulumi.Input<String> projectName;
  /// Repository name.
  final pulumi.Input<String> repositoryName;
  /// Root folder.
  final pulumi.Input<String> rootFolder;
  /// VSTS tenant id.
  final pulumi.Input<String>? tenantId;
  /// Type of repo configuration.
  /// Expected value is 'FactoryVSTSConfiguration'.
  final pulumi.Input<String> type;

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
  const FactoryVSTSConfiguration({
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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      collaborationBranch: pulumi.Input.fromValue(map['collaborationBranch'] as String),
      disablePublish: (() { final guardedValue = map['disablePublish']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastCommitId: (() { final guardedValue = map['lastCommitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      rootFolder: pulumi.Input.fromValue(map['rootFolder'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
