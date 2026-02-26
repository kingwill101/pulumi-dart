import 'package:pulumi/pulumi.dart';
import 'get_node_group_iam_policy_args.dart';
import 'get_node_group_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetNodeGroupIamPolicyResult> getNodeGroupIamPolicy(
  GetNodeGroupIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNodeGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupIamPolicyResult.fromMap(result);
}
