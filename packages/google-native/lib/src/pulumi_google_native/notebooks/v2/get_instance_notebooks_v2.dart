import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_notebooks_v2_args.dart';
import 'get_instance_notebooks_v2_result.dart';

/// Gets details of a single Instance.
Future<GetInstanceNotebooksV2Result> getInstanceNotebooksV2(
  GetInstanceNotebooksV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v2:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceNotebooksV2Result.fromMap(result);
}
