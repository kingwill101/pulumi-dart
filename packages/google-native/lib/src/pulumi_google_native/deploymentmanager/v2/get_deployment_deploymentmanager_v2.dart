import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_deploymentmanager_v2_args.dart';
import 'get_deployment_deploymentmanager_v2_result.dart';

/// Gets information about a specific deployment.
Future<GetDeploymentDeploymentmanagerV2Result> getDeploymentDeploymentmanagerV2(
  GetDeploymentDeploymentmanagerV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentDeploymentmanagerV2Result.fromMap(result);
}
