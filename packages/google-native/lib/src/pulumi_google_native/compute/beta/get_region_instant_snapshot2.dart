import 'package:pulumi/pulumi.dart';
import 'get_region_instant_snapshot_args2.dart';
import 'get_region_instant_snapshot_result2.dart';

/// Returns the specified InstantSnapshot resource in the specified region.
Future<GetRegionInstantSnapshotResult2> getRegionInstantSnapshot2(
  GetRegionInstantSnapshotArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionInstantSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionInstantSnapshotResult2.fromMap(result);
}
