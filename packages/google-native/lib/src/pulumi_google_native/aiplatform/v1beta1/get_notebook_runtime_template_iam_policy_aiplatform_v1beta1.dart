import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notebook_runtime_template_iam_policy_aiplatform_v1beta1_args.dart';
import 'get_notebook_runtime_template_iam_policy_aiplatform_v1beta1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Result>
    getNotebookRuntimeTemplateIamPolicyAiplatformV1beta1(
  GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNotebookRuntimeTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateIamPolicyAiplatformV1beta1Result.fromMap(
      result);
}
