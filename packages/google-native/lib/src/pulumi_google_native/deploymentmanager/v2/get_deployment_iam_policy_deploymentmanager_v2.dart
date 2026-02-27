import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_iam_policy_deploymentmanager_v2_args.dart';
import 'get_deployment_iam_policy_deploymentmanager_v2_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetDeploymentIamPolicyDeploymentmanagerV2Result>
    getDeploymentIamPolicyDeploymentmanagerV2(
  GetDeploymentIamPolicyDeploymentmanagerV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2:getDeploymentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeploymentIamPolicyDeploymentmanagerV2Result.fromMap(result);
}
