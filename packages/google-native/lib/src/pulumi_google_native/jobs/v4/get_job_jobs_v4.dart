import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_jobs_v4_args.dart';
import 'get_job_jobs_v4_result.dart';

/// Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days.
Future<GetJobJobsV4Result> getJobJobsV4(
  GetJobJobsV4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v4:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobJobsV4Result.fromMap(result);
}
