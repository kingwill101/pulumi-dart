import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_monitoring_v3_args.dart';
import 'get_group_monitoring_v3_result.dart';

/// Gets a single group.
Future<GetGroupMonitoringV3Result> getGroupMonitoringV3(
  GetGroupMonitoringV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupMonitoringV3Result.fromMap(result);
}
