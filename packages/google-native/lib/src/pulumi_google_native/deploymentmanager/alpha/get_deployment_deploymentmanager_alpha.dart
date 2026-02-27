import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_deploymentmanager_alpha_args.dart';
import 'get_deployment_deploymentmanager_alpha_result.dart';

/// Gets information about a specific deployment.
Future<GetDeploymentDeploymentmanagerAlphaResult>
    getDeploymentDeploymentmanagerAlpha(
  GetDeploymentDeploymentmanagerAlphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/alpha:getDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentDeploymentmanagerAlphaResult.fromMap(result);
}
