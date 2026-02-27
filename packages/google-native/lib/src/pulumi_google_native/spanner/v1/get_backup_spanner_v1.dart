import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_spanner_v1_args.dart';
import 'get_backup_spanner_v1_result.dart';

/// Gets metadata on a pending or completed Backup.
Future<GetBackupSpannerV1Result> getBackupSpannerV1(
  GetBackupSpannerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupSpannerV1Result.fromMap(result);
}
