import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_args.dart';
import 'get_device_result.dart';

/// Provides details about an existing Network Manager device.
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getDevice:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}
