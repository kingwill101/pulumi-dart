import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_execution_notebooks_v1_args.dart';
import 'get_execution_notebooks_v1_result.dart';

/// Gets details of executions
Future<GetExecutionNotebooksV1Result> getExecutionNotebooksV1(
  GetExecutionNotebooksV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getExecution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExecutionNotebooksV1Result.fromMap(result);
}
