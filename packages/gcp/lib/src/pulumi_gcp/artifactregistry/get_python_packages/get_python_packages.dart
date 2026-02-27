import 'package:pulumi/pulumi.dart';
import 'get_python_packages_args.dart';
import 'get_python_packages_result.dart';

/// Get information about Artifact Registry Python packages.
/// See [the official documentation](https://cloud.google.com/artifact-registry/docs/python)
/// and [API](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.pythonPackages/list).
Future<GetPythonPackagesResult> getPythonPackages(
  GetPythonPackagesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPythonPackages:getPythonPackages',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPythonPackagesResult.fromMap(result);
}
