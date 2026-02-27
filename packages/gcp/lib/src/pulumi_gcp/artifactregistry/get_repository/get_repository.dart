import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_repository_args.dart';
import 'get_repository_result.dart';

/// Get information about a Google Artifact Registry Repository. For more information see
/// the [official documentation](https://cloud.google.com/artifact-registry/docs/)
/// and [API](https://cloud.google.com/artifact-registry/docs/apis).
Future<GetRepositoryResult> getRepository(
  GetRepositoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getRepository:getRepository',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRepositoryResult.fromMap(result);
}
