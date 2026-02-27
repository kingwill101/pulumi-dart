import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_restore_args.dart';
import 'get_restore_result.dart';

/// Retrieves the details of a single Restore.
Future<GetRestoreResult> getRestore(
  GetRestoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:gkebackup/v1:getRestore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRestoreResult.fromMap(result);
}
