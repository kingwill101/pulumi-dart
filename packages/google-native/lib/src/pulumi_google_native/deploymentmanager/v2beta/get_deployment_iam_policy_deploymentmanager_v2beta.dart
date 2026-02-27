import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_iam_policy_deploymentmanager_v2beta_args.dart';
import 'get_deployment_iam_policy_deploymentmanager_v2beta_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetDeploymentIamPolicyDeploymentmanagerV2betaResult>
    getDeploymentIamPolicyDeploymentmanagerV2beta(
  GetDeploymentIamPolicyDeploymentmanagerV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2beta:getDeploymentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentIamPolicyDeploymentmanagerV2betaResult.fromMap(result);
}
