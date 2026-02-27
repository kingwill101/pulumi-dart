import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_sqs_args.dart';
import 'get_queue_sqs_result.dart';

/// Use this data source to get the ARN and URL of queue in AWS Simple Queue Service (SQS).
/// By using this data source, you can reference SQS queues without having to hardcode
/// the ARNs as input.
///
/// > **NOTE:** To use this data source, you must have the `sqs:GetQueueAttributes` and `sqs:GetQueueURL` permissions.
Future<GetQueueSqsResult> getQueueSqs(
  GetQueueSqsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sqs/getQueue:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueSqsResult.fromMap(result);
}
