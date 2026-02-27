import 'package:pulumi/pulumi.dart';
import 'get_packages_args.dart';
import 'get_packages_result.dart';

/// Get information about Artifact Registry packages.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/overview)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.packages/list).
Future<GetPackagesResult> getPackages(
  GetPackagesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPackages:getPackages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPackagesResult.fromMap(result);
}
