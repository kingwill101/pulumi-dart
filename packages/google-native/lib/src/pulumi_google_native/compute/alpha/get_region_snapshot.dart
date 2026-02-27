import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_snapshot_args.dart';
import 'get_region_snapshot_result.dart';

/// Returns the specified Snapshot resource.
Future<GetRegionSnapshotResult> getRegionSnapshot(
  GetRegionSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSnapshotResult.fromMap(result);
}
