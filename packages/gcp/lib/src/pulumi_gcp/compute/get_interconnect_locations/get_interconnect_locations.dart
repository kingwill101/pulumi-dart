import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_interconnect_locations_args.dart';
import 'get_interconnect_locations_result.dart';

/// Get a list of interconnect locations. For more information see
/// the official [API](https://cloud.google.com/compute/docs/reference/rest/v1/interconnectLocations/list) documentation.
Future<GetInterconnectLocationsResult> getInterconnectLocations(
  GetInterconnectLocationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInterconnectLocations:getInterconnectLocations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectLocationsResult.fromMap(result);
}
