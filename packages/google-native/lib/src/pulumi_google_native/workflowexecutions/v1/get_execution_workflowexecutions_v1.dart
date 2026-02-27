import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_execution_workflowexecutions_v1_args.dart';
import 'get_execution_workflowexecutions_v1_result.dart';

/// Returns an execution of the given name.
Future<GetExecutionWorkflowexecutionsV1Result> getExecutionWorkflowexecutionsV1(
  GetExecutionWorkflowexecutionsV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workflowexecutions/v1:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionWorkflowexecutionsV1Result.fromMap(result);
}
