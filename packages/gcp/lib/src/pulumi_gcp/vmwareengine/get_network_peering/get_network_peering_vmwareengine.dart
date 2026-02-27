import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_peering_vmwareengine_args.dart';
import 'get_network_peering_vmwareengine_result.dart';

/// Use this data source to get details about a network peering resource.
///
/// To get more information about network peering, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPeerings)
Future<GetNetworkPeeringVmwareengineResult> getNetworkPeeringVmwareengine(
  GetNetworkPeeringVmwareengineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetworkPeering:getNetworkPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringVmwareengineResult.fromMap(result);
}
