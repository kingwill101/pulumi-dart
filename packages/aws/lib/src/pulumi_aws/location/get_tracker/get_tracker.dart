import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tracker_args.dart';
import 'get_tracker_result.dart';

/// Retrieve information about a Location Service Tracker.
Future<GetTrackerResult> getTracker(
  GetTrackerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getTracker:getTracker',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrackerResult.fromMap(result);
}
