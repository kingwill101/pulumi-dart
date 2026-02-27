import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instant_snapshot_args.dart';
import 'get_region_instant_snapshot_result.dart';

/// Returns the specified InstantSnapshot resource in the specified region.
Future<GetRegionInstantSnapshotResult> getRegionInstantSnapshot(
  GetRegionInstantSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionInstantSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstantSnapshotResult.fromMap(result);
}
