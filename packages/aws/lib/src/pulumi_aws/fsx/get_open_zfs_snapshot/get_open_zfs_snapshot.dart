import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_open_zfs_snapshot_args.dart';
import 'get_open_zfs_snapshot_result.dart';

/// Use this data source to get information about an Amazon FSx for OpenZFS Snapshot for use when provisioning new Volumes.
///
/// ## Example Usage
///
/// ### Root volume Example
Future<GetOpenZfsSnapshotResult> getOpenZfsSnapshot(
  GetOpenZfsSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:fsx/getOpenZfsSnapshot:getOpenZfsSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOpenZfsSnapshotResult.fromMap(result);
}
