import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_iam_policy_notebooks_args.dart';
import 'get_instance_iam_policy_notebooks_result.dart';

/// Retrieves the current IAM policy data for instance
Future<GetInstanceIamPolicyNotebooksResult> getInstanceIamPolicyNotebooks(
  GetInstanceIamPolicyNotebooksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:notebooks/getInstanceIamPolicy:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyNotebooksResult.fromMap(result);
}
