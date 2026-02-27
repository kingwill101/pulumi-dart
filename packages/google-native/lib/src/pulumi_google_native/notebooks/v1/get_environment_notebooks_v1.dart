import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_environment_notebooks_v1_args.dart';
import 'get_environment_notebooks_v1_result.dart';

/// Gets details of a single Environment.
Future<GetEnvironmentNotebooksV1Result> getEnvironmentNotebooksV1(
  GetEnvironmentNotebooksV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentNotebooksV1Result.fromMap(result);
}
