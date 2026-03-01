import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serial_port_args.dart';
import 'get_serial_port_result.dart';

/// Gets the configured settings for a serial port
///
/// Uses Azure REST API version 2018-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_serialconsole_get_serial_port_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSerialPortResult> getSerialPort(
  GetSerialPortArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:serialconsole:getSerialPort',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSerialPortResult.fromMap(result);
}
