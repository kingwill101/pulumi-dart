import 'package:pulumi/pulumi.dart';
import 'get_locations_args3.dart';
import 'get_locations_result3.dart';

/// Get Cloud Run locations available for a project.
///
/// To get more information about Cloud Run, see:
///
/// * [API documentation](https://cloud.google.com/run/docs/reference/rest/v1/projects.locations)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/run/docs/)
Future<GetLocationsResult3> getLocations3(
  GetLocationsArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:cloudrun/getLocations:getLocations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocationsResult3.fromMap(result);
}
