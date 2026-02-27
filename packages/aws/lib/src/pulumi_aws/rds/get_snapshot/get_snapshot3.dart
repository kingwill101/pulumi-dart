import 'package:pulumi/pulumi.dart';
import 'get_snapshot_args3.dart';
import 'get_snapshot_result3.dart';

/// Use this data source to get information about a DB Snapshot for use when provisioning DB instances
///
/// > **NOTE:** This data source does not apply to snapshots created on Aurora DB clusters.
/// See the `aws.rds.ClusterSnapshot` data source for DB Cluster snapshots.
Future<GetSnapshotResult3> getSnapshot3(
  GetSnapshotArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:rds/getSnapshot:getSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult3.fromMap(result);
}
