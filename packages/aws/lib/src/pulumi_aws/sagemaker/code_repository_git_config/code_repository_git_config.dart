// ignore_for_file: unused_element, unnecessary_cast

class CodeRepositoryGitConfig {
  /// The default branch for the Git repository.
  final String? branch;

  /// The URL where the Git repository is located.
  final String repositoryUrl;

  /// The Amazon Resource Name (ARN) of the AWS Secrets Manager secret that contains the credentials used to access the git repository. The secret must have a staging label of AWSCURRENT and must be in the following format: `{"username": UserName, "password": Password}`
  final String? secretArn;

  CodeRepositoryGitConfig({
    this.branch,
    required this.repositoryUrl,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final branchValue = branch;
    if (branchValue != null) {
      map['branch'] = branchValue;
    }
    map['repositoryUrl'] = repositoryUrl;
    final secretArnValue = secretArn;
    if (secretArnValue != null) {
      map['secretArn'] = secretArnValue;
    }
    return map;
  }

  factory CodeRepositoryGitConfig.fromMap(Map<String, dynamic> map) {
    return CodeRepositoryGitConfig(
      branch: map['branch'] == null ? null : map['branch'] as String,
      repositoryUrl: map['repositoryUrl'] as String,
      secretArn: map['secretArn'] == null ? null : map['secretArn'] as String,
    );
  }
}
