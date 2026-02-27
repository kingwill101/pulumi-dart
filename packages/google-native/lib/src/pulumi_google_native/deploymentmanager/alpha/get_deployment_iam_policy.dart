import 'package:pulumi/pulumi.dart' hide Config;
import 'get_deployment_iam_policy_args.dart';
import 'get_deployment_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetDeploymentIamPolicyResult> getDeploymentIamPolicy(
  GetDeploymentIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/alpha:getDeploymentIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeploymentIamPolicyResult.fromMap(result);
}
