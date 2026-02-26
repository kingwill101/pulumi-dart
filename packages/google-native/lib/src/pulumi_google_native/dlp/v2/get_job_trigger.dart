import 'package:pulumi/pulumi.dart';
import 'get_job_trigger_args.dart';
import 'get_job_trigger_result.dart';

/// Gets a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.
Future<GetJobTriggerResult> getJobTrigger(
  GetJobTriggerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dlp/v2:getJobTrigger',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobTriggerResult.fromMap(result);
}
