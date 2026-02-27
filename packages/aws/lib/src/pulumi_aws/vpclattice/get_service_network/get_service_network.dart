import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_network_args.dart';
import 'get_service_network_result.dart';

/// Data source for managing an AWS VPC Lattice Service Network.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetServiceNetworkResult> getServiceNetwork(
  GetServiceNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:vpclattice/getServiceNetwork:getServiceNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceNetworkResult.fromMap(result);
}
