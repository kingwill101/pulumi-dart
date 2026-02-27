import 'package:pulumi/pulumi.dart';
import 'get_job_queue_args.dart';
import 'get_job_queue_result.dart';

/// The Batch Job Queue data source allows access to details of a specific
/// job queue within AWS Batch.
Future<GetJobQueueResult> getJobQueue(
  GetJobQueueArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:batch/getJobQueue:getJobQueue',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetJobQueueResult.fromMap(result);
}
