// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_job_alert.dart';
import 'get_app_spec_job_bitbucket.dart';
import 'get_app_spec_job_env.dart';
import 'get_app_spec_job_git.dart';
import 'get_app_spec_job_github.dart';
import 'get_app_spec_job_gitlab.dart';
import 'get_app_spec_job_image.dart';
import 'get_app_spec_job_log_destination.dart';
import 'get_app_spec_job_termination.dart';

class GetAppSpecJob {
  /// Describes an alert policy for the component.
  final List<GetAppSpecJobAlert>? alerts;
  /// A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  final GetAppSpecJobBitbucket? bitbucket;
  /// An optional build command to run while building this component from source.
  final String? buildCommand;
  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final String? dockerfilePath;
  /// An environment slug describing the type of this app.
  final String? environmentSlug;
  /// Describes an environment variable made available to an app competent.
  final List<GetAppSpecJobEnv>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  final GetAppSpecJobGit? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecJobGithub? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecJobGitlab? gitlab;
  /// An image to use as the component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecJobImage? image;
  /// The amount of instances that this component should be scaled to.
  final int? instanceCount;
  /// The instance size to use for this component.
  final String? instanceSizeSlug;
  /// The type of job and when it will be run during the deployment process. It may be one of:
  /// - `UNSPECIFIED`: Default job type, will auto-complete to POST_DEPLOY kind.
  /// - `PRE_DEPLOY`: Indicates a job that runs before an app deployment.
  /// - `POST_DEPLOY`: Indicates a job that runs after an app deployment.
  /// - `FAILED_DEPLOY`: Indicates a job that runs after a component fails to deploy.
  final String? kind;
  /// Describes a log forwarding destination.
  final List<GetAppSpecJobLogDestination>? logDestinations;
  /// The name of the component.
  final String name;
  /// An optional run command to override the component's default.
  final String? runCommand;
  /// An optional path to the working directory to use for the build.
  final String? sourceDir;
  /// Contains a component's termination parameters.
  final GetAppSpecJobTermination? termination;

  /// Creates a new [GetAppSpecJob].
  /// [alerts] Describes an alert policy for the component.
  /// [bitbucket] A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  /// [buildCommand] An optional build command to run while building this component from source.
  /// [dockerfilePath] The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  /// [environmentSlug] An environment slug describing the type of this app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [image] An image to use as the component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [instanceCount] The amount of instances that this component should be scaled to.
  /// [instanceSizeSlug] The instance size to use for this component.
  /// [kind] The type of job and when it will be run during the deployment process. It may be one of:
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [runCommand] An optional run command to override the component's default.
  /// [sourceDir] An optional path to the working directory to use for the build.
  /// [termination] Contains a component's termination parameters.
  GetAppSpecJob({
    this.alerts,
    this.bitbucket,
    this.buildCommand,
    this.dockerfilePath,
    this.environmentSlug,
    this.envs,
    this.git,
    this.github,
    this.gitlab,
    this.image,
    this.instanceCount,
    this.instanceSizeSlug,
    this.kind,
    this.logDestinations,
    required this.name,
    this.runCommand,
    this.sourceDir,
    this.termination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?alerts == null ? null : pulumi.Input.encodeList<GetAppSpecJobAlert, Map<String, dynamic>>(alerts!, (value) => value.toMap()),
      'bitbucket': ?bitbucket == null ? null : bitbucket!.toMap(),
      'buildCommand': ?buildCommand,
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs': ?envs == null ? null : pulumi.Input.encodeList<GetAppSpecJobEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'git': ?git == null ? null : git!.toMap(),
      'github': ?github == null ? null : github!.toMap(),
      'gitlab': ?gitlab == null ? null : gitlab!.toMap(),
      'image': ?image == null ? null : image!.toMap(),
      'instanceCount': ?instanceCount,
      'instanceSizeSlug': ?instanceSizeSlug,
      'kind': ?kind,
      'logDestinations': ?logDestinations == null ? null : pulumi.Input.encodeList<GetAppSpecJobLogDestination, Map<String, dynamic>>(logDestinations!, (value) => value.toMap()),
      'name': name,
      'runCommand': ?runCommand,
      'sourceDir': ?sourceDir,
      'termination': ?termination == null ? null : termination!.toMap(),
    };
  }

  factory GetAppSpecJob.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJob(
      alerts: map['alerts'] == null ? null : pulumi.Input.decodeList<GetAppSpecJobAlert>(map['alerts'], (value) => GetAppSpecJobAlert.fromMap((value as Map).cast<String, dynamic>())),
      bitbucket: map['bitbucket'] == null ? null : GetAppSpecJobBitbucket.fromMap((map['bitbucket'] as Map).cast<String, dynamic>()),
      buildCommand: map['buildCommand'] == null ? null : map['buildCommand'] as String,
      dockerfilePath: map['dockerfilePath'] == null ? null : map['dockerfilePath'] as String,
      environmentSlug: map['environmentSlug'] == null ? null : map['environmentSlug'] as String,
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<GetAppSpecJobEnv>(map['envs'], (value) => GetAppSpecJobEnv.fromMap((value as Map).cast<String, dynamic>())),
      git: map['git'] == null ? null : GetAppSpecJobGit.fromMap((map['git'] as Map).cast<String, dynamic>()),
      github: map['github'] == null ? null : GetAppSpecJobGithub.fromMap((map['github'] as Map).cast<String, dynamic>()),
      gitlab: map['gitlab'] == null ? null : GetAppSpecJobGitlab.fromMap((map['gitlab'] as Map).cast<String, dynamic>()),
      image: map['image'] == null ? null : GetAppSpecJobImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceSizeSlug: map['instanceSizeSlug'] == null ? null : map['instanceSizeSlug'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      logDestinations: map['logDestinations'] == null ? null : pulumi.Input.decodeList<GetAppSpecJobLogDestination>(map['logDestinations'], (value) => GetAppSpecJobLogDestination.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      runCommand: map['runCommand'] == null ? null : map['runCommand'] as String,
      sourceDir: map['sourceDir'] == null ? null : map['sourceDir'] as String,
      termination: map['termination'] == null ? null : GetAppSpecJobTermination.fromMap((map['termination'] as Map).cast<String, dynamic>()),
    );
  }
}

