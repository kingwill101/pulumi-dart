import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_workloads_secret_args.dart';

/// User workloads Secret used by Airflow tasks that run with Kubernetes Executor or KubernetesPodOperator.
/// Intended for Composer 3 Environments.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Secret can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/environments/{{environment}}/userWorkloadsSecrets/{{name}}`
///
/// * `{{project}}/{{region}}/{{environment}}/{{name}}`
///
/// * `{{environment}}/{{name}}`
///
/// When using the `pulumi import` command, Environment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsSecret:UserWorkloadsSecret example projects/{{project}}/locations/{{region}}/environments/{{environment}}/userWorkloadsSecrets/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsSecret:UserWorkloadsSecret example {{project}}/{{region}}/{{environment}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsSecret:UserWorkloadsSecret example {{environment}}/{{name}}
/// ```
class UserWorkloadsSecret extends pulumi.CustomResource {
  /// A map of the secret data.
  late final pulumi.Output<Map<String, String>?> data;

  /// Environment where the Kubernetes Secret will be stored and used.
  late final pulumi.Output<String> environment;

  /// Name of the Kubernetes Secret.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The location or Compute Engine region for the environment.
  late final pulumi.Output<String> region;

  UserWorkloadsSecret(
    String name, {
    UserWorkloadsSecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:composer/userWorkloadsSecret:UserWorkloadsSecret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.data = registerOutput<Map<String, String>?>('data');
    this.environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
