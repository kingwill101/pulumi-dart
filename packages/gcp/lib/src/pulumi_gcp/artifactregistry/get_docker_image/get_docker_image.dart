import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_docker_image_args.dart';
import 'get_docker_image_result.dart';

/// This data source fetches information from a provided Artifact Registry repository, including the fully qualified name and URI for an image, based on a the latest version of image name and optional digest or tag.
///
/// > **Note**
/// Requires one of the following OAuth scopes: `https://www.googleapis.com/auth/cloud-platform` or `https://www.googleapis.com/auth/cloud-platform.read-only`.
Future<GetDockerImageResult> getDockerImage(
  GetDockerImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getDockerImage:getDockerImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDockerImageResult.fromMap(result);
}
