import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workflow_config_args.dart';
import 'get_workflow_config_result.dart';

/// Fetches a single WorkflowConfig.
Future<GetWorkflowConfigResult> getWorkflowConfig(
  GetWorkflowConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getWorkflowConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkflowConfigResult.fromMap(result);
}
