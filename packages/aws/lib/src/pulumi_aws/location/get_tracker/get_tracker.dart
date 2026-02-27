import 'package:pulumi/pulumi.dart';
import 'get_tracker_args.dart';
import 'get_tracker_result.dart';

/// Retrieve information about a Location Service Tracker.
Future<GetTrackerResult> getTracker(
  GetTrackerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getTracker:getTracker',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTrackerResult.fromMap(result);
}
