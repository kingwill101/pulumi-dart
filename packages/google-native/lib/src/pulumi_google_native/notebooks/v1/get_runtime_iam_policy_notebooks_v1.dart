import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_runtime_iam_policy_notebooks_v1_args.dart';
import 'get_runtime_iam_policy_notebooks_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetRuntimeIamPolicyNotebooksV1Result> getRuntimeIamPolicyNotebooksV1(
  GetRuntimeIamPolicyNotebooksV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getRuntimeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeIamPolicyNotebooksV1Result.fromMap(result);
}
