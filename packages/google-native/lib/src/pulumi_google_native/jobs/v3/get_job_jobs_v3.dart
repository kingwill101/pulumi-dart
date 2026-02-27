import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_jobs_v3_args.dart';
import 'get_job_jobs_v3_result.dart';

/// Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days.
Future<GetJobJobsV3Result> getJobJobsV3(
  GetJobJobsV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v3:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobJobsV3Result.fromMap(result);
}
