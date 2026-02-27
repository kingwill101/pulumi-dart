import 'package:pulumi/pulumi.dart' hide Config;
import 'get_clone_job_args.dart';
import 'get_clone_job_result.dart';

/// Gets details of a single CloneJob.
Future<GetCloneJobResult> getCloneJob(
  GetCloneJobArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getCloneJob',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCloneJobResult.fromMap(result);
}
