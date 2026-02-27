import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interface_args.dart';
import 'get_network_interface_result.dart';

/// Use this data source to get information about a Network Interface.
Future<GetNetworkInterfaceResult> getNetworkInterface(
  GetNetworkInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInterface:getNetworkInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfaceResult.fromMap(result);
}
