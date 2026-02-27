import 'package:pulumi/pulumi.dart';
import 'get_tag_template_iam_policy_args.dart';
import 'get_tag_template_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tagtemplate
Future<GetTagTemplateIamPolicyResult> getTagTemplateIamPolicy(
  GetTagTemplateIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getTagTemplateIamPolicy:getTagTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateIamPolicyResult.fromMap(result);
}
