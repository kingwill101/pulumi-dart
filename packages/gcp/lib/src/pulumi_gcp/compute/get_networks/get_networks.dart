import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networks_args.dart';
import 'get_networks_result.dart';

/// List all networks in a specified Google Cloud project.
Future<GetNetworksResult> getNetworks(
  GetNetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworks:getNetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworksResult.fromMap(result);
}
