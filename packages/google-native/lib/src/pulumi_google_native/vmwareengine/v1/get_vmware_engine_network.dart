import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vmware_engine_network_args.dart';
import 'get_vmware_engine_network_result.dart';

/// Retrieves a `VmwareEngineNetwork` resource by its resource name. The resource contains details of the VMware Engine network, such as its VMware Engine network type, peered networks in a service project, and state (for example, `CREATING`, `ACTIVE`, `DELETING`).
Future<GetVmwareEngineNetworkResult> getVmwareEngineNetwork(
  GetVmwareEngineNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getVmwareEngineNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareEngineNetworkResult.fromMap(result);
}
