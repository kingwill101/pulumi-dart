import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_iam_policy_securesourcemanager_args.dart';
import 'get_repository_iam_policy_securesourcemanager_result.dart';

/// Retrieves the current IAM policy data for repository
Future<GetRepositoryIamPolicySecuresourcemanagerResult>
    getRepositoryIamPolicySecuresourcemanager(
  GetRepositoryIamPolicySecuresourcemanagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:securesourcemanager/getRepositoryIamPolicy:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicySecuresourcemanagerResult.fromMap(result);
}
