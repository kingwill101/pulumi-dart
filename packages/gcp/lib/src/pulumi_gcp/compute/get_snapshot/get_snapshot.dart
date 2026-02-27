import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';

/// To get more information about Snapshot, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/disks/create-snapshots)
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}
