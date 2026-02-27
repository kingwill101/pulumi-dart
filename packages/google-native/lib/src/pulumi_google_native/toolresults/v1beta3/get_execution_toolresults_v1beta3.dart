import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_execution_toolresults_v1beta3_args.dart';
import 'get_execution_toolresults_v1beta3_result.dart';

/// Gets an Execution. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Execution does not exist
Future<GetExecutionToolresultsV1beta3Result> getExecutionToolresultsV1beta3(
  GetExecutionToolresultsV1beta3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:toolresults/v1beta3:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionToolresultsV1beta3Result.fromMap(result);
}
