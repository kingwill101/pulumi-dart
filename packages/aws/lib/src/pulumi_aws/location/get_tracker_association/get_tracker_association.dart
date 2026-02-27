import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tracker_association_args.dart';
import 'get_tracker_association_result.dart';

/// Retrieve information about a Location Service Tracker Association.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetTrackerAssociationResult> getTrackerAssociation(
  GetTrackerAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getTrackerAssociation:getTrackerAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrackerAssociationResult.fromMap(result);
}
