import 'package:pulumi/pulumi.dart';
import 'get_resource_policy_iam_policy_args3.dart';
import 'get_resource_policy_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetResourcePolicyIamPolicyResult3> getResourcePolicyIamPolicy3(
  GetResourcePolicyIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getResourcePolicyIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyIamPolicyResult3.fromMap(result);
}
