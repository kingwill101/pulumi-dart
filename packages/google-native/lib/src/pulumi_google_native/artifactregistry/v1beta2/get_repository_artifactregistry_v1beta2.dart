import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_artifactregistry_v1beta2_args.dart';
import 'get_repository_artifactregistry_v1beta2_result.dart';

/// Gets a repository.
Future<GetRepositoryArtifactregistryV1beta2Result>
    getRepositoryArtifactregistryV1beta2(
  GetRepositoryArtifactregistryV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta2:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryArtifactregistryV1beta2Result.fromMap(result);
}
