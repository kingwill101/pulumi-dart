import 'package:pulumi/pulumi.dart' hide Config;
import 'get_schedule_args3.dart';
import 'get_schedule_result3.dart';

/// Gets details of schedule
Future<GetScheduleResult3> getSchedule3(
  GetScheduleArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:notebooks/v1:getSchedule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult3.fromMap(result);
}
