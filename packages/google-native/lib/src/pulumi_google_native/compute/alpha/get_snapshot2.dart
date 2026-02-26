import 'package:pulumi/pulumi.dart';
import 'get_snapshot_args2.dart';
import 'get_snapshot_result2.dart';

/// Returns the specified Snapshot resource.
Future<GetSnapshotResult2> getSnapshot2(
  GetSnapshotArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult2.fromMap(result);
}
