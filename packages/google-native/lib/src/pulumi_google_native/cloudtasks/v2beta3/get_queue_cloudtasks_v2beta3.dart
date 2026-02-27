import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_queue_cloudtasks_v2beta3_args.dart';
import 'get_queue_cloudtasks_v2beta3_result.dart';

/// Gets a queue.
Future<GetQueueCloudtasksV2beta3Result> getQueueCloudtasksV2beta3(
  GetQueueCloudtasksV2beta3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getQueue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueueCloudtasksV2beta3Result.fromMap(result);
}
