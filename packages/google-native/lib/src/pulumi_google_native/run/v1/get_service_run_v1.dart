import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_run_v1_args.dart';
import 'get_service_run_v1_result.dart';

/// Gets information about a service.
Future<GetServiceRunV1Result> getServiceRunV1(
  GetServiceRunV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:run/v1:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceRunV1Result.fromMap(result);
}
