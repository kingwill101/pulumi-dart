import 'package:pulumi/pulumi.dart' hide Config;
import 'get_execution_args2.dart';
import 'get_execution_result2.dart';

/// Retrieves a specific Execution.
Future<GetExecutionResult2> getExecution2(
  GetExecutionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getExecution',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult2.fromMap(result);
}
