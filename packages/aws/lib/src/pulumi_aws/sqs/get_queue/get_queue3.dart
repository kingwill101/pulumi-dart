import 'package:pulumi/pulumi.dart';
import 'get_queue_args3.dart';
import 'get_queue_result3.dart';

/// Use this data source to get the ARN and URL of queue in AWS Simple Queue Service (SQS).
/// By using this data source, you can reference SQS queues without having to hardcode
/// the ARNs as input.
///
/// > **NOTE:** To use this data source, you must have the `sqs:GetQueueAttributes` and `sqs:GetQueueURL` permissions.
Future<GetQueueResult3> getQueue3(
  GetQueueArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sqs/getQueue:getQueue',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueueResult3.fromMap(result);
}
