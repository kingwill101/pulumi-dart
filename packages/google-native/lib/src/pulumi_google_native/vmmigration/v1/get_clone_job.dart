import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clone_job_args.dart';
import 'get_clone_job_result.dart';

/// Gets details of a single CloneJob.
Future<GetCloneJobResult> getCloneJob(
  GetCloneJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getCloneJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloneJobResult.fromMap(result);
}
