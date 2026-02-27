import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instant_snapshot_args.dart';
import 'get_instant_snapshot_result.dart';

/// Returns the specified InstantSnapshot resource in the specified zone.
Future<GetInstantSnapshotResult> getInstantSnapshot(
  GetInstantSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstantSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstantSnapshotResult.fromMap(result);
}
