import 'package:pulumi/pulumi.dart';
import 'get_queues_args.dart';
import 'get_queues_result.dart';

/// Data source for managing an AWS SQS (Simple Queue) Queues.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetQueuesResult> getQueues(
  GetQueuesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sqs/getQueues:getQueues',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueuesResult.fromMap(result);
}
