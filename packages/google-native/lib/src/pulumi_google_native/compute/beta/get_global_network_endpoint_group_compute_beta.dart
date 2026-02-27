import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_network_endpoint_group_compute_beta_args.dart';
import 'get_global_network_endpoint_group_compute_beta_result.dart';

/// Returns the specified network endpoint group.
Future<GetGlobalNetworkEndpointGroupComputeBetaResult>
    getGlobalNetworkEndpointGroupComputeBeta(
  GetGlobalNetworkEndpointGroupComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkEndpointGroupComputeBetaResult.fromMap(result);
}
