import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_geofence_collection_args.dart';
import 'get_geofence_collection_result.dart';

/// Retrieve information about a Location Service Geofence Collection.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetGeofenceCollectionResult> getGeofenceCollection(
  GetGeofenceCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getGeofenceCollection:getGeofenceCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGeofenceCollectionResult.fromMap(result);
}
