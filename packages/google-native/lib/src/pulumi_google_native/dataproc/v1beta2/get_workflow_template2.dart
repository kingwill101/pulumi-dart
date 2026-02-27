import 'package:pulumi/pulumi.dart' hide Config;
import 'get_workflow_template_args2.dart';
import 'get_workflow_template_result2.dart';

/// Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.
Future<GetWorkflowTemplateResult2> getWorkflowTemplate2(
  GetWorkflowTemplateArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getWorkflowTemplate',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateResult2.fromMap(result);
}
