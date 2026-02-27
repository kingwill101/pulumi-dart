import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_import_job_args.dart';
import 'get_import_job_result.dart';

/// Returns metadata for a given ImportJob.
Future<GetImportJobResult> getImportJob(
  GetImportJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getImportJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportJobResult.fromMap(result);
}
