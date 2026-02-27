// ignore_for_file: unused_element, unnecessary_cast

import '../project_secondary_source_auth/project_secondary_source_auth.dart';
import '../project_secondary_source_build_status_config/project_secondary_source_build_status_config.dart';
import '../project_secondary_source_git_submodules_config/project_secondary_source_git_submodules_config.dart';

class ProjectSecondarySource {
  /// Information about the strategy CodeBuild should use when authenticating with the source code host.
  /// Detailed below.
  final ProjectSecondarySourceAuth? auth;

  /// Configuration block that contains information that defines how the build project
  /// reports the build status to the source provider. This option is only used when the source provider is GitHub, GitHub
  /// Enterprise, GitLab, GitLab Self Managed, or Bitbucket. `build_status_config` blocks are documented below.
  final ProjectSecondarySourceBuildStatusConfig? buildStatusConfig;

  /// The build spec declaration to use for this build project's related builds. This must be set
  /// when `type` is `NO_SOURCE`. It can either be a path to a file residing in the repository to be built or a local file
  /// path leveraging the `file()` built-in.
  final String? buildspec;

  /// Truncate git history to this many commits. Use `0` for a `Full` checkout which you need
  /// to run commands like `git branch --show-current`.
  /// See [AWS CodePipeline User Guide: Tutorial: Use full clone with a GitHub pipeline source](https://docs.aws.amazon.com/codepipeline/latest/userguide/tutorials-github-gitclone.html)
  /// for details.
  final int? gitCloneDepth;

  /// Configuration block. Detailed below.
  final ProjectSecondarySourceGitSubmodulesConfig? gitSubmodulesConfig;

  /// Ignore SSL warnings when connecting to source control.
  final bool? insecureSsl;

  /// Location of the source code from git or s3.
  final String? location;

  /// Whether to report the status of a build's start and finish to your source provider.
  /// This option is valid only when your source provider is GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or
  /// Bitbucket.
  final bool? reportBuildStatus;

  /// An identifier for this project source. The identifier can only contain alphanumeric
  /// characters and underscores, and must be less than 128 characters in length.
  final String sourceIdentifier;

  /// Type of repository that contains the source code to be built. Valid values: `BITBUCKET`,
  /// `CODECOMMIT`, `CODEPIPELINE`, `GITHUB`, `GITHUB_ENTERPRISE`, `GITLAB`, `GITLAB_SELF_MANAGED`, `NO_SOURCE`, `S3`.
  final String type;

  ProjectSecondarySource({
    this.auth,
    this.buildStatusConfig,
    this.buildspec,
    this.gitCloneDepth,
    this.gitSubmodulesConfig,
    this.insecureSsl,
    this.location,
    this.reportBuildStatus,
    required this.sourceIdentifier,
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
    map['sourceIdentifier'] = sourceIdentifier;
    map['type'] = type;
    return map;
  }

  factory ProjectSecondarySource.fromMap(Map<String, dynamic> map) {
    return ProjectSecondarySource(
      auth: map['auth'] == null
          ? null
          : ProjectSecondarySourceAuth.fromMap(
              (map['auth'] as Map).cast<String, dynamic>()),
      buildStatusConfig: map['buildStatusConfig'] == null
          ? null
          : ProjectSecondarySourceBuildStatusConfig.fromMap(
              (map['buildStatusConfig'] as Map).cast<String, dynamic>()),
      buildspec: map['buildspec'] == null ? null : map['buildspec'] as String,
      gitCloneDepth:
          map['gitCloneDepth'] == null ? null : map['gitCloneDepth'] as int,
      gitSubmodulesConfig: map['gitSubmodulesConfig'] == null
          ? null
          : ProjectSecondarySourceGitSubmodulesConfig.fromMap(
              (map['gitSubmodulesConfig'] as Map).cast<String, dynamic>()),
      insecureSsl:
          map['insecureSsl'] == null ? null : map['insecureSsl'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      reportBuildStatus: map['reportBuildStatus'] == null
          ? null
          : map['reportBuildStatus'] as bool,
      sourceIdentifier: map['sourceIdentifier'] as String,
      type: map['type'] as String,
    );
  }
}
