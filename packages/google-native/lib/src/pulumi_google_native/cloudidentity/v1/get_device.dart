import 'package:pulumi/pulumi.dart';
import 'get_device_args.dart';
import 'get_device_result.dart';

/// Retrieves the specified device.
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getDevice',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}
