import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_run_v2_args.dart';
import 'get_service_run_v2_result.dart';

/// Gets information about a Service.
Future<GetServiceRunV2Result> getServiceRunV2(
  GetServiceRunV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v2:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceRunV2Result.fromMap(result);
}
