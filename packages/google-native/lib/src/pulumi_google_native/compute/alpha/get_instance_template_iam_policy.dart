import 'package:pulumi/pulumi.dart';
import 'get_instance_template_iam_policy_args.dart';
import 'get_instance_template_iam_policy_result.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInstanceTemplateIamPolicyResult> getInstanceTemplateIamPolicy(
  GetInstanceTemplateIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateIamPolicyResult.fromMap(result);
}
