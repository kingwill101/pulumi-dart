// ignore_for_file: unused_element, unnecessary_cast


class JobSourceControlDetails {
  /// The type of authentication, which can be an authentication token stored in Amazon Web Services Secrets Manager, or a personal access token. Valid values are: `PERSONAL_ACCESS_TOKEN` and `AWS_SECRETS_MANAGER`.
  final String? authStrategy;
  /// The value of an authorization token.
  final String? authToken;
  /// A branch in the remote repository.
  final String? branch;
  /// A folder in the remote repository.
  final String? folder;
  /// The last commit ID for a commit in the remote repository.
  final String? lastCommitId;
  /// The owner of the remote repository that contains the job artifacts.
  final String? owner;
  /// The provider for the remote repository. Valid values are: `GITHUB`, `GITLAB`, `BITBUCKET`, and `AWS_CODE_COMMIT`.
  final String? provider;
  /// The name of the remote repository that contains the job artifacts.
  final String? repository;

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
      authStrategy: map['authStrategy'] == null ? null : map['authStrategy'] as String,
      authToken: map['authToken'] == null ? null : map['authToken'] as String,
      branch: map['branch'] == null ? null : map['branch'] as String,
      folder: map['folder'] == null ? null : map['folder'] as String,
      lastCommitId: map['lastCommitId'] == null ? null : map['lastCommitId'] as String,
      owner: map['owner'] == null ? null : map['owner'] as String,
      provider: map['provider'] == null ? null : map['provider'] as String,
      repository: map['repository'] == null ? null : map['repository'] as String,
    );
  }
}

