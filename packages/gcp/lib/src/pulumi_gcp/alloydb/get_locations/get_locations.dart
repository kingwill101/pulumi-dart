import 'package:pulumi/pulumi.dart';
import 'get_locations_args.dart';
import 'get_locations_result.dart';

/// Use this data source to get information about the available locations. For more details refer the [API docs](https://cloud.google.com/alloydb/docs/reference/rest/v1/projects.locations).
Future<GetLocationsResult> getLocations(
  GetLocationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:alloydb/getLocations:getLocations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocationsResult.fromMap(result);
}
