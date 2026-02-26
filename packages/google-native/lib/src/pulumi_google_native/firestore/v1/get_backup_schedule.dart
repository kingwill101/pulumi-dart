import 'package:pulumi/pulumi.dart';
import 'get_backup_schedule_args.dart';
import 'get_backup_schedule_result.dart';

/// Gets information about a backup schedule.
Future<GetBackupScheduleResult> getBackupSchedule(
  GetBackupScheduleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1:getBackupSchedule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetBackupScheduleResult.fromMap(result);
}
