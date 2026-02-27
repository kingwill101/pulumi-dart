import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notebook_runtime_template_args.dart';
import 'get_notebook_runtime_template_result.dart';

/// Gets a NotebookRuntimeTemplate.
Future<GetNotebookRuntimeTemplateResult> getNotebookRuntimeTemplate(
  GetNotebookRuntimeTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNotebookRuntimeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateResult.fromMap(result);
}
