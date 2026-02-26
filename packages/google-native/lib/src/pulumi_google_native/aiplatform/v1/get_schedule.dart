import 'package:pulumi/pulumi.dart';
import 'get_schedule_args.dart';
import 'get_schedule_result.dart';

/// Gets a Schedule.
Future<GetScheduleResult> getSchedule(
  GetScheduleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1:getSchedule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult.fromMap(result);
}
