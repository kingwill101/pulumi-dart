import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_deploymentmanager_v2beta_args.dart';
import 'get_deployment_deploymentmanager_v2beta_result.dart';

/// Gets information about a specific deployment.
Future<GetDeploymentDeploymentmanagerV2betaResult>
    getDeploymentDeploymentmanagerV2beta(
  GetDeploymentDeploymentmanagerV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentDeploymentmanagerV2betaResult.fromMap(result);
}
