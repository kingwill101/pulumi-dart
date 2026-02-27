import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notebook_runtime_template_aiplatform_v1beta1_args.dart';
import 'get_notebook_runtime_template_aiplatform_v1beta1_result.dart';

/// Gets a NotebookRuntimeTemplate.
Future<GetNotebookRuntimeTemplateAiplatformV1beta1Result>
    getNotebookRuntimeTemplateAiplatformV1beta1(
  GetNotebookRuntimeTemplateAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNotebookRuntimeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateAiplatformV1beta1Result.fromMap(result);
}
