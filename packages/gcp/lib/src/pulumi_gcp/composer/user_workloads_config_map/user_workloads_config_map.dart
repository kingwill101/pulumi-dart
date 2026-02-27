import 'package:pulumi/pulumi.dart';
import 'user_workloads_config_map_args.dart';

/// User workloads ConfigMap used by Airflow tasks that run with Kubernetes Executor or KubernetesPodOperator.
/// Intended for Composer 3 Environments.
///
///
/// To get more information about UserWorkloadsConfigMap, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments.userWorkloadsConfigMaps)
///
/// ## Example Usage
///
/// ### Composer User Workloads Config Map Basic
///
///
///
///
/// ## Import
///
/// UserWorkloadsConfigMap can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/environments/{{environment}}/userWorkloadsConfigMaps/{{name}}`
///
/// * `{{project}}/{{region}}/{{environment}}/{{name}}`
///
/// * `{{region}}/{{environment}}/{{name}}`
///
/// * `{{environment}}/{{name}}`
///
/// When using the `pulumi import` command, UserWorkloadsConfigMap can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap default projects/{{project}}/locations/{{region}}/environments/{{environment}}/userWorkloadsConfigMaps/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap default {{project}}/{{region}}/{{environment}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap default {{region}}/{{environment}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap default {{environment}}/{{name}}
/// ```
class UserWorkloadsConfigMap extends CustomResource {
  /// The "data" field of Kubernetes ConfigMap, organized in key-value pairs.
  /// For details see: https://kubernetes.io/docs/concepts/configuration/configmap/
  late final Output<Map<String, String>?> data;

  /// Environment where the Kubernetes ConfigMap will be stored and used.
  late final Output<String> environment;

  /// Name of the Kubernetes ConfigMap.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The location or Compute Engine region for the environment.
  late final Output<String> region;

  UserWorkloadsConfigMap(
    String name, {
    UserWorkloadsConfigMapArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:composer/userWorkloadsConfigMap:UserWorkloadsConfigMap',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.data = registerOutput<Map<String, String>?>('data');
    this.environment = registerOutput<String>('environment');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
