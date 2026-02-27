import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_ids_args.dart';
import 'get_snapshot_ids_result.dart';

/// Use this data source to get a list of EBS Snapshot IDs matching the specified
/// criteria.
Future<GetSnapshotIdsResult> getSnapshotIds(
  GetSnapshotIdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getSnapshotIds:getSnapshotIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIdsResult.fromMap(result);
}
