import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_iam_policy_artifactregistry_v1beta2_args.dart';
import 'get_repository_iam_policy_artifactregistry_v1beta2_result.dart';

/// Gets the IAM policy for a given resource.
Future<GetRepositoryIamPolicyArtifactregistryV1beta2Result>
    getRepositoryIamPolicyArtifactregistryV1beta2(
  GetRepositoryIamPolicyArtifactregistryV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyArtifactregistryV1beta2Result.fromMap(result);
}
