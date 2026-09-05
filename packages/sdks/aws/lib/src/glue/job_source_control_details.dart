// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobSourceControlDetails {
  /// The type of authentication, which can be an authentication token stored in Amazon Web Services Secrets Manager, or a personal access token. Valid values are: `PERSONAL_ACCESS_TOKEN` and `AWS_SECRETS_MANAGER`.
  final pulumi.Input<String?>? authStrategy;
  /// The value of an authorization token.
  final pulumi.Input<String?>? authToken;
  /// A branch in the remote repository.
  final pulumi.Input<String?>? branch;
  /// A folder in the remote repository.
  final pulumi.Input<String?>? folder;
  /// The last commit ID for a commit in the remote repository.
  final pulumi.Input<String?>? lastCommitId;
  /// The owner of the remote repository that contains the job artifacts.
  final pulumi.Input<String?>? owner;
  /// The provider for the remote repository. Valid values are: `GITHUB`, `GITLAB`, `BITBUCKET`, and `AWS_CODE_COMMIT`.
  final pulumi.Input<String?>? provider;
  /// The name of the remote repository that contains the job artifacts.
  final pulumi.Input<String?>? repository;

  /// Creates a new [JobSourceControlDetails].
  /// [authStrategy] The type of authentication, which can be an authentication token stored in Amazon Web Services Secrets Manager, or a personal access token. Valid values are: `PERSONAL_ACCESS_TOKEN` and `AWS_SECRETS_MANAGER`.
  /// [authToken] The value of an authorization token.
  /// [branch] A branch in the remote repository.
  /// [folder] A folder in the remote repository.
  /// [lastCommitId] The last commit ID for a commit in the remote repository.
  /// [owner] The owner of the remote repository that contains the job artifacts.
  /// [provider] The provider for the remote repository. Valid values are: `GITHUB`, `GITLAB`, `BITBUCKET`, and `AWS_CODE_COMMIT`.
  /// [repository] The name of the remote repository that contains the job artifacts.
  const JobSourceControlDetails({
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
      authStrategy: (() { final guardedValue = map['authStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authToken: (() { final guardedValue = map['authToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      branch: (() { final guardedValue = map['branch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastCommitId: (() { final guardedValue = map['lastCommitId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provider: (() { final guardedValue = map['provider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
