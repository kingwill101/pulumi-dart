import 'package:pulumi/pulumi.dart' hide Config;
import 'get_execution_args4.dart';
import 'get_execution_result4.dart';

/// Gets an Execution. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Execution does not exist
Future<GetExecutionResult4> getExecution4(
  GetExecutionArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getExecution',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetExecutionResult4.fromMap(result);
}
