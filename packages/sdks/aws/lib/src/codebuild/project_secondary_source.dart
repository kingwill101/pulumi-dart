// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_secondary_source_auth.dart';
import 'project_secondary_source_build_status_config.dart';
import 'project_secondary_source_git_submodules_config.dart';

class ProjectSecondarySource {
  /// Information about the strategy CodeBuild should use when authenticating with the source code host.
  /// Detailed below.
  final pulumi.Input<ProjectSecondarySourceAuth>? auth;
  /// Configuration block that contains information that defines how the build project
  /// reports the build status to the source provider. This option is only used when the source provider is GitHub, GitHub
  /// Enterprise, GitLab, GitLab Self Managed, or Bitbucket. `build_status_config` blocks are documented below.
  final pulumi.Input<ProjectSecondarySourceBuildStatusConfig>? buildStatusConfig;
  /// The build spec declaration to use for this build project's related builds. This must be set
  /// when `type` is `NO_SOURCE`. It can either be a path to a file residing in the repository to be built or a local file
  /// path leveraging the `file()` built-in.
  final pulumi.Input<String>? buildspec;
  /// Truncate git history to this many commits. Use `0` for a `Full` checkout which you need
  /// to run commands like `git branch --show-current`.
  /// See [AWS CodePipeline User Guide: Tutorial: Use full clone with a GitHub pipeline source](https://docs.aws.amazon.com/codepipeline/latest/userguide/tutorials-github-gitclone.html)
  /// for details.
  final pulumi.Input<int>? gitCloneDepth;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectSecondarySourceGitSubmodulesConfig>? gitSubmodulesConfig;
  /// Ignore SSL warnings when connecting to source control.
  final pulumi.Input<bool>? insecureSsl;
  /// Location of the source code from git or s3.
  final pulumi.Input<String>? location;
  /// Whether to report the status of a build's start and finish to your source provider.
  /// This option is valid only when your source provider is GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or
  /// Bitbucket.
  final pulumi.Input<bool>? reportBuildStatus;
  /// An identifier for this project source. The identifier can only contain alphanumeric
  /// characters and underscores, and must be less than 128 characters in length.
  final pulumi.Input<String> sourceIdentifier;
  /// Type of repository that contains the source code to be built. Valid values: `BITBUCKET`,
  /// `CODECOMMIT`, `CODEPIPELINE`, `GITHUB`, `GITHUB_ENTERPRISE`, `GITLAB`, `GITLAB_SELF_MANAGED`, `NO_SOURCE`, `S3`.
  final pulumi.Input<String> type;

  /// Creates a new [ProjectSecondarySource].
  /// [auth] Information about the strategy CodeBuild should use when authenticating with the source code host.
  /// [buildStatusConfig] Configuration block that contains information that defines how the build project
  /// [buildspec] The build spec declaration to use for this build project's related builds. This must be set
  /// [gitCloneDepth] Truncate git history to this many commits. Use `0` for a `Full` checkout which you need
  /// [gitSubmodulesConfig] Configuration block. Detailed below.
  /// [insecureSsl] Ignore SSL warnings when connecting to source control.
  /// [location] Location of the source code from git or s3.
  /// [reportBuildStatus] Whether to report the status of a build's start and finish to your source provider.
  /// [sourceIdentifier] An identifier for this project source. The identifier can only contain alphanumeric
  /// [type] Type of repository that contains the source code to be built. Valid values: `BITBUCKET`,
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
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<ProjectSecondarySourceAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'buildStatusConfig': ?pulumi.Input.mapOptionalInputValue<ProjectSecondarySourceBuildStatusConfig, Map<String, dynamic>>(buildStatusConfig, (value) => value.toMap()),
      'buildspec': ?buildspec,
      'gitCloneDepth': ?gitCloneDepth,
      'gitSubmodulesConfig': ?pulumi.Input.mapOptionalInputValue<ProjectSecondarySourceGitSubmodulesConfig, Map<String, dynamic>>(gitSubmodulesConfig, (value) => value.toMap()),
      'insecureSsl': ?insecureSsl,
      'location': ?location,
      'reportBuildStatus': ?reportBuildStatus,
      'sourceIdentifier': sourceIdentifier,
      'type': type,
    };
  }

  factory ProjectSecondarySource.fromMap(Map<String, dynamic> map) {
    return ProjectSecondarySource(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSecondarySourceAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildStatusConfig: (() { final guardedValue = map['buildStatusConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSecondarySourceBuildStatusConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildspec: (() { final guardedValue = map['buildspec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitCloneDepth: (() { final guardedValue = map['gitCloneDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gitSubmodulesConfig: (() { final guardedValue = map['gitSubmodulesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSecondarySourceGitSubmodulesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      insecureSsl: (() { final guardedValue = map['insecureSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportBuildStatus: (() { final guardedValue = map['reportBuildStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sourceIdentifier: pulumi.Input.fromValue(map['sourceIdentifier'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

