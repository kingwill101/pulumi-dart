import 'package:pulumi/pulumi.dart' hide Config;
import 'get_task_args.dart';
import 'get_task_result.dart';

/// Gets a task.
Future<GetTaskResult> getTask(
  GetTaskArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2:getTask',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaskResult.fromMap(result);
}
