import 'package:pulumi/pulumi.dart' hide Config;
import 'get_instance_template_iam_policy_args3.dart';
import 'get_instance_template_iam_policy_result3.dart';

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
Future<GetInstanceTemplateIamPolicyResult3> getInstanceTemplateIamPolicy3(
  GetInstanceTemplateIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateIamPolicyResult3.fromMap(result);
}
