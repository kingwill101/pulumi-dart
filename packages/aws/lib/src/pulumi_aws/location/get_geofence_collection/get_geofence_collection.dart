import 'package:pulumi/pulumi.dart';
import 'get_geofence_collection_args.dart';
import 'get_geofence_collection_result.dart';

/// Retrieve information about a Location Service Geofence Collection.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetGeofenceCollectionResult> getGeofenceCollection(
  GetGeofenceCollectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getGeofenceCollection:getGeofenceCollection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGeofenceCollectionResult.fromMap(result);
}
