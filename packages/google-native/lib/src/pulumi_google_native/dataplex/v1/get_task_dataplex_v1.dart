import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_dataplex_v1_args.dart';
import 'get_task_dataplex_v1_result.dart';

/// Get task resource.
Future<GetTaskDataplexV1Result> getTaskDataplexV1(
  GetTaskDataplexV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataplex/v1:getTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskDataplexV1Result.fromMap(result);
}
