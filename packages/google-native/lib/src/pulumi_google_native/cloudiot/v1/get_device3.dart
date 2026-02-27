import 'package:pulumi/pulumi.dart' hide Config;
import 'get_device_args3.dart';
import 'get_device_result3.dart';

/// Gets details about a device.
Future<GetDeviceResult3> getDevice3(
  GetDeviceArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudiot/v1:getDevice',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult3.fromMap(result);
}
