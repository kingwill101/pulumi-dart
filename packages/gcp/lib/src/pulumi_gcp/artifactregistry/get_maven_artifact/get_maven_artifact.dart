import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_maven_artifact_args.dart';
import 'get_maven_artifact_result.dart';

/// This data source fetches information from a provided Artifact Registry repository, based on a the latest version of the artifact and optional version.
Future<GetMavenArtifactResult> getMavenArtifact(
  GetMavenArtifactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getMavenArtifact:getMavenArtifact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMavenArtifactResult.fromMap(result);
}
