import 'package:pulumi/pulumi.dart';
import 'get_maven_artifact_args.dart';
import 'get_maven_artifact_result.dart';

/// This data source fetches information from a provided Artifact Registry repository, based on a the latest version of the artifact and optional version.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```yaml
/// resources:
/// mavenRepo:
/// type: gcp:artifactregistry:Repository
/// name: maven_repo
/// properties:
/// location: us-central1
/// repositoryId: my-maven-repo
/// format: MAVEN
/// variables:
/// latest:
/// fn::invoke:
/// function: gcp:artifactregistry:getMavenArtifact
/// arguments:
/// location: ${mavenRepo.location}
/// repositoryId: ${mavenRepo.repositoryId}
/// groupId: com.example
/// artifactId: my-artifact
/// withVersion:
/// fn::invoke:
/// function: gcp:artifactregistry:getMavenArtifact
/// arguments:
/// location: ${mavenRepo.location}
/// repositoryId: ${mavenRepo.repositoryId}
/// artifactName: my-artifact:1.0.0
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetMavenArtifactResult> getMavenArtifact(
  GetMavenArtifactArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getMavenArtifact:getMavenArtifact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMavenArtifactResult.fromMap(result);
}
