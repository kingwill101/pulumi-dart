import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_iam_policy_artifactregistry_v1beta1_args.dart';
import 'get_repository_iam_policy_artifactregistry_v1beta1_result.dart';

/// Gets the IAM policy for a given resource.
Future<GetRepositoryIamPolicyArtifactregistryV1beta1Result>
    getRepositoryIamPolicyArtifactregistryV1beta1(
  GetRepositoryIamPolicyArtifactregistryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getRepositoryIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryIamPolicyArtifactregistryV1beta1Result.fromMap(result);
}
