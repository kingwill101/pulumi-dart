import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshot_memorydb_args.dart';
import 'get_snapshot_memorydb_result.dart';

/// Provides information about a MemoryDB Snapshot.
Future<GetSnapshotMemorydbResult> getSnapshotMemorydb(
  GetSnapshotMemorydbArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getSnapshot:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotMemorydbResult.fromMap(result);
}
