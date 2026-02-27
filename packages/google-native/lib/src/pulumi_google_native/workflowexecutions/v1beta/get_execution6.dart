import 'package:pulumi/pulumi.dart' hide Config;
import 'get_execution_args6.dart';
import 'get_execution_result6.dart';

/// Returns an execution of the given name.
Future<GetExecutionResult6> getExecution6(
  GetExecutionArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:workflowexecutions/v1beta:getExecution',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult6.fromMap(result);
}
