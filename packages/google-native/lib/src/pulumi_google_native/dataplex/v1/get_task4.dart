import 'package:pulumi/pulumi.dart';
import 'get_task_args4.dart';
import 'get_task_result4.dart';

/// Get task resource.
Future<GetTaskResult4> getTask4(
  GetTaskArgs4 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getTask',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTaskResult4.fromMap(result);
}
