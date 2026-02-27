import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_import_job_migrationcenter_v1_args.dart';
import 'get_import_job_migrationcenter_v1_result.dart';

/// Gets the details of an import job.
Future<GetImportJobMigrationcenterV1Result> getImportJobMigrationcenterV1(
  GetImportJobMigrationcenterV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getImportJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportJobMigrationcenterV1Result.fromMap(result);
}
