import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tracker_associations_args.dart';
import 'get_tracker_associations_result.dart';

/// Retrieve information about Location Service Tracker Associations.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetTrackerAssociationsResult> getTrackerAssociations(
  GetTrackerAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getTrackerAssociations:getTrackerAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrackerAssociationsResult.fromMap(result);
}
