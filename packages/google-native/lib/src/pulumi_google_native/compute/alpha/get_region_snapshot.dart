import 'package:pulumi/pulumi.dart';
import 'get_region_snapshot_args.dart';
import 'get_region_snapshot_result.dart';

/// Returns the specified Snapshot resource.
Future<GetRegionSnapshotResult> getRegionSnapshot(
  GetRegionSnapshotArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionSnapshotResult.fromMap(result);
}
