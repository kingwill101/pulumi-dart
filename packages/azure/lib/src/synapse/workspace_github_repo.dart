// ignore_for_file: unused_element, unnecessary_cast


class WorkspaceGithubRepo {
  /// Specifies the GitHub account name.
  final String accountName;
  /// Specifies the collaboration branch of the repository to get code from.
  final String branchName;
  /// Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>.
  ///
  /// > **Note:** You must log in to the Synapse UI to complete the authentication to the GitHub repository.
  final String? gitUrl;
  /// The last commit ID.
  final String? lastCommitId;
  /// Specifies the name of the git repository.
  final String repositoryName;
  /// Specifies the root folder within the repository. Set to `/` for the top level.
  final String rootFolder;

  /// Creates a new [WorkspaceGithubRepo].
  /// [accountName] Specifies the GitHub account name.
  /// [branchName] Specifies the collaboration branch of the repository to get code from.
  /// [gitUrl] Specifies the GitHub Enterprise host name. For example: <https://github.mydomain.com>.
  /// [lastCommitId] The last commit ID.
  /// [repositoryName] Specifies the name of the git repository.
  /// [rootFolder] Specifies the root folder within the repository. Set to `/` for the top level.
  WorkspaceGithubRepo({
    required this.accountName,
    required this.branchName,
    this.gitUrl,
    this.lastCommitId,
    required this.repositoryName,
    required this.rootFolder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'branchName': branchName,
      'gitUrl': ?gitUrl,
      'lastCommitId': ?lastCommitId,
      'repositoryName': repositoryName,
      'rootFolder': rootFolder,
    };
  }

  factory WorkspaceGithubRepo.fromMap(Map<String, dynamic> map) {
    return WorkspaceGithubRepo(
      accountName: map['accountName'] as String,
      branchName: map['branchName'] as String,
      gitUrl: map['gitUrl'] == null ? null : map['gitUrl'] as String,
      lastCommitId: map['lastCommitId'] == null ? null : map['lastCommitId'] as String,
      repositoryName: map['repositoryName'] as String,
      rootFolder: map['rootFolder'] as String,
    );
  }
}

