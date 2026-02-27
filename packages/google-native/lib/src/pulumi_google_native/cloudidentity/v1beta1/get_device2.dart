import 'package:pulumi/pulumi.dart' hide Config;
import 'get_device_args2.dart';
import 'get_device_result2.dart';

/// Retrieves the specified device.
Future<GetDeviceResult2> getDevice2(
  GetDeviceArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getDevice',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult2.fromMap(result);
}
