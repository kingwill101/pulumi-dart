import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_task_args.dart';
import 'get_replication_task_result.dart';

/// Data source for managing an AWS DMS (Database Migration) Replication Task.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetReplicationTaskResult> getReplicationTask(
  GetReplicationTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:dms/getReplicationTask:getReplicationTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationTaskResult.fromMap(result);
}
