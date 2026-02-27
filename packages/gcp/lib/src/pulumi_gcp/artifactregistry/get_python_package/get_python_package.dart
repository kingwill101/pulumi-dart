import 'package:pulumi/pulumi.dart';
import 'get_python_package_args.dart';
import 'get_python_package_result.dart';

/// This data source fetches information from a provided Artifact Registry repository, based on a the latest version of the package and optional version.
Future<GetPythonPackageResult> getPythonPackage(
  GetPythonPackageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPythonPackage:getPythonPackage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetPythonPackageResult.fromMap(result);
}
