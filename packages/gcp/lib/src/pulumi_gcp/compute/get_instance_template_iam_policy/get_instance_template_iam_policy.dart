import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_template_iam_policy_args.dart';
import 'get_instance_template_iam_policy_result.dart';

/// Retrieves the current IAM policy data for instancetemplate
Future<GetInstanceTemplateIamPolicyResult> getInstanceTemplateIamPolicy(
  GetInstanceTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceTemplateIamPolicy:getInstanceTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateIamPolicyResult.fromMap(result);
}
