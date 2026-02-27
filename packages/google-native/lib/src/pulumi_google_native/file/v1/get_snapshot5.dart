import 'package:pulumi/pulumi.dart' hide Config;
import 'get_snapshot_args5.dart';
import 'get_snapshot_result5.dart';

/// Gets the details of a specific snapshot.
Future<GetSnapshotResult5> getSnapshot5(
  GetSnapshotArgs5 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1:getSnapshot',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult5.fromMap(result);
}
