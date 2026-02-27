import 'package:pulumi/pulumi.dart' hide Config;
import 'get_node_group_iam_policy_args3.dart';
import 'get_node_group_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetNodeGroupIamPolicyResult3> getNodeGroupIamPolicy3(
  GetNodeGroupIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNodeGroupIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupIamPolicyResult3.fromMap(result);
}
