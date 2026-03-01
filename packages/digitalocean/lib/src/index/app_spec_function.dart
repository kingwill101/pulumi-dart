// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_function_alert.dart';
import 'app_spec_function_bitbucket.dart';
import 'app_spec_function_cors.dart';
import 'app_spec_function_env.dart';
import 'app_spec_function_git.dart';
import 'app_spec_function_github.dart';
import 'app_spec_function_gitlab.dart';
import 'app_spec_function_log_destination.dart';
import 'app_spec_function_route.dart';

class AppSpecFunction {
  /// Describes an alert policy for the component.
  final List<AppSpecFunctionAlert>? alerts;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  final AppSpecFunctionBitbucket? bitbucket;
  /// The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  final AppSpecFunctionCors? cors;
  /// Describes an environment variable made available to an app competent.
  final List<AppSpecFunctionEnv>? envs;
  /// A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  final AppSpecFunctionGit? git;
  /// A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final AppSpecFunctionGithub? github;
  /// A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  final AppSpecFunctionGitlab? gitlab;
  /// Describes a log forwarding destination.
  final List<AppSpecFunctionLogDestination>? logDestinations;
  /// The name of the component.
  final String name;
  /// An HTTP paths that should be routed to this component.
  final List<AppSpecFunctionRoute>? routes;
  /// An optional path to the working directory to use for the build.
  final String? sourceDir;

  /// Creates a new [AppSpecFunction].
  /// [alerts] Describes an alert policy for the component.
  /// [bitbucket] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/bitbucket/install). Only one of `git`, `github`, `bitbucket`, `gitlab`, or `image` may be set.
  /// [cors] The [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS) policies of the app.
  /// [envs] Describes an environment variable made available to an app competent.
  /// [git] A Git repo to use as the component's source. The repository must be able to be cloned without authentication. Only one of `git`, `github` or `gitlab` may be set.
  /// [github] A GitHub repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/github/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [gitlab] A Gitlab repo to use as the component's source. DigitalOcean App Platform must have [access to the repository](https://cloud.digitalocean.com/apps/gitlab/install). Only one of `git`, `github`, `gitlab`, or `image` may be set.
  /// [logDestinations] Describes a log forwarding destination.
  /// [name] The name of the component.
  /// [routes] An HTTP paths that should be routed to this component.
  /// [sourceDir] An optional path to the working directory to use for the build.
  AppSpecFunction({
    this.alerts,
    this.bitbucket,
    this.cors,
    this.envs,
    this.git,
    this.github,
    this.gitlab,
    this.logDestinations,
    required this.name,
    this.routes,
    this.sourceDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alerts': ?alerts == null ? null : pulumi.Input.encodeList<AppSpecFunctionAlert, Map<String, dynamic>>(alerts!, (value) => value.toMap()),
      'bitbucket': ?bitbucket == null ? null : bitbucket!.toMap(),
      'cors': ?cors == null ? null : cors!.toMap(),
      'envs': ?envs == null ? null : pulumi.Input.encodeList<AppSpecFunctionEnv, Map<String, dynamic>>(envs!, (value) => value.toMap()),
      'git': ?git == null ? null : git!.toMap(),
      'github': ?github == null ? null : github!.toMap(),
      'gitlab': ?gitlab == null ? null : gitlab!.toMap(),
      'logDestinations': ?logDestinations == null ? null : pulumi.Input.encodeList<AppSpecFunctionLogDestination, Map<String, dynamic>>(logDestinations!, (value) => value.toMap()),
      'name': name,
      'routes': ?routes == null ? null : pulumi.Input.encodeList<AppSpecFunctionRoute, Map<String, dynamic>>(routes!, (value) => value.toMap()),
      'sourceDir': ?sourceDir,
    };
  }

  factory AppSpecFunction.fromMap(Map<String, dynamic> map) {
    return AppSpecFunction(
      alerts: map['alerts'] == null ? null : pulumi.Input.decodeList<AppSpecFunctionAlert>(map['alerts'], (value) => AppSpecFunctionAlert.fromMap((value as Map).cast<String, dynamic>())),
      bitbucket: map['bitbucket'] == null ? null : AppSpecFunctionBitbucket.fromMap((map['bitbucket'] as Map).cast<String, dynamic>()),
      cors: map['cors'] == null ? null : AppSpecFunctionCors.fromMap((map['cors'] as Map).cast<String, dynamic>()),
      envs: map['envs'] == null ? null : pulumi.Input.decodeList<AppSpecFunctionEnv>(map['envs'], (value) => AppSpecFunctionEnv.fromMap((value as Map).cast<String, dynamic>())),
      git: map['git'] == null ? null : AppSpecFunctionGit.fromMap((map['git'] as Map).cast<String, dynamic>()),
      github: map['github'] == null ? null : AppSpecFunctionGithub.fromMap((map['github'] as Map).cast<String, dynamic>()),
      gitlab: map['gitlab'] == null ? null : AppSpecFunctionGitlab.fromMap((map['gitlab'] as Map).cast<String, dynamic>()),
      logDestinations: map['logDestinations'] == null ? null : pulumi.Input.decodeList<AppSpecFunctionLogDestination>(map['logDestinations'], (value) => AppSpecFunctionLogDestination.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<AppSpecFunctionRoute>(map['routes'], (value) => AppSpecFunctionRoute.fromMap((value as Map).cast<String, dynamic>())),
      sourceDir: map['sourceDir'] == null ? null : map['sourceDir'] as String,
    );
  }
}

