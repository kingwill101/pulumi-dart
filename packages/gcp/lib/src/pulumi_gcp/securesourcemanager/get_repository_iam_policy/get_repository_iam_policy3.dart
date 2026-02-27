import 'package:pulumi/pulumi.dart';
import 'get_repository_iam_policy_args3.dart';
import 'get_repository_iam_policy_result3.dart';

/// Retrieves the current IAM policy data for repository
Future<GetRepositoryIamPolicyResult3> getRepositoryIamPolicy3(
  GetRepositoryIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securesourcemanager/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult3.fromMap(result);
}
