// ignore_for_file: unused_element, unnecessary_cast

import 'git_hub_client_secret.dart';

/// Factory's GitHub repo information.
class FactoryGitHubConfiguration {
  /// Account name.
  final String accountName;
  /// GitHub bring your own app client id.
  final String? clientId;
  /// GitHub bring your own app client secret information.
  final GitHubClientSecret? clientSecret;
  /// Collaboration branch.
  final String collaborationBranch;
  /// Disable manual publish operation in ADF studio to favor automated publish.
  final bool? disablePublish;
  /// GitHub Enterprise host name. For example: `https://github.mydomain.com`
  final String? hostName;
  /// Last commit id.
  final String? lastCommitId;
  /// Repository name.
  final String repositoryName;
  /// Root folder.
  final String rootFolder;
  /// Type of repo configuration.
  /// Expected value is 'FactoryGitHubConfiguration'.
  final String type;

  /// Creates a new [FactoryGitHubConfiguration].
  /// [accountName] Account name.
  /// [clientId] GitHub bring your own app client id.
  /// [clientSecret] GitHub bring your own app client secret information.
  /// [collaborationBranch] Collaboration branch.
  /// [disablePublish] Disable manual publish operation in ADF studio to favor automated publish.
  /// [hostName] GitHub Enterprise host name. For example: `https://github.mydomain.com`
  /// [lastCommitId] Last commit id.
  /// [repositoryName] Repository name.
  /// [rootFolder] Root folder.
  /// [type] Type of repo configuration.
  FactoryGitHubConfiguration({
    required this.accountName,
    this.clientId,
    this.clientSecret,
    required this.collaborationBranch,
    this.disablePublish,
    this.hostName,
    this.lastCommitId,
    required this.repositoryName,
    required this.rootFolder,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret == null ? null : clientSecret!.toMap(),
      'collaborationBranch': collaborationBranch,
      'disablePublish': ?disablePublish,
      'hostName': ?hostName,
      'lastCommitId': ?lastCommitId,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
      'type': type,
    };
  }

  factory FactoryGitHubConfiguration.fromMap(Map<String, dynamic> map) {
    return FactoryGitHubConfiguration(
      accountName: map['accountName'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
      clientSecret: map['clientSecret'] == null ? null : GitHubClientSecret.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      collaborationBranch: map['collaborationBranch'] as String,
      disablePublish: map['disablePublish'] == null ? null : map['disablePublish'] as bool,
      hostName: map['hostName'] == null ? null : map['hostName'] as String,
      lastCommitId: map['lastCommitId'] == null ? null : map['lastCommitId'] as String,
      repositoryName: map['repositoryName'] as String,
      rootFolder: map['rootFolder'] as String,
      type: map['type'] as String,
    );
  }
}

