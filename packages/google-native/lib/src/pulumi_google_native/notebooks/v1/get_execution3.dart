import 'package:pulumi/pulumi.dart';
import 'get_execution_args3.dart';
import 'get_execution_result3.dart';

/// Gets details of executions
Future<GetExecutionResult3> getExecution3(
  GetExecutionArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getExecution',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult3.fromMap(result);
}
