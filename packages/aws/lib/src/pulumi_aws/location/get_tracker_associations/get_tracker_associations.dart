import 'package:pulumi/pulumi.dart';
import 'get_tracker_associations_args.dart';
import 'get_tracker_associations_result.dart';

/// Retrieve information about Location Service Tracker Associations.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetTrackerAssociationsResult> getTrackerAssociations(
  GetTrackerAssociationsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getTrackerAssociations:getTrackerAssociations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTrackerAssociationsResult.fromMap(result);
}
