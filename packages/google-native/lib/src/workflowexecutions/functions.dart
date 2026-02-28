import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_execution_args.dart';
import 'get_execution_result.dart';
import 'get_execution_workflowexecutions_v1beta_args.dart';
import 'get_execution_workflowexecutions_v1beta_result.dart';

/// Returns an execution of the given name.
/// [args] Arguments passed to this invoke. {@macro pulumi_workflowexecutions_v1_get_execution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExecutionResult> getExecution(
  GetExecutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workflowexecutions/v1:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult.fromMap(result);
}

/// Returns an execution of the given name.
/// [args] Arguments passed to this invoke. {@macro pulumi_workflowexecutions_v1beta_get_execution_workflowexecutions_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExecutionWorkflowexecutionsV1betaResult> getExecutionWorkflowexecutionsV1beta(
  GetExecutionWorkflowexecutionsV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workflowexecutions/v1beta:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionWorkflowexecutionsV1betaResult.fromMap(result);
}
