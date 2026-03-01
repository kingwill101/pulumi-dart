// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_service_alert.dart';
import 'get_app_spec_service_autoscaling.dart';
import 'get_app_spec_service_bitbucket.dart';
import 'get_app_spec_service_cors.dart';
import 'get_app_spec_service_env.dart';
import 'get_app_spec_service_git.dart';
import 'get_app_spec_service_github.dart';
import 'get_app_spec_service_gitlab.dart';
import 'get_app_spec_service_health_check.dart';
import 'get_app_spec_service_image.dart';
import 'get_app_spec_service_log_destination.dart';
import 'get_app_spec_service_route.dart';
import 'get_app_spec_service_termination.dart';

class GetAppSpecService {
  /// Describes an alert policy for the component.
  final List<GetAppSpecServiceAlert>? alerts;
  /// Configuration for automatically scaling this component based on metrics.
  final GetAppSpecServiceAutoscaling? autoscaling;
  /// A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  final GetAppSpecServiceBitbucket? bitbucket;
  /// An optional build command to run while building this component from source.
  final String? buildCommand;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final GetAppSpecServiceCors? cors;
  /// The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  final String? dockerfilePath;
  /// An environment slug describing the type of this app.
  final String? environmentSlug;
  /// Describes an environment variable made available to an app competent.
  final List<GetAppSpecServiceEnv>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  final GetAppSpecServiceGit? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecServiceGithub? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecServiceGitlab? gitlab;
  /// A health check to determine the availability of this component.
  final GetAppSpecServiceHealthCheck? healthCheck;
  /// The internal port on which this service's run command will listen.
  final int httpPort;
  /// An image to use as the component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecServiceImage? image;
  /// The amount of instances that this component should be scaled to.
  final int? instanceCount;
  /// The instance size to use for this component.
  final String? instanceSizeSlug;
  /// A list of ports on which this service will listen for internal traffic.
  final List<int> internalPorts;
  /// Describes a log forwarding destination.
  final List<GetAppSpecServiceLogDestination>? logDestinations;
  /// The name of the component.
  final String name;
  final List<GetAppSpecServiceRoute> routes;
  /// An optional run command to override the component's default.
  final String runCommand;
  /// An optional path to the working directory to use for the build.
  final String? sourceDir;
  /// Contains a component's termination parameters.
  final GetAppSpecServiceTermination? termination;

  /// Creates a new [GetAppSpecService].
  /// [alerts] Describes an alert policy for the component.
  /// [autoscaling] Configuration for automatically scaling this component based on metrics.
  /// [bitbucket] A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  /// [buildCommand] An optional build command to run while building this component from source.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [dockerfilePath] The path to a Dockerfile relative to the root of the repo. If set, overrides usage of buildpacks.
  /// [environmentSlug] An environment slug describing the type of this app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [healthCheck] A health check to determine the availability of this component.
  /// [httpPort] The internal port on which this service's run command will listen.
  /// [image] An image to use as the component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [instanceCount] The amount of instances that this component should be scaled to.
  /// [instanceSizeSlug] The instance size to use for this component.
  /// [internalPorts] A list of ports on which this service will listen for internal traffic.
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [routes] Required.
  /// [runCommand] An optional run command to override the component's default.
  /// [sourceDir] An optional path to the working directory to use for the build.
  /// [termination] Contains a component's termination parameters.
  GetAppSpecService({
    this.alerts,
    this.autoscaling,
    this.bitbucket,
    this.buildCommand,
    this.cors,
    this.dockerfilePath,
    this.environmentSlug,
    this.envs,
    this.git,
    this.github,
    this.gitlab,
    this.healthCheck,
    required this.httpPort,
    this.image,
    this.instanceCount,
    this.instanceSizeSlug,
    required this.internalPorts,
    this.logDestinations,
    required this.name,
    required this.routes,
    required this.runCommand,
    this.sourceDir,
    this.termination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?alerts == null ? null : pulumi.Input.encodeList<GetAppSpecServiceAlert, Map<String, dynamic>>(alerts!, (value) => value.toMap()),
      'autoscaling': ?autoscaling == null ? null : autoscaling!.toMap(),
      'bitbucket': ?bitbucket == null ? null : bitbucket!.toMap(),
      'buildCommand': ?buildCommand,
      'cors': ?cors == null ? null : cors!.toMap(),
      'dockerfilePath': ?dockerfilePath,
      'environmentSlug': ?environmentSlug,
      'envs': ?envs == null ? null : pulumi.Input.encodeList<GetAppSpecServiceEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'git': ?git == null ? null : git!.toMap(),
      'github': ?github == null ? null : github!.toMap(),
      'gitlab': ?gitlab == null ? null : gitlab!.toMap(),
      'healthCheck': ?healthCheck == null ? null : healthCheck!.toMap(),
      'httpPort': httpPort,
      'image': ?image == null ? null : image!.toMap(),
      'instanceCount': ?instanceCount,
      'instanceSizeSlug': ?instanceSizeSlug,
      'internalPorts': internalPorts,
      'logDestinations': ?logDestinations == null ? null : pulumi.Input.encodeList<GetAppSpecServiceLogDestination, Map<String, dynamic>>(logDestinations!, (value) => value.toMap()),
      'name': name,
      'routes': pulumi.Input.encodeList<GetAppSpecServiceRoute, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'runCommand': runCommand,
      'sourceDir': ?sourceDir,
      'termination': ?termination == null ? null : termination!.toMap(),
    };
  }

  factory GetAppSpecService.fromMap(Map<String, dynamic> map) {
    return GetAppSpecService(
      alerts: map['alerts'] == null ? null : pulumi.Input.decodeList<GetAppSpecServiceAlert>(map['alerts'], (value) => GetAppSpecServiceAlert.fromMap((value as Map).cast<String, dynamic>())),
      autoscaling: map['autoscaling'] == null ? null : GetAppSpecServiceAutoscaling.fromMap((map['autoscaling'] as Map).cast<String, dynamic>()),
      bitbucket: map['bitbucket'] == null ? null : GetAppSpecServiceBitbucket.fromMap((map['bitbucket'] as Map).cast<String, dynamic>()),
      buildCommand: map['buildCommand'] == null ? null : map['buildCommand'] as String,
      cors: map['cors'] == null ? null : GetAppSpecServiceCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      dockerfilePath: map['dockerfilePath'] == null ? null : map['dockerfilePath'] as String,
      environmentSlug: map['environmentSlug'] == null ? null : map['environmentSlug'] as String,
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<GetAppSpecServiceEnv>(map['envs'], (value) => GetAppSpecServiceEnv.fromMap((value as Map).cast<String, dynamic>())),
      git: map['git'] == null ? null : GetAppSpecServiceGit.fromMap((map['git'] as Map).cast<String, dynamic>()),
      github: map['github'] == null ? null : GetAppSpecServiceGithub.fromMap((map['github'] as Map).cast<String, dynamic>()),
      gitlab: map['gitlab'] == null ? null : GetAppSpecServiceGitlab.fromMap((map['gitlab'] as Map).cast<String, dynamic>()),
      healthCheck: map['healthCheck'] == null ? null : GetAppSpecServiceHealthCheck.fromMap((map['healthCheck'] as Map).cast<String, dynamic>()),
      httpPort: map['httpPort'] as int,
      image: map['image'] == null ? null : GetAppSpecServiceImage.fromMap((map['image'] as Map).cast<String, dynamic>()),
      instanceCount: map['instanceCount'] == null ? null : map['instanceCount'] as int,
      instanceSizeSlug: map['instanceSizeSlug'] == null ? null : map['instanceSizeSlug'] as String,
      internalPorts: (map['internalPorts'] as List).cast<int>(),
      logDestinations: map['logDestinations'] == null ? null : pulumi.Input.decodeList<GetAppSpecServiceLogDestination>(map['logDestinations'], (value) => GetAppSpecServiceLogDestination.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      routes: pulumi.Input.decodeList<GetAppSpecServiceRoute>(map['routes'], (value) => GetAppSpecServiceRoute.fromMap((value as Map).cast<String, dynamic>())),
      runCommand: map['runCommand'] as String,
      sourceDir: map['sourceDir'] == null ? null : map['sourceDir'] as String,
      termination: map['termination'] == null ? null : GetAppSpecServiceTermination.fromMap((map['termination'] as Map).cast<String, dynamic>()),
    );
  }
}

