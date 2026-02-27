import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_iam_policy_sourcerepo_args.dart';
import 'get_repository_iam_policy_sourcerepo_result.dart';

/// Retrieves the current IAM policy data for repository
Future<GetRepositoryIamPolicySourcerepoResult> getRepositoryIamPolicySourcerepo(
  GetRepositoryIamPolicySourcerepoArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sourcerepo/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicySourcerepoResult.fromMap(result);
}
