import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_import_job_migrationcenter_v1alpha1_args.dart';
import 'get_import_job_migrationcenter_v1alpha1_result.dart';

/// Gets the details of an import job.
Future<GetImportJobMigrationcenterV1alpha1Result>
    getImportJobMigrationcenterV1alpha1(
  GetImportJobMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getImportJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportJobMigrationcenterV1alpha1Result.fromMap(result);
}
