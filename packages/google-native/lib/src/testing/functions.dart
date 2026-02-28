import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_session_args.dart';
import 'get_device_session_result.dart';
import 'get_test_matrix_args.dart';
import 'get_test_matrix_result.dart';

/// GET /v1/projects/{project_id}/deviceSessions/{device_session_id} Return a DeviceSession, which documents the allocation status and whether the device is allocated. Clients making requests from this API must poll GetDeviceSession.
/// [args] Arguments passed to this invoke. {@macro pulumi_testing_v1_get_device_session_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceSessionResult> getDeviceSession(
  GetDeviceSessionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:testing/v1:getDeviceSession',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceSessionResult.fromMap(result);
}

/// Checks the status of a test matrix and the executions once they are created. The test matrix will contain the list of test executions to run if and only if the resultStorage.toolResultsExecution fields have been populated. Note: Flaky test executions may be added to the matrix at a later stage. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist
/// [args] Arguments passed to this invoke. {@macro pulumi_testing_v1_get_test_matrix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTestMatrixResult> getTestMatrix(
  GetTestMatrixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:testing/v1:getTestMatrix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTestMatrixResult.fromMap(result);
}
