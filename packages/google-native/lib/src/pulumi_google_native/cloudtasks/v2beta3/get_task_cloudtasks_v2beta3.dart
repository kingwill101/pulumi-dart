import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_cloudtasks_v2beta3_args.dart';
import 'get_task_cloudtasks_v2beta3_result.dart';

/// Gets a task.
Future<GetTaskCloudtasksV2beta3Result> getTaskCloudtasksV2beta3(
  GetTaskCloudtasksV2beta3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskCloudtasksV2beta3Result.fromMap(result);
}
