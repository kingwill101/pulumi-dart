import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tag_template_iam_policy_args.dart';
import 'get_tag_template_iam_policy_result.dart';

/// Retrieves the current IAM policy data for tagtemplate
Future<GetTagTemplateIamPolicyResult> getTagTemplateIamPolicy(
  GetTagTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:datacatalog/getTagTemplateIamPolicy:getTagTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagTemplateIamPolicyResult.fromMap(result);
}
