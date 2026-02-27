import 'package:pulumi/pulumi.dart' hide Config;
import 'get_network_peering_args.dart';
import 'get_network_peering_result.dart';

/// Retrieves a `NetworkPeering` resource by its resource name. The resource contains details of the network peering, such as peered networks, import and export custom route configurations, and peering state.
Future<GetNetworkPeeringResult> getNetworkPeering(
  GetNetworkPeeringArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getNetworkPeering',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringResult.fromMap(result);
}
