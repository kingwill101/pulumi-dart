import 'package:pulumi/pulumi.dart';
import 'get_runtime_template_iam_policy_args.dart';
import 'get_runtime_template_iam_policy_result.dart';

/// Retrieves the current IAM policy data for runtimetemplate
Future<GetRuntimeTemplateIamPolicyResult> getRuntimeTemplateIamPolicy(
  GetRuntimeTemplateIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:colab/getRuntimeTemplateIamPolicy:getRuntimeTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRuntimeTemplateIamPolicyResult.fromMap(result);
}
