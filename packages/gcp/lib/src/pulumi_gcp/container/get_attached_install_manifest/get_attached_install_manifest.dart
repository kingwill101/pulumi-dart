import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_attached_install_manifest_args.dart';
import 'get_attached_install_manifest_result.dart';

/// Provides access to available platform versions in a location for a given project.
Future<GetAttachedInstallManifestResult> getAttachedInstallManifest(
  GetAttachedInstallManifestArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getAttachedInstallManifest:getAttachedInstallManifest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAttachedInstallManifestResult.fromMap(result);
}
