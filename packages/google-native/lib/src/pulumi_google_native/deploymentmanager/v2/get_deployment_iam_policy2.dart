import 'package:pulumi/pulumi.dart';
import 'get_deployment_iam_policy_args2.dart';
import 'get_deployment_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetDeploymentIamPolicyResult2> getDeploymentIamPolicy2(
  GetDeploymentIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:deploymentmanager/v2:getDeploymentIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeploymentIamPolicyResult2.fromMap(result);
}
