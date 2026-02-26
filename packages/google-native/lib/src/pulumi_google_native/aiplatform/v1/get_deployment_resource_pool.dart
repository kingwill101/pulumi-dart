import 'package:pulumi/pulumi.dart';
import 'get_deployment_resource_pool_args.dart';
import 'get_deployment_resource_pool_result.dart';

/// Get a DeploymentResourcePool.
Future<GetDeploymentResourcePoolResult> getDeploymentResourcePool(
  GetDeploymentResourcePoolArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getDeploymentResourcePool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResourcePoolResult.fromMap(result);
}
