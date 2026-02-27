import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_args.dart';
import 'get_queue_result.dart';

/// Provides details about a specific Amazon Connect Queue.
///
/// ## Example Usage
///
/// By `name`
///
///
///
/// By `queue_id`
Future<GetQueueResult> getQueue(
  GetQueueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getQueue:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueResult.fromMap(result);
}
