import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_rds_args.dart';
import 'get_snapshot_rds_result.dart';

/// Use this data source to get information about a DB Snapshot for use when provisioning DB instances
///
/// > **NOTE:** This data source does not apply to snapshots created on Aurora DB clusters.
/// See the `aws.rds.ClusterSnapshot` data source for DB Cluster snapshots.
Future<GetSnapshotRdsResult> getSnapshotRds(
  GetSnapshotRdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotRdsResult.fromMap(result);
}
