import 'package:pulumi/pulumi.dart' hide Config;
import 'get_queue_args2.dart';
import 'get_queue_result2.dart';

/// Gets a queue.
Future<GetQueueResult2> getQueue2(
  GetQueueArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta2:getQueue',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueueResult2.fromMap(result);
}
