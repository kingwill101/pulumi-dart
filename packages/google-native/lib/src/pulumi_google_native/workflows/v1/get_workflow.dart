import 'package:pulumi/pulumi.dart';
import 'get_workflow_args.dart';
import 'get_workflow_result.dart';

/// Gets details of a single workflow.
Future<GetWorkflowResult> getWorkflow(
  GetWorkflowArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workflows/v1:getWorkflow',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkflowResult.fromMap(result);
}
