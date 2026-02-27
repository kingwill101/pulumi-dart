import 'package:pulumi/pulumi.dart';
import 'get_network_peering_args2.dart';
import 'get_network_peering_result2.dart';

/// Use this data source to get details about a network peering resource.
///
/// To get more information about network peering, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPeerings)
Future<GetNetworkPeeringResult2> getNetworkPeering2(
  GetNetworkPeeringArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetworkPeering:getNetworkPeering',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringResult2.fromMap(result);
}
