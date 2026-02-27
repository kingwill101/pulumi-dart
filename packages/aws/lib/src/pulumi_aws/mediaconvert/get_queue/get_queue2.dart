import 'package:pulumi/pulumi.dart';
import 'get_queue_args2.dart';
import 'get_queue_result2.dart';

/// Retrieve information about a AWS Elemental MediaConvert Queue.
Future<GetQueueResult2> getQueue2(
  GetQueueArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mediaconvert/getQueue:getQueue',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueueResult2.fromMap(result);
}
