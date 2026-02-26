import 'package:pulumi/pulumi.dart';
import 'get_region_instant_snapshot_args.dart';
import 'get_region_instant_snapshot_result.dart';

/// Returns the specified InstantSnapshot resource in the specified region.
Future<GetRegionInstantSnapshotResult> getRegionInstantSnapshot(
  GetRegionInstantSnapshotArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionInstantSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstantSnapshotResult.fromMap(result);
}
