import 'package:pulumi/pulumi.dart';
import 'get_repository_iam_policy_args4.dart';
import 'get_repository_iam_policy_result4.dart';

/// Retrieves the current IAM policy data for repository
Future<GetRepositoryIamPolicyResult4> getRepositoryIamPolicy4(
  GetRepositoryIamPolicyArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sourcerepo/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult4.fromMap(result);
}
