// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_source_auth.dart';
import 'project_source_build_status_config.dart';
import 'project_source_git_submodules_config.dart';

class ProjectSource {
  /// Information about the strategy CodeBuild should use when authenticating with the source code host.
  /// Detailed below.
  final pulumi.Input<ProjectSourceAuth>? auth;
  /// Configuration block that contains information that defines how the build project
  /// reports the build status to the source provider. This option is only used when the source provider is GitHub, GitHub
  /// Enterprise, GitLab, GitLab Self Managed, or Bitbucket. `build_status_config` blocks are documented below.
  final pulumi.Input<ProjectSourceBuildStatusConfig>? buildStatusConfig;
  /// Build specification to use for this build project's related builds. This must be set when
  /// `type` is `NO_SOURCE`. Also, if a non-default buildspec file name or file path aside from the root is used, it must be
  /// specified.
  final pulumi.Input<String>? buildspec;
  /// Truncate git history to this many commits. Use `0` for a `Full` checkout which you need
  /// to run commands like `git branch --show-current`.
  /// See [AWS CodePipeline User Guide: Tutorial: Use full clone with a GitHub pipeline source](https://docs.aws.amazon.com/codepipeline/latest/userguide/tutorials-github-gitclone.html)
  /// for details.
  final pulumi.Input<int>? gitCloneDepth;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectSourceGitSubmodulesConfig>? gitSubmodulesConfig;
  /// Ignore SSL warnings when connecting to source control.
  final pulumi.Input<bool>? insecureSsl;
  /// Location of the source code from git or s3.
  final pulumi.Input<String>? location;
  /// Whether to report the status of a build's start and finish to your source provider.
  /// This option is valid only when your source provider is GitHub, GitHub Enterprise, GitLab, GitLab Self Managed, or
  /// Bitbucket.
  final pulumi.Input<bool>? reportBuildStatus;
  /// Type of repository that contains the source code to be built. Valid values: `BITBUCKET`,
  /// `CODECOMMIT`, `CODEPIPELINE`, `GITHUB`, `GITHUB_ENTERPRISE`, `GITLAB`, `GITLAB_SELF_MANAGED`, `NO_SOURCE`, `S3`.
  final pulumi.Input<String> type;

  /// Creates a new [ProjectSource].
  /// [auth] Information about the strategy CodeBuild should use when authenticating with the source code host.
  /// [buildStatusConfig] Configuration block that contains information that defines how the build project
  /// [buildspec] Build specification to use for this build project's related builds. This must be set when
  /// [gitCloneDepth] Truncate git history to this many commits. Use `0` for a `Full` checkout which you need
  /// [gitSubmodulesConfig] Configuration block. Detailed below.
  /// [insecureSsl] Ignore SSL warnings when connecting to source control.
  /// [location] Location of the source code from git or s3.
  /// [reportBuildStatus] Whether to report the status of a build's start and finish to your source provider.
  /// [type] Type of repository that contains the source code to be built. Valid values: `BITBUCKET`,
  const ProjectSource({
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
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<ProjectSourceAuth, Map<String, dynamic>>(auth, (value) => value.toMap()),
      'buildStatusConfig': ?pulumi.Input.mapOptionalInputValue<ProjectSourceBuildStatusConfig, Map<String, dynamic>>(buildStatusConfig, (value) => value.toMap()),
      'buildspec': ?buildspec,
      'gitCloneDepth': ?gitCloneDepth,
      'gitSubmodulesConfig': ?pulumi.Input.mapOptionalInputValue<ProjectSourceGitSubmodulesConfig, Map<String, dynamic>>(gitSubmodulesConfig, (value) => value.toMap()),
      'insecureSsl': ?insecureSsl,
      'location': ?location,
      'reportBuildStatus': ?reportBuildStatus,
      'type': type,
    };
  }

  factory ProjectSource.fromMap(Map<String, dynamic> map) {
    return ProjectSource(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSourceAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildStatusConfig: (() { final guardedValue = map['buildStatusConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSourceBuildStatusConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildspec: (() { final guardedValue = map['buildspec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitCloneDepth: (() { final guardedValue = map['gitCloneDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      gitSubmodulesConfig: (() { final guardedValue = map['gitSubmodulesConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectSourceGitSubmodulesConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      insecureSsl: (() { final guardedValue = map['insecureSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reportBuildStatus: (() { final guardedValue = map['reportBuildStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

