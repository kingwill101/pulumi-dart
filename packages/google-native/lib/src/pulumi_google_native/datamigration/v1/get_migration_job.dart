import 'package:pulumi/pulumi.dart' hide Config;
import 'get_migration_job_args.dart';
import 'get_migration_job_result.dart';

/// Gets details of a single migration job.
Future<GetMigrationJobResult> getMigrationJob(
  GetMigrationJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1:getMigrationJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobResult.fromMap(result);
}
