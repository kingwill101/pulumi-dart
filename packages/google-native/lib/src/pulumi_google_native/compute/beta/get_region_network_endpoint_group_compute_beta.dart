import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_network_endpoint_group_compute_beta_args.dart';
import 'get_region_network_endpoint_group_compute_beta_result.dart';

/// Returns the specified network endpoint group.
Future<GetRegionNetworkEndpointGroupComputeBetaResult>
    getRegionNetworkEndpointGroupComputeBeta(
  GetRegionNetworkEndpointGroupComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupComputeBetaResult.fromMap(result);
}
