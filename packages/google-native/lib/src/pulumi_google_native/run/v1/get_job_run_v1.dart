import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_run_v1_args.dart';
import 'get_job_run_v1_result.dart';

/// Get information about a job.
Future<GetJobRunV1Result> getJobRunV1(
  GetJobRunV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobRunV1Result.fromMap(result);
}
