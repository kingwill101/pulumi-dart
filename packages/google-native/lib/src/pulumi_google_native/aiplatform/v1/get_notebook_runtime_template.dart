import 'package:pulumi/pulumi.dart' hide Config;
import 'get_notebook_runtime_template_args.dart';
import 'get_notebook_runtime_template_result.dart';

/// Gets a NotebookRuntimeTemplate.
Future<GetNotebookRuntimeTemplateResult> getNotebookRuntimeTemplate(
  GetNotebookRuntimeTemplateArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getNotebookRuntimeTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateResult.fromMap(result);
}
