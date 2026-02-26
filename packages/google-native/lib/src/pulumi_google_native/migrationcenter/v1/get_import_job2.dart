import 'package:pulumi/pulumi.dart';
import 'get_import_job_args2.dart';
import 'get_import_job_result2.dart';

/// Gets the details of an import job.
Future<GetImportJobResult2> getImportJob2(
  GetImportJobArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getImportJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImportJobResult2.fromMap(result);
}
