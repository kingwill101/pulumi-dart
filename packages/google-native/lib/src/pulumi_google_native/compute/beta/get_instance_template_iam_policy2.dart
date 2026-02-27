import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_template_iam_policy_args2.dart';
import 'get_instance_template_iam_policy_result2.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInstanceTemplateIamPolicyResult2> getInstanceTemplateIamPolicy2(
  GetInstanceTemplateIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateIamPolicyResult2.fromMap(result);
}
