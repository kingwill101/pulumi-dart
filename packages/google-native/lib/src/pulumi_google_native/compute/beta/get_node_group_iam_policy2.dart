import 'package:pulumi/pulumi.dart';
import 'get_node_group_iam_policy_args2.dart';
import 'get_node_group_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetNodeGroupIamPolicyResult2> getNodeGroupIamPolicy2(
  GetNodeGroupIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNodeGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupIamPolicyResult2.fromMap(result);
}
