import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_network_args.dart';
import 'get_global_network_result.dart';

/// Provides details about an existing Network Manager global network.
Future<GetGlobalNetworkResult> getGlobalNetwork(
  GetGlobalNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getGlobalNetwork:getGlobalNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkResult.fromMap(result);
}
