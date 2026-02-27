import 'package:pulumi/pulumi.dart';
import 'get_network_args2.dart';
import 'get_network_result2.dart';

/// Use this data source to get details about a VMwareEngine network resource.
///
/// To get more information about VMwareEngine Network, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.vmwareEngineNetworks)
Future<GetNetworkResult2> getNetwork2(
  GetNetworkArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetwork:getNetwork',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult2.fromMap(result);
}
