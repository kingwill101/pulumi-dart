import 'package:pulumi/pulumi.dart';
import 'get_instance_serial_port_args.dart';
import 'get_instance_serial_port_result.dart';

/// Get the serial port output from a Compute Instance. For more information see
/// the official [API](https://cloud.google.com/compute/docs/instances/viewing-serial-port-output) documentation.
///
/// ## Example Usage
///
///
///
/// Using the serial port output to generate a windows password, derived from the [official guide](https://cloud.google.com/compute/docs/instances/windows/automate-pw-generation):
Future<GetInstanceSerialPortResult> getInstanceSerialPort(
  GetInstanceSerialPortArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getInstanceSerialPort:getInstanceSerialPort',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetInstanceSerialPortResult.fromMap(result);
}
