import 'package:pulumi/pulumi.dart';
import 'get_snapshot_args2.dart';
import 'get_snapshot_result2.dart';

/// Provides information about a MemoryDB Snapshot.
Future<GetSnapshotResult2> getSnapshot2(
  GetSnapshotArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:memorydb/getSnapshot:getSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult2.fromMap(result);
}
