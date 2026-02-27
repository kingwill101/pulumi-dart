import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflow_template_args.dart';
import 'get_workflow_template_result.dart';

/// Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.
Future<GetWorkflowTemplateResult> getWorkflowTemplate(
  GetWorkflowTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1:getWorkflowTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateResult.fromMap(result);
}
