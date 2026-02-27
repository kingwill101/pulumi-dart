import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_locations_cloudrun_args.dart';
import 'get_locations_cloudrun_result.dart';

/// Get Cloud Run locations available for a project.
///
/// To get more information about Cloud Run, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v1/projects.locations)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
Future<GetLocationsCloudrunResult> getLocationsCloudrun(
  GetLocationsCloudrunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrun/getLocations:getLocations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocationsCloudrunResult.fromMap(result);
}
