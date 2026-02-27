import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_package_args.dart';
import 'get_package_result.dart';

/// This data source fetches information of a package from a provided Artifact Registry repository.
Future<GetPackageResult> getPackage(
  GetPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getPackage:getPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPackageResult.fromMap(result);
}
