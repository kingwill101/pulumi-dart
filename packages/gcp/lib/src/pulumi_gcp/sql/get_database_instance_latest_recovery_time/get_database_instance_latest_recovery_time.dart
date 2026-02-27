import 'package:pulumi/pulumi.dart';
import 'get_database_instance_latest_recovery_time_args.dart';
import 'get_database_instance_latest_recovery_time_result.dart';

/// Get Latest Recovery Time for a given instance. For more information see the
/// [official documentation](https://cloud.google.com/sql/)
/// and
/// [API](https://cloud.google.com/sql/docs/postgres/backup-recovery/pitr#get-the-latest-recovery-time).
Future<GetDatabaseInstanceLatestRecoveryTimeResult>
    getDatabaseInstanceLatestRecoveryTime(
  GetDatabaseInstanceLatestRecoveryTimeArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:sql/getDatabaseInstanceLatestRecoveryTime:getDatabaseInstanceLatestRecoveryTime',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDatabaseInstanceLatestRecoveryTimeResult.fromMap(result);
}
