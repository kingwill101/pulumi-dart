import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_locations_artifactregistry_args.dart';
import 'get_locations_artifactregistry_result.dart';

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
Future<GetLocationsArtifactregistryResult> getLocationsArtifactregistry(
  GetLocationsArtifactregistryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getLocations:getLocations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocationsArtifactregistryResult.fromMap(result);
}
