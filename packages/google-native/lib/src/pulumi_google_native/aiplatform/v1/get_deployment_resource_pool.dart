import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_resource_pool_args.dart';
import 'get_deployment_resource_pool_result.dart';

/// Get a DeploymentResourcePool.
Future<GetDeploymentResourcePoolResult> getDeploymentResourcePool(
  GetDeploymentResourcePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDeploymentResourcePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResourcePoolResult.fromMap(result);
}
