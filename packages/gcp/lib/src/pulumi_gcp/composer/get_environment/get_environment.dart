import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_args.dart';
import 'get_environment_result.dart';

/// Provides access to Cloud Composer environment configuration in a region for a given project.
///
/// To get more information about Composer Environment, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.environments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/composer/docs/concepts/overview)
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getEnvironment:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}
