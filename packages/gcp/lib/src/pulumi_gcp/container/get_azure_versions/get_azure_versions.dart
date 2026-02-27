import 'package:pulumi/pulumi.dart';
import 'get_azure_versions_args.dart';
import 'get_azure_versions_result.dart';

/// Provides access to available Kubernetes versions in a location for a given project.
Future<GetAzureVersionsResult> getAzureVersions(
  GetAzureVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAzureVersions:getAzureVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAzureVersionsResult.fromMap(result);
}
