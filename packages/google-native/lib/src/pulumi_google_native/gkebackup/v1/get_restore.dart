import 'package:pulumi/pulumi.dart' hide Config;
import 'get_restore_args.dart';
import 'get_restore_result.dart';

/// Retrieves the details of a single Restore.
Future<GetRestoreResult> getRestore(
  GetRestoreArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getRestore',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRestoreResult.fromMap(result);
}
