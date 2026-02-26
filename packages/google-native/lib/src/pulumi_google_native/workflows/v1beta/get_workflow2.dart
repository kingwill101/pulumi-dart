import 'package:pulumi/pulumi.dart';
import 'get_workflow_args2.dart';
import 'get_workflow_result2.dart';

/// Gets details of a single Workflow.
Future<GetWorkflowResult2> getWorkflow2(
  GetWorkflowArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workflows/v1beta:getWorkflow',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWorkflowResult2.fromMap(result);
}
