import 'package:pulumi/pulumi.dart';
import 'get_endpoint_policy_iam_policy_args.dart';
import 'get_endpoint_policy_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetEndpointPolicyIamPolicyResult> getEndpointPolicyIamPolicy(
  GetEndpointPolicyIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networkservices/v1:getEndpointPolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEndpointPolicyIamPolicyResult.fromMap(result);
}
