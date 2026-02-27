import 'package:pulumi/pulumi.dart';
import 'get_locations_args2.dart';
import 'get_locations_result2.dart';

/// Get Artifact Registry locations available for a project.
///
/// To get more information about Artifact Registry, see:
///
/// * [API documentation](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations/list)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/artifact-registry/docs/overview)
///
/// ## Example Usage
///
///
///
///
/// ### Multi-Regional Artifact Registry Deployment
Future<GetLocationsResult2> getLocations2(
  GetLocationsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getLocations:getLocations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocationsResult2.fromMap(result);
}
