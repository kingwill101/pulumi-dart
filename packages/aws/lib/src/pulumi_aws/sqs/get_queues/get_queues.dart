import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queues_args.dart';
import 'get_queues_result.dart';

/// Data source for managing an AWS SQS (Simple Queue) Queues.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetQueuesResult> getQueues(
  GetQueuesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:sqs/getQueues:getQueues',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueuesResult.fromMap(result);
}
