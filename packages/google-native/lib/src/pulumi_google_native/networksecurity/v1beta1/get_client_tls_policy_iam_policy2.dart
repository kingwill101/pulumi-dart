import 'package:pulumi/pulumi.dart' hide Config;
import 'get_client_tls_policy_iam_policy_args2.dart';
import 'get_client_tls_policy_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetClientTlsPolicyIamPolicyResult2> getClientTlsPolicyIamPolicy2(
  GetClientTlsPolicyIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getClientTlsPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientTlsPolicyIamPolicyResult2.fromMap(result);
}
