import 'package:pulumi/pulumi.dart';
import 'get_maven_artifacts_args.dart';
import 'get_maven_artifacts_result.dart';

/// Get information about Artifact Registry Maven artifacts.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/java)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.mavenArtifacts/list).
Future<GetMavenArtifactsResult> getMavenArtifacts(
  GetMavenArtifactsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getMavenArtifacts:getMavenArtifacts',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMavenArtifactsResult.fromMap(result);
}
