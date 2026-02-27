import 'package:pulumi/pulumi.dart';
import 'get_image_versions_args.dart';
import 'get_image_versions_result.dart';

/// Provides access to available Cloud Composer versions in a region for a given project.
///
/// To get more information about Composer Image Versions, see:
///
/// * [API documentation](https://cloud.google.com/composer/docs/reference/rest/v1/projects.locations.imageVersions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/composer/docs/concepts/overview)
Future<GetImageVersionsResult> getImageVersions(
  GetImageVersionsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:composer/getImageVersions:getImageVersions',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageVersionsResult.fromMap(result);
}
