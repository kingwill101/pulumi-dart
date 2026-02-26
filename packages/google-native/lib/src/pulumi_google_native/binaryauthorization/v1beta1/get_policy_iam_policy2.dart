import 'package:pulumi/pulumi.dart';
import 'get_policy_iam_policy_args2.dart';
import 'get_policy_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetPolicyIamPolicyResult2> getPolicyIamPolicy2(
  GetPolicyIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1beta1:getPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPolicyIamPolicyResult2.fromMap(result);
}
