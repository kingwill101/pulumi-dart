import 'package:pulumi/pulumi.dart' hide Config;
import 'get_repository_iam_policy_args.dart';
import 'get_repository_iam_policy_result.dart';

/// Gets the IAM policy for a given resource.
Future<GetRepositoryIamPolicyResult> getRepositoryIamPolicy(
  GetRepositoryIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1:getRepositoryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult.fromMap(result);
}
