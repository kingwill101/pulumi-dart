import 'package:pulumi/pulumi.dart';
import 'get_snapshot_args3.dart';
import 'get_snapshot_result3.dart';

/// Returns the specified Snapshot resource.
Future<GetSnapshotResult3> getSnapshot3(
  GetSnapshotArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult3.fromMap(result);
}
