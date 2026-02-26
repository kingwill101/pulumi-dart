import 'package:pulumi/pulumi.dart';
import 'get_authorization_policy_iam_policy_args2.dart';
import 'get_authorization_policy_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetAuthorizationPolicyIamPolicyResult2> getAuthorizationPolicyIamPolicy2(
  GetAuthorizationPolicyIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAuthorizationPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAuthorizationPolicyIamPolicyResult2.fromMap(result);
}
