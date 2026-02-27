import 'package:pulumi/pulumi.dart' hide Config;
import 'get_notebook_runtime_template_args2.dart';
import 'get_notebook_runtime_template_result2.dart';

/// Gets a NotebookRuntimeTemplate.
Future<GetNotebookRuntimeTemplateResult2> getNotebookRuntimeTemplate2(
  GetNotebookRuntimeTemplateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getNotebookRuntimeTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNotebookRuntimeTemplateResult2.fromMap(result);
}
