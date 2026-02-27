import 'package:pulumi/pulumi.dart';
import 'get_cluster_snapshot_args.dart';
import 'get_cluster_snapshot_result.dart';

/// Use this data source to get information about a DB Cluster Snapshot for use when provisioning DB clusters.
///
/// > **NOTE:** This data source does not apply to snapshots created on DB Instances.
/// See the `aws.rds.Snapshot` data source for DB Instance snapshots.
Future<GetClusterSnapshotResult> getClusterSnapshot(
  GetClusterSnapshotArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getClusterSnapshot:getClusterSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetClusterSnapshotResult.fromMap(result);
}
