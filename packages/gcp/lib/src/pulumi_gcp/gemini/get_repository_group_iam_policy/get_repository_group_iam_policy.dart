import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_group_iam_policy_args.dart';
import 'get_repository_group_iam_policy_result.dart';

/// Retrieves the current IAM policy data for repositorygroup
Future<GetRepositoryGroupIamPolicyResult> getRepositoryGroupIamPolicy(
  GetRepositoryGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:gemini/getRepositoryGroupIamPolicy:getRepositoryGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryGroupIamPolicyResult.fromMap(result);
}
