import 'package:pulumi/pulumi.dart' hide Config;
import 'get_queue_args.dart';
import 'get_queue_result.dart';

/// Gets a queue.
Future<GetQueueResult> getQueue(
  GetQueueArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2:getQueue',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueueResult.fromMap(result);
}
