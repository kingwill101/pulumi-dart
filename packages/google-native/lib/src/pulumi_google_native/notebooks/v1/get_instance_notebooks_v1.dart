import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_notebooks_v1_args.dart';
import 'get_instance_notebooks_v1_result.dart';

/// Gets details of a single Instance.
Future<GetInstanceNotebooksV1Result> getInstanceNotebooksV1(
  GetInstanceNotebooksV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceNotebooksV1Result.fromMap(result);
}
