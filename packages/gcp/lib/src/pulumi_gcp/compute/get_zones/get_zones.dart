import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// Provides access to available Google Compute zones in a region for a given project.
/// See more about [regions and zones](https://cloud.google.com/compute/docs/regions-zones/regions-zones) in the upstream docs.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
