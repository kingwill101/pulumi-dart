import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_monitoring_v3_args.dart';
import 'get_service_monitoring_v3_result.dart';

/// Get the named Service.
Future<GetServiceMonitoringV3Result> getServiceMonitoringV3(
  GetServiceMonitoringV3Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:monitoring/v3:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceMonitoringV3Result.fromMap(result);
}
