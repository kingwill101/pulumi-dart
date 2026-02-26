import 'package:pulumi/pulumi.dart';
import 'get_repository_iam_policy_args2.dart';
import 'get_repository_iam_policy_result2.dart';

/// Gets the IAM policy for a given resource.
Future<GetRepositoryIamPolicyResult2> getRepositoryIamPolicy2(
  GetRepositoryIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getRepositoryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult2.fromMap(result);
}
