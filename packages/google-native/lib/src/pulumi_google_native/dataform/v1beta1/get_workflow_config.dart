import 'package:pulumi/pulumi.dart' hide Config;
import 'get_workflow_config_args.dart';
import 'get_workflow_config_result.dart';

/// Fetches a single WorkflowConfig.
Future<GetWorkflowConfigResult> getWorkflowConfig(
  GetWorkflowConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getWorkflowConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkflowConfigResult.fromMap(result);
}
