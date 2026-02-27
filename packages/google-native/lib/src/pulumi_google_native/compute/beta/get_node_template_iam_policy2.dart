import 'package:pulumi/pulumi.dart' hide Config;
import 'get_node_template_iam_policy_args2.dart';
import 'get_node_template_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetNodeTemplateIamPolicyResult2> getNodeTemplateIamPolicy2(
  GetNodeTemplateIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNodeTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateIamPolicyResult2.fromMap(result);
}
