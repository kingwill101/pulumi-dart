import 'package:pulumi/pulumi.dart';
import 'get_migration_job_args2.dart';
import 'get_migration_job_result2.dart';

/// Gets details of a single migration job.
Future<GetMigrationJobResult2> getMigrationJob2(
  GetMigrationJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getMigrationJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobResult2.fromMap(result);
}
