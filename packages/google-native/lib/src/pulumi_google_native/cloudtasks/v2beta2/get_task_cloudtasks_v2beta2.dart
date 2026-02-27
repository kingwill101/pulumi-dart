import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_cloudtasks_v2beta2_args.dart';
import 'get_task_cloudtasks_v2beta2_result.dart';

/// Gets a task.
Future<GetTaskCloudtasksV2beta2Result> getTaskCloudtasksV2beta2(
  GetTaskCloudtasksV2beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta2:getTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskCloudtasksV2beta2Result.fromMap(result);
}
