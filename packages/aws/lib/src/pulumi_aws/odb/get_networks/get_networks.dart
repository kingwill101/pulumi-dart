import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_networks_args.dart';
import 'get_networks_result.dart';

/// Data source for to retrieve networks from AWS for Oracle Database@AWS.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetNetworksResult> getNetworks(
  GetNetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:odb/getNetworks:getNetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworksResult.fromMap(result);
}
