import 'package:pulumi/pulumi.dart';
import 'get_task_args3.dart';
import 'get_task_result3.dart';

/// Gets a task.
Future<GetTaskResult3> getTask3(
  GetTaskArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudtasks/v2beta3:getTask',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaskResult3.fromMap(result);
}
