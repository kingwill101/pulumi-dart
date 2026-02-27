import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_migration_job_datamigration_v1beta1_args.dart';
import 'get_migration_job_datamigration_v1beta1_result.dart';

/// Gets details of a single migration job.
Future<GetMigrationJobDatamigrationV1beta1Result>
    getMigrationJobDatamigrationV1beta1(
  GetMigrationJobDatamigrationV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:datamigration/v1beta1:getMigrationJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationJobDatamigrationV1beta1Result.fromMap(result);
}
