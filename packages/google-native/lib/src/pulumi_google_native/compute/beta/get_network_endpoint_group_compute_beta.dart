import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_endpoint_group_compute_beta_args.dart';
import 'get_network_endpoint_group_compute_beta_result.dart';

/// Returns the specified network endpoint group.
Future<GetNetworkEndpointGroupComputeBetaResult>
    getNetworkEndpointGroupComputeBeta(
  GetNetworkEndpointGroupComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupComputeBetaResult.fromMap(result);
}
