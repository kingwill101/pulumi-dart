// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_function_alert.dart';
import 'get_app_spec_function_bitbucket.dart';
import 'get_app_spec_function_cors.dart';
import 'get_app_spec_function_env.dart';
import 'get_app_spec_function_git.dart';
import 'get_app_spec_function_github.dart';
import 'get_app_spec_function_gitlab.dart';
import 'get_app_spec_function_log_destination.dart';
import 'get_app_spec_function_route.dart';

class GetAppSpecFunction {
  /// Describes an alert policy for the component.
  final List<GetAppSpecFunctionAlert>? alerts;
  /// A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  final GetAppSpecFunctionBitbucket? bitbucket;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final GetAppSpecFunctionCors? cors;
  /// Describes an environment variable made available to an app competent.
  final List<GetAppSpecFunctionEnv>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  final GetAppSpecFunctionGit? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecFunctionGithub? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final GetAppSpecFunctionGitlab? gitlab;
  /// Describes a log forwarding destination.
  final List<GetAppSpecFunctionLogDestination>? logDestinations;
  /// The name of the component.
  final String name;
  final List<GetAppSpecFunctionRoute> routes;
  /// An optional path to the working directory to use for the build.
  final String? sourceDir;

  /// Creates a new [GetAppSpecFunction].
  /// [alerts] Describes an alert policy for the component.
  /// [bitbucket] A Bitbucket repo to use as component's source. Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set. To read your repo, App Platform must be authorized to access your Bitbucket account. Go to this URL to link App Platform to your Bitbucket account: `https://cloud.digitalocean.com/apps/bitbucket/install`.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication.  Only one of `git`, `github` or `gitlab`  may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [routes] Required.
  /// [sourceDir] An optional path to the working directory to use for the build.
  GetAppSpecFunction({
    this.alerts,
    this.bitbucket,
    this.cors,
    this.envs,
    this.git,
    this.github,
    this.gitlab,
    this.logDestinations,
    required this.name,
    required this.routes,
    this.sourceDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?alerts == null ? null : pulumi.Input.encodeList<GetAppSpecFunctionAlert, Map<String, dynamic>>(alerts!, (value) => value.toMap()),
      'bitbucket': ?bitbucket == null ? null : bitbucket!.toMap(),
      'cors': ?cors == null ? null : cors!.toMap(),
      'envs': ?envs == null ? null : pulumi.Input.encodeList<GetAppSpecFunctionEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'git': ?git == null ? null : git!.toMap(),
      'github': ?github == null ? null : github!.toMap(),
      'gitlab': ?gitlab == null ? null : gitlab!.toMap(),
      'logDestinations': ?logDestinations == null ? null : pulumi.Input.encodeList<GetAppSpecFunctionLogDestination, Map<String, dynamic>>(logDestinations!, (value) => value.toMap()),
      'name': name,
      'routes': pulumi.Input.encodeList<GetAppSpecFunctionRoute, Map<String, dynamic>>(routes, (value) => value.toMap()),
      'sourceDir': ?sourceDir,
    };
  }

  factory GetAppSpecFunction.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunction(
      alerts: map['alerts'] == null ? null : pulumi.Input.decodeList<GetAppSpecFunctionAlert>(map['alerts'], (value) => GetAppSpecFunctionAlert.fromMap((value as Map).cast<String, dynamic>())),
      bitbucket: map['bitbucket'] == null ? null : GetAppSpecFunctionBitbucket.fromMap((map['bitbucket'] as Map).cast<String, dynamic>()),
      cors: map['cors'] == null ? null : GetAppSpecFunctionCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<GetAppSpecFunctionEnv>(map['envs'], (value) => GetAppSpecFunctionEnv.fromMap((value as Map).cast<String, dynamic>())),
      git: map['git'] == null ? null : GetAppSpecFunctionGit.fromMap((map['git'] as Map).cast<String, dynamic>()),
      github: map['github'] == null ? null : GetAppSpecFunctionGithub.fromMap((map['github'] as Map).cast<String, dynamic>()),
      gitlab: map['gitlab'] == null ? null : GetAppSpecFunctionGitlab.fromMap((map['gitlab'] as Map).cast<String, dynamic>()),
      logDestinations: map['logDestinations'] == null ? null : pulumi.Input.decodeList<GetAppSpecFunctionLogDestination>(map['logDestinations'], (value) => GetAppSpecFunctionLogDestination.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      routes: pulumi.Input.decodeList<GetAppSpecFunctionRoute>(map['routes'], (value) => GetAppSpecFunctionRoute.fromMap((value as Map).cast<String, dynamic>())),
      sourceDir: map['sourceDir'] == null ? null : map['sourceDir'] as String,
    );
  }
}

