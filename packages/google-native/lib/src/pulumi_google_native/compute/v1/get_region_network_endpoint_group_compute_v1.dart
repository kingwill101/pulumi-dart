import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_network_endpoint_group_compute_v1_args.dart';
import 'get_region_network_endpoint_group_compute_v1_result.dart';

/// Returns the specified network endpoint group.
Future<GetRegionNetworkEndpointGroupComputeV1Result>
    getRegionNetworkEndpointGroupComputeV1(
  GetRegionNetworkEndpointGroupComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupComputeV1Result.fromMap(result);
}
