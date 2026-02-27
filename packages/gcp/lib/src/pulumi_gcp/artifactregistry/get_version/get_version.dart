import 'package:pulumi/pulumi.dart';
import 'get_version_args.dart';
import 'get_version_result.dart';

/// This data source fetches information of a version from a provided Artifact Registry repository.
Future<GetVersionResult> getVersion(
  GetVersionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getVersion:getVersion',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetVersionResult.fromMap(result);
}
