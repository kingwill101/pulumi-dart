import 'package:pulumi/pulumi.dart';
import 'get_schedule_args2.dart';
import 'get_schedule_result2.dart';

/// Gets a Schedule.
Future<GetScheduleResult2> getSchedule2(
  GetScheduleArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getSchedule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult2.fromMap(result);
}
