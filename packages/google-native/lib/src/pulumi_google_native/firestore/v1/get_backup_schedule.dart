import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backup_schedule_args.dart';
import 'get_backup_schedule_result.dart';

/// Gets information about a backup schedule.
Future<GetBackupScheduleResult> getBackupSchedule(
  GetBackupScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firestore/v1:getBackupSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupScheduleResult.fromMap(result);
}
