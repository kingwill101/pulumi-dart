import 'package:pulumi/pulumi.dart';
import 'get_snapshot_args6.dart';
import 'get_snapshot_result6.dart';

/// Gets the details of a specific snapshot.
Future<GetSnapshotResult6> getSnapshot6(
  GetSnapshotArgs6 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult6.fromMap(result);
}
