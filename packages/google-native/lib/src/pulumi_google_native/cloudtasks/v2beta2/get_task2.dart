import 'package:pulumi/pulumi.dart';
import 'get_task_args2.dart';
import 'get_task_result2.dart';

/// Gets a task.
Future<GetTaskResult2> getTask2(
  GetTaskArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta2:getTask',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaskResult2.fromMap(result);
}
