import 'package:pulumi/pulumi.dart';
import 'get_test_matrix_args.dart';
import 'get_test_matrix_result.dart';

/// Checks the status of a test matrix and the executions once they are created. The test matrix will contain the list of test executions to run if and only if the resultStorage.toolResultsExecution fields have been populated. Note: Flaky test executions may be added to the matrix at a later stage. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist
Future<GetTestMatrixResult> getTestMatrix(
  GetTestMatrixArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:testing/v1:getTestMatrix',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTestMatrixResult.fromMap(result);
}
