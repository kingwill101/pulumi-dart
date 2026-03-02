// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobSourceControlDetails {
  /// The type of authentication, which can be an authentication token stored in Amazon Web Services Secrets Manager, or a personal access token. Valid values are: `PERSONAL_ACCESS_TOKEN` and `AWS_SECRETS_MANAGER`.
  final pulumi.Input<String>? authStrategy;
  /// The value of an authorization token.
  final pulumi.Input<String>? authToken;
  /// A branch in the remote repository.
  final pulumi.Input<String>? branch;
  /// A folder in the remote repository.
  final pulumi.Input<String>? folder;
  /// The last commit ID for a commit in the remote repository.
  final pulumi.Input<String>? lastCommitId;
  /// The owner of the remote repository that contains the job artifacts.
  final pulumi.Input<String>? owner;
  /// The provider for the remote repository. Valid values are: `GITHUB`, `GITLAB`, `BITBUCKET`, and `AWS_CODE_COMMIT`.
  final pulumi.Input<String>? provider;
  /// The name of the remote repository that contains the job artifacts.
  final pulumi.Input<String>? repository;

  /// Creates a new [JobSourceControlDetails].
  /// [authStrategy] The type of authentication, which can be an authentication token stored in Amazon Web Services Secrets Manager, or a personal access token. Valid values are: `PERSONAL_ACCESS_TOKEN` and `AWS_SECRETS_MANAGER`.
  /// [authToken] The value of an authorization token.
  /// [branch] A branch in the remote repository.
  /// [folder] A folder in the remote repository.
  /// [lastCommitId] The last commit ID for a commit in the remote repository.
  /// [owner] The owner of the remote repository that contains the job artifacts.
  /// [provider] The provider for the remote repository. Valid values are: `GITHUB`, `GITLAB`, `BITBUCKET`, and `AWS_CODE_COMMIT`.
  /// [repository] The name of the remote repository that contains the job artifacts.
  JobSourceControlDetails({
    this.authStrategy,
    this.authToken,
    this.branch,
    this.folder,
    this.lastCommitId,
    this.owner,
    this.provider,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authStrategy': ?authStrategy,
      'authToken': ?authToken,
      'branch': ?branch,
      'folder': ?folder,
      'lastCommitId': ?lastCommitId,
      'owner': ?owner,
      'provider': ?provider,
      'repository': ?repository,
    };
  }

  factory JobSourceControlDetails.fromMap(Map<String, dynamic> map) {
    return JobSourceControlDetails(
      authStrategy: map['authStrategy'] == null ? null : (map['authStrategy'] as String).input(),
      authToken: map['authToken'] == null ? null : (map['authToken'] as String).input(),
      branch: map['branch'] == null ? null : (map['branch'] as String).input(),
      folder: map['folder'] == null ? null : (map['folder'] as String).input(),
      lastCommitId: map['lastCommitId'] == null ? null : (map['lastCommitId'] as String).input(),
      owner: map['owner'] == null ? null : (map['owner'] as String).input(),
      provider: map['provider'] == null ? null : (map['provider'] as String).input(),
      repository: map['repository'] == null ? null : (map['repository'] as String).input(),
    );
  }
}

