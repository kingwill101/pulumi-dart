import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_peering_args.dart';
import 'get_network_peering_result.dart';

/// Get information of a specified compute network peering. For more information see
/// [the official documentation](https://cloud.google.com/compute/docs/vpc/vpc-peering)
/// and
/// [API](https://cloud.google.com/compute/docs/reference/latest/networks).
Future<GetNetworkPeeringResult> getNetworkPeering(
  GetNetworkPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkPeering:getNetworkPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringResult.fromMap(result);
}
