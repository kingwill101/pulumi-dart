import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_artifactregistry_v1beta1_args.dart';
import 'get_repository_artifactregistry_v1beta1_result.dart';

/// Gets a repository.
Future<GetRepositoryArtifactregistryV1beta1Result>
    getRepositoryArtifactregistryV1beta1(
  GetRepositoryArtifactregistryV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryArtifactregistryV1beta1Result.fromMap(result);
}
