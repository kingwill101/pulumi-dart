import 'package:pulumi/pulumi.dart';
import 'get_registry_image_args.dart';
import 'get_registry_image_result.dart';

/// > **Warning**: Container Registry is deprecated. Effective March 18, 2025, Container Registry is shut down and writing images to Container Registry is unavailable. Resource will be removed in future major release.
///
/// This data source fetches the project name, and provides the appropriate URLs to use for container registry for this project.
///
/// The URLs are computed entirely offline - as long as the project exists, they will be valid, but this data source does not contact Google Container Registry (GCR) at any point.
Future<GetRegistryImageResult> getRegistryImage(
  GetRegistryImageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:container/getRegistryImage:getRegistryImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegistryImageResult.fromMap(result);
}
