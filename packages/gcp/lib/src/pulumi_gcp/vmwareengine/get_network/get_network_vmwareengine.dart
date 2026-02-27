import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_vmwareengine_args.dart';
import 'get_network_vmwareengine_result.dart';

/// Use this data source to get details about a VMwareEngine network resource.
///
/// To get more information about VMwareEngine Network, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.vmwareEngineNetworks)
Future<GetNetworkVmwareengineResult> getNetworkVmwareengine(
  GetNetworkVmwareengineArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetwork:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkVmwareengineResult.fromMap(result);
}
