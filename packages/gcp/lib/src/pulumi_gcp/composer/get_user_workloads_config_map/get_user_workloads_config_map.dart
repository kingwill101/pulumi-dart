import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_workloads_config_map_args.dart';
import 'get_user_workloads_config_map_result.dart';

/// Provides access to Kubernetes ConfigMap configuration for a given project, region and Composer Environment.
///
/// To get more information about Composer User Workloads Config Map, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments.userWorkloadsConfigMaps)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/composer/docs/concepts/overview)
Future<GetUserWorkloadsConfigMapResult> getUserWorkloadsConfigMap(
  GetUserWorkloadsConfigMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getUserWorkloadsConfigMap:getUserWorkloadsConfigMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserWorkloadsConfigMapResult.fromMap(result);
}
