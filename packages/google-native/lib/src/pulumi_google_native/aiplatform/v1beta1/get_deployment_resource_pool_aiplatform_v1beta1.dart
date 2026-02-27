import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_resource_pool_aiplatform_v1beta1_args.dart';
import 'get_deployment_resource_pool_aiplatform_v1beta1_result.dart';

/// Get a DeploymentResourcePool.
Future<GetDeploymentResourcePoolAiplatformV1beta1Result>
    getDeploymentResourcePoolAiplatformV1beta1(
  GetDeploymentResourcePoolAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getDeploymentResourcePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentResourcePoolAiplatformV1beta1Result.fromMap(result);
}
