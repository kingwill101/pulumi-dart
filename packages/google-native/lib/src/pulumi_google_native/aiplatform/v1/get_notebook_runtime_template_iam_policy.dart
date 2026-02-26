import 'package:pulumi/pulumi.dart';
import 'get_notebook_runtime_template_iam_policy_args.dart';
import 'get_notebook_runtime_template_iam_policy_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetNotebookRuntimeTemplateIamPolicyResult>
    getNotebookRuntimeTemplateIamPolicy(
  GetNotebookRuntimeTemplateIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNotebookRuntimeTemplateIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateIamPolicyResult.fromMap(result);
}
