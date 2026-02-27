import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_workloads_secret_args.dart';
import 'get_user_workloads_secret_result.dart';

/// Provides access to Kubernetes Secret configuration for a given project, region and Composer Environment.
///
/// To get more information about Composer User Workloads Secrets, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments.userWorkloadsSecrets)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/artifact-registry/docs/overview)
Future<GetUserWorkloadsSecretResult> getUserWorkloadsSecret(
  GetUserWorkloadsSecretArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getUserWorkloadsSecret:getUserWorkloadsSecret',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserWorkloadsSecretResult.fromMap(result);
}
