import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_notebooks_v1_args.dart';
import 'get_instance_iam_policy_notebooks_v1_result.dart';

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
Future<GetInstanceIamPolicyNotebooksV1Result> getInstanceIamPolicyNotebooksV1(
  GetInstanceIamPolicyNotebooksV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyNotebooksV1Result.fromMap(result);
}
