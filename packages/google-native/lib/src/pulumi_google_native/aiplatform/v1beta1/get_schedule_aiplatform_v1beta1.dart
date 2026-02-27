import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_schedule_aiplatform_v1beta1_args.dart';
import 'get_schedule_aiplatform_v1beta1_result.dart';

/// Gets a Schedule.
Future<GetScheduleAiplatformV1beta1Result> getScheduleAiplatformV1beta1(
  GetScheduleAiplatformV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:aiplatform/v1beta1:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleAiplatformV1beta1Result.fromMap(result);
}
