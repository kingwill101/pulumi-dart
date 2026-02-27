import 'package:pulumi/pulumi.dart' hide Config;
import 'get_deployment_resource_pool_args2.dart';
import 'get_deployment_resource_pool_result2.dart';

/// Get a DeploymentResourcePool.
Future<GetDeploymentResourcePoolResult2> getDeploymentResourcePool2(
  GetDeploymentResourcePoolArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDeploymentResourcePool',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResourcePoolResult2.fromMap(result);
}
