import 'package:pulumi/pulumi.dart' hide Config;
import 'get_execution_args.dart';
import 'get_execution_result.dart';

/// Retrieves a specific Execution.
Future<GetExecutionResult> getExecution(
  GetExecutionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getExecution',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult.fromMap(result);
}
