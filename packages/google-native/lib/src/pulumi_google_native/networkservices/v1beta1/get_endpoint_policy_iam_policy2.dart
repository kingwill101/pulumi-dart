import 'package:pulumi/pulumi.dart';
import 'get_endpoint_policy_iam_policy_args2.dart';
import 'get_endpoint_policy_iam_policy_result2.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEndpointPolicyIamPolicyResult2> getEndpointPolicyIamPolicy2(
  GetEndpointPolicyIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1beta1:getEndpointPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointPolicyIamPolicyResult2.fromMap(result);
}
