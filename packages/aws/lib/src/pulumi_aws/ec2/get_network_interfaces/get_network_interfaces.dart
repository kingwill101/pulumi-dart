import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_interfaces_args.dart';
import 'get_network_interfaces_result.dart';

/// ## Example Usage
///
/// The following shows outputting all network interface ids in a region.
///
///
///
/// The following example retrieves a list of all network interface ids with a custom tag of `Name` set to a value of `test`.
///
///
///
/// The following example retrieves a network interface ids which associated
/// with specific subnet.
Future<GetNetworkInterfacesResult> getNetworkInterfaces(
  GetNetworkInterfacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInterfaces:getNetworkInterfaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfacesResult.fromMap(result);
}
