import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_docker_images_args.dart';
import 'get_docker_images_result.dart';

/// Get information about Artifact Registry Docker images.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/docker)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages/list).
Future<GetDockerImagesResult> getDockerImages(
  GetDockerImagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getDockerImages:getDockerImages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDockerImagesResult.fromMap(result);
}
