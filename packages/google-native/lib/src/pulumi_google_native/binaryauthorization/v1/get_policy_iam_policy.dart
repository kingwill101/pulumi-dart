import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_iam_policy_args.dart';
import 'get_policy_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetPolicyIamPolicyResult> getPolicyIamPolicy(
  GetPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:binaryauthorization/v1:getPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyIamPolicyResult.fromMap(result);
}
