// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'git_hub_client_secret.dart';

/// Factory's GitHub repo information.
class FactoryGitHubConfiguration {
  /// Account name.
  final pulumi.Input<String> accountName;
  /// GitHub bring your own app client id.
  final pulumi.Input<String>? clientId;
  /// GitHub bring your own app client secret information.
  final pulumi.Input<GitHubClientSecret>? clientSecret;
  /// Collaboration branch.
  final pulumi.Input<String> collaborationBranch;
  /// Disable manual publish operation in ADF studio to favor automated publish.
  final pulumi.Input<bool>? disablePublish;
  /// GitHub Enterprise host name. For example: `https://github.mydomain.com`
  final pulumi.Input<String>? hostName;
  /// Last commit id.
  final pulumi.Input<String>? lastCommitId;
  /// Repository name.
  final pulumi.Input<String> repositoryName;
  /// Root folder.
  final pulumi.Input<String> rootFolder;
  /// Type of repo configuration.
  /// Expected value is 'FactoryGitHubConfiguration'.
  final pulumi.Input<String> type;

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
      'clientSecret': ?pulumi.Input.mapOptionalInputValue<GitHubClientSecret, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
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
      accountName: (map['accountName'] as String).input(),
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (GitHubClientSecret.fromMap((map['clientSecret']! as Map).cast<String, dynamic>())).input(),
      collaborationBranch: (map['collaborationBranch'] as String).input(),
      disablePublish: map['disablePublish'] == null ? null : (map['disablePublish']! as bool).input(),
      hostName: map['hostName'] == null ? null : (map['hostName']! as String).input(),
      lastCommitId: map['lastCommitId'] == null ? null : (map['lastCommitId']! as String).input(),
      repositoryName: (map['repositoryName'] as String).input(),
      rootFolder: (map['rootFolder'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

