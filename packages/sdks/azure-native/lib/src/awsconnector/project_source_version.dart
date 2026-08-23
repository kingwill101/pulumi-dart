// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ProjectSourceVersion
class ProjectSourceVersion {
  /// &lt;p&gt;An identifier for a source in the build project. The identifier can only contain alphanumeric characters and underscores, and must be less than 128 characters in length. &lt;/p&gt;
  final pulumi.Input<String>? sourceIdentifier;
  /// &lt;p&gt;The source version for the corresponding source identifier. If specified, must be one of:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For CodeCommit: the commit ID, branch, or Git tag to use.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For GitHub or GitLab: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format &lt;code&gt;pr/pull-request-ID&lt;/code&gt; (for example, &lt;code&gt;pr/25&lt;/code&gt;). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For Amazon S3: the version ID of the object that represents the build input ZIP file to use.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; For more information, see &lt;a href='https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html'&gt;Source Version Sample with CodeBuild&lt;/a&gt; in the &lt;i&gt;CodeBuild User Guide&lt;/i&gt;. &lt;/p&gt;
  final pulumi.Input<String>? sourceVersion;

  /// Creates a new [ProjectSourceVersion].
  /// [sourceIdentifier] &lt;p&gt;An identifier for a source in the build project. The identifier can only contain alphanumeric characters and underscores, and must be less than 128 characters in length. &lt;/p&gt;
  /// [sourceVersion] &lt;p&gt;The source version for the corresponding source identifier. If specified, must be one of:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;For CodeCommit: the commit ID, branch, or Git tag to use.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For GitHub or GitLab: the commit ID, pull request ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a pull request ID is specified, it must use the format &lt;code&gt;pr/pull-request-ID&lt;/code&gt; (for example, &lt;code&gt;pr/25&lt;/code&gt;). If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For Bitbucket: the commit ID, branch name, or tag name that corresponds to the version of the source code you want to build. If a branch name is specified, the branch's HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is used.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;For Amazon S3: the version ID of the object that represents the build input ZIP file to use.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt; For more information, see &lt;a href='https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html'&gt;Source Version Sample with CodeBuild&lt;/a&gt; in the &lt;i&gt;CodeBuild User Guide&lt;/i&gt;. &lt;/p&gt;
  const ProjectSourceVersion({
    this.sourceIdentifier,
    this.sourceVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceIdentifier': ?sourceIdentifier,
      'sourceVersion': ?sourceVersion,
    };
  }

  factory ProjectSourceVersion.fromMap(Map<String, dynamic> map) {
    return ProjectSourceVersion(
      sourceIdentifier: (() { final guardedValue = map['sourceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceVersion: (() { final guardedValue = map['sourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
