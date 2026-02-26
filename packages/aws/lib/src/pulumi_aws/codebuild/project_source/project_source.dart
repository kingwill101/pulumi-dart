// ignore_for_file: unused_element, unnecessary_cast

import '../project_source_auth/project_source_auth.dart';
import '../project_source_build_status_config/project_source_build_status_config.dart';
import '../project_source_git_submodules_config/project_source_git_submodules_config.dart';

class ProjectSource {
  /// Information about the strategy CodeBuild should use when authenticating with the source code host.
  /// Detailed below.
  final ProjectSourceAuth? auth;

  /// Configuration block that contains information that defines how the build project
  /// reports the build status to the source provider. This option is only used when the source provider is GitHub, GitHub
  /// Enterprise, GitLab, GitLab Self Managed, or Bitbucket. <span pulumi-lang-nodejs="`buildStatusConfig`" pulumi-lang-dotnet="`BuildStatusConfig`" pulumi-lang-go="`buildStatusConfig`" pulumi-lang-python="`build_status_config`" pulumi-lang-yaml="`buildStatusConfig`" pulumi-lang-java="`buildStatusConfig`">`build_status_config`</span> blocks are documented below.
  final ProjectSourceBuildStatusConfig? buildStatusConfig;

  /// Build specification to use for this build project's related builds. This must be set when
  /// <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> is `NO_SOURCE`. Also, if a non-default buildspec file name or file path aside from the root is used, it must be
  /// specified.
  final String? buildspec;

  /// Truncate git history to this many commits. Use <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> for a `Full` checkout which you need
  /// to run commands like `git branch --show-current`.
  /// See [AWS CodePipeline User Guide: Tutorial: Use full clone with a GitHub pipeline source](https://docs.aws.amazon.com/codepipeline/latest/userguide/tutorials-github-gitclone.html)
  /// for details.
  final int? gitCloneDepth;

  /// Configuration block. Detailed below.
  final ProjectSourceGitSubmodulesConfig? gitSubmodulesConfig;

  /// Ignore SSL warnings when connecting to source control.
  final bool? insecureSsl;

  /// Location of the source code from git or s3.
  final String? location;

  /// Whether to report the status of a build's start and finish to your source provider.
  /// This option is valid only when your source provider is GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or
  /// Bitbucket.
  final bool? reportBuildStatus;

  /// Type of repository that contains the source code to be built. Valid values: `BITBUCKET`,
  /// `CODECOMMIT`, `CODEPIPELINE`, `GITHUB`, `GITHUB_ENTERPRISE`, `GITLAB`, `GITLAB_SELF_MANAGED`, `NO_SOURCE`, `S3`.
  final String type;

  ProjectSource({
    this.auth,
    this.buildStatusConfig,
    this.buildspec,
    this.gitCloneDepth,
    this.gitSubmodulesConfig,
    this.insecureSsl,
    this.location,
    this.reportBuildStatus,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authValue = auth;
    if (authValue != null) {
      map['auth'] = authValue.toMap();
    }
    final buildStatusConfigValue = buildStatusConfig;
    if (buildStatusConfigValue != null) {
      map['buildStatusConfig'] = buildStatusConfigValue.toMap();
    }
    final buildspecValue = buildspec;
    if (buildspecValue != null) {
      map['buildspec'] = buildspecValue;
    }
    final gitCloneDepthValue = gitCloneDepth;
    if (gitCloneDepthValue != null) {
      map['gitCloneDepth'] = gitCloneDepthValue;
    }
    final gitSubmodulesConfigValue = gitSubmodulesConfig;
    if (gitSubmodulesConfigValue != null) {
      map['gitSubmodulesConfig'] = gitSubmodulesConfigValue.toMap();
    }
    final insecureSslValue = insecureSsl;
    if (insecureSslValue != null) {
      map['insecureSsl'] = insecureSslValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final reportBuildStatusValue = reportBuildStatus;
    if (reportBuildStatusValue != null) {
      map['reportBuildStatus'] = reportBuildStatusValue;
    }
    map['type'] = type;
    return map;
  }

  factory ProjectSource.fromMap(Map<String, dynamic> map) {
    return ProjectSource(
      auth: map['auth'] == null
          ? null
          : ProjectSourceAuth.fromMap(
              (map['auth'] as Map).cast<String, dynamic>()),
      buildStatusConfig: map['buildStatusConfig'] == null
          ? null
          : ProjectSourceBuildStatusConfig.fromMap(
              (map['buildStatusConfig'] as Map).cast<String, dynamic>()),
      buildspec: map['buildspec'] == null ? null : map['buildspec'] as String,
      gitCloneDepth:
          map['gitCloneDepth'] == null ? null : map['gitCloneDepth'] as int,
      gitSubmodulesConfig: map['gitSubmodulesConfig'] == null
          ? null
          : ProjectSourceGitSubmodulesConfig.fromMap(
              (map['gitSubmodulesConfig'] as Map).cast<String, dynamic>()),
      insecureSsl:
          map['insecureSsl'] == null ? null : map['insecureSsl'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      reportBuildStatus: map['reportBuildStatus'] == null
          ? null
          : map['reportBuildStatus'] as bool,
      type: map['type'] as String,
    );
  }
}
