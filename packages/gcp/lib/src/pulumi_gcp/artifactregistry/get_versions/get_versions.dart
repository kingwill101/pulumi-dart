import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_versions_args.dart';
import 'get_versions_result.dart';

/// Get information about Artifact Registry versions.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/overview)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages.versions/list).
Future<GetVersionsResult> getVersions(
  GetVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getVersions:getVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionsResult.fromMap(result);
}
