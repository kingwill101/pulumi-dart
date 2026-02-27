import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_args.dart';
import 'get_snapshot_result.dart';

/// Use this data source to get information about an EBS Snapshot for use when provisioning EBS Volumes
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}
