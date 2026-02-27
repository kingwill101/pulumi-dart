import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_cloudtasks_v2beta2_args.dart';
import 'get_queue_cloudtasks_v2beta2_result.dart';

/// Gets a queue.
Future<GetQueueCloudtasksV2beta2Result> getQueueCloudtasksV2beta2(
  GetQueueCloudtasksV2beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta2:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueCloudtasksV2beta2Result.fromMap(result);
}
