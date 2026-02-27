import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_devices_args.dart';
import 'get_devices_result.dart';

/// Provides details about existing Network Manager devices.
Future<GetDevicesResult> getDevices(
  GetDevicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getDevices:getDevices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDevicesResult.fromMap(result);
}
