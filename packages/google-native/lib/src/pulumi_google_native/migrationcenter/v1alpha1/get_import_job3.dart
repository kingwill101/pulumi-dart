import 'package:pulumi/pulumi.dart' hide Config;
import 'get_import_job_args3.dart';
import 'get_import_job_result3.dart';

/// Gets the details of an import job.
Future<GetImportJobResult3> getImportJob3(
  GetImportJobArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getImportJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImportJobResult3.fromMap(result);
}
