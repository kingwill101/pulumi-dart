import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflow_template_dataproc_v1beta2_args.dart';
import 'get_workflow_template_dataproc_v1beta2_result.dart';

/// Retrieves the latest workflow template.Can retrieve previously instantiated template by specifying optional version parameter.
Future<GetWorkflowTemplateDataprocV1beta2Result>
    getWorkflowTemplateDataprocV1beta2(
  GetWorkflowTemplateDataprocV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataproc/v1beta2:getWorkflowTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowTemplateDataprocV1beta2Result.fromMap(result);
}
