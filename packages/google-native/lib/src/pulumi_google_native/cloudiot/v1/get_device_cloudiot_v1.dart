import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_cloudiot_v1_args.dart';
import 'get_device_cloudiot_v1_result.dart';

/// Gets details about a device.
Future<GetDeviceCloudiotV1Result> getDeviceCloudiotV1(
  GetDeviceCloudiotV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceCloudiotV1Result.fromMap(result);
}
