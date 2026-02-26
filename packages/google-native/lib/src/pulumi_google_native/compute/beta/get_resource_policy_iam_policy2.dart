import 'package:pulumi/pulumi.dart';
import 'get_resource_policy_iam_policy_args2.dart';
import 'get_resource_policy_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetResourcePolicyIamPolicyResult2> getResourcePolicyIamPolicy2(
  GetResourcePolicyIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getResourcePolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyIamPolicyResult2.fromMap(result);
}
