import 'package:pulumi/pulumi.dart' hide Config;
import 'get_queue_args3.dart';
import 'get_queue_result3.dart';

/// Gets a queue.
Future<GetQueueResult3> getQueue3(
  GetQueueArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getQueue',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueueResult3.fromMap(result);
}
