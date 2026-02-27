import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schedule_notebooks_v1_args.dart';
import 'get_schedule_notebooks_v1_result.dart';

/// Gets details of schedule
Future<GetScheduleNotebooksV1Result> getScheduleNotebooksV1(
  GetScheduleNotebooksV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleNotebooksV1Result.fromMap(result);
}
