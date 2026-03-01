// ignore_for_file: unused_element, unnecessary_cast


class CodeRepositoryGitConfig {
  /// The default branch for the Git repository.
  final String? branch;
  /// The URL where the Git repository is located.
  final String repositoryUrl;
  /// The Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the credentials used to access the git repository. The secret must have a staging label of AWSCURRENT and must be in the following format: `{"username": UserName, "password": Password}`
  final String? secretArn;

  /// Creates a new [CodeRepositoryGitConfig].
  /// [branch] The default branch for the Git repository.
  /// [repositoryUrl] The URL where the Git repository is located.
  /// [secretArn] The Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the credentials used to access the git repository. The secret must have a staging label of AWSCURRENT and must be in the following format: `{"username": UserName, "password": Password}`
  CodeRepositoryGitConfig({
    this.branch,
    required this.repositoryUrl,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': ?branch,
      'repositoryUrl': repositoryUrl,
      'secretArn': ?secretArn,
    };
  }

  factory CodeRepositoryGitConfig.fromMap(Map<String, dynamic> map) {
    return CodeRepositoryGitConfig(
      branch: map['branch'] == null ? null : map['branch'] as String,
      repositoryUrl: map['repositoryUrl'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
    );
  }
}

