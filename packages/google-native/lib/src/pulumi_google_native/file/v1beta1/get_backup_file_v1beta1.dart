import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_file_v1beta1_args.dart';
import 'get_backup_file_v1beta1_result.dart';

/// Gets the details of a specific backup.
Future<GetBackupFileV1beta1Result> getBackupFileV1beta1(
  GetBackupFileV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:file/v1beta1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupFileV1beta1Result.fromMap(result);
}
