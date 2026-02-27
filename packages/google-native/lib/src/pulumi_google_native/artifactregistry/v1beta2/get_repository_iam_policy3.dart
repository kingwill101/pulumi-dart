import 'package:pulumi/pulumi.dart' hide Config;
import 'get_repository_iam_policy_args3.dart';
import 'get_repository_iam_policy_result3.dart';

/// Gets the IAM policy for a given resource.
Future<GetRepositoryIamPolicyResult3> getRepositoryIamPolicy3(
  GetRepositoryIamPolicyArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getRepositoryIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyResult3.fromMap(result);
}
