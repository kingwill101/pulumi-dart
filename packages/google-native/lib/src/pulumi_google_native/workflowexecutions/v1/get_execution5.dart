import 'package:pulumi/pulumi.dart' hide Config;
import 'get_execution_args5.dart';
import 'get_execution_result5.dart';

/// Returns an execution of the given name.
Future<GetExecutionResult5> getExecution5(
  GetExecutionArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workflowexecutions/v1:getExecution',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult5.fromMap(result);
}
