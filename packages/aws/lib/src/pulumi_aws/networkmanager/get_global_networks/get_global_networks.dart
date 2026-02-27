import 'package:pulumi/pulumi.dart';
import 'get_global_networks_args.dart';
import 'get_global_networks_result.dart';

/// Provides details about existing Network Manager global networks.
Future<GetGlobalNetworksResult> getGlobalNetworks(
  GetGlobalNetworksArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getGlobalNetworks:getGlobalNetworks',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworksResult.fromMap(result);
}
