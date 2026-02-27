import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_file_v1_args.dart';
import 'get_backup_file_v1_result.dart';

/// Gets the details of a specific backup.
Future<GetBackupFileV1Result> getBackupFileV1(
  GetBackupFileV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupFileV1Result.fromMap(result);
}
