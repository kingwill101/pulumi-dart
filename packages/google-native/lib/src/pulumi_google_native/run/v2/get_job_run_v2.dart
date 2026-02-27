import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_job_run_v2_args.dart';
import 'get_job_run_v2_result.dart';

/// Gets information about a Job.
Future<GetJobRunV2Result> getJobRunV2(
  GetJobRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobRunV2Result.fromMap(result);
}
