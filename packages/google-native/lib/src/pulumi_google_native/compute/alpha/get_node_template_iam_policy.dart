import 'package:pulumi/pulumi.dart' hide Config;
import 'get_node_template_iam_policy_args.dart';
import 'get_node_template_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetNodeTemplateIamPolicyResult> getNodeTemplateIamPolicy(
  GetNodeTemplateIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNodeTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateIamPolicyResult.fromMap(result);
}
