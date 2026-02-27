import 'package:pulumi/pulumi.dart';
import 'get_npm_packages_args.dart';
import 'get_npm_packages_result.dart';

/// Get information about Artifact Registry Npm packages.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/nodejs)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.npmPackages/list).
Future<GetNpmPackagesResult> getNpmPackages(
  GetNpmPackagesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getNpmPackages:getNpmPackages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNpmPackagesResult.fromMap(result);
}
