// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ProjectSourceVersion
class ProjectSourceVersionResponse {
  /// <p>An identifier for a source in the build project. The identifier can only contain alphanumeric characters and underscores, and must be less than 128 characters in length. </p>
  final String? sourceIdentifier;
  /// <p>The source version for the corresponding source identifier. If specified, must be one of:</p> <ul> <li> <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub or GitLab: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example, <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon S3: the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul> <p> For more information, see <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html'>Source Version Sample with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
  final String? sourceVersion;

  /// Creates a new [ProjectSourceVersionResponse].
  /// [sourceIdentifier] <p>An identifier for a source in the build project. The identifier can only contain alphanumeric characters and underscores, and must be less than 128 characters in length. </p>
  /// [sourceVersion] <p>The source version for the corresponding source identifier. If specified, must be one of:</p> <ul> <li> <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p> </li> <li> <p>For GitHub or GitLab: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format <code>pr/pull-request-ID</code> (for example, <code>pr/25</code>). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.</p> </li> <li> <p>For Amazon S3: the version ID of the object that represents the build input ZIP file to use.</p> </li> </ul> <p> For more information, see <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html'>Source Version Sample with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
  ProjectSourceVersionResponse({
    this.sourceIdentifier,
    this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceIdentifier': ?sourceIdentifier,
      'sourceVersion': ?sourceVersion,
    };
  }

  factory ProjectSourceVersionResponse.fromMap(Map<String, dynamic> map) {
    return ProjectSourceVersionResponse(
      sourceIdentifier: map['sourceIdentifier'] == null ? null : map['sourceIdentifier'] as String,
      sourceVersion: map['sourceVersion'] == null ? null : map['sourceVersion'] as String,
    );
  }
}

