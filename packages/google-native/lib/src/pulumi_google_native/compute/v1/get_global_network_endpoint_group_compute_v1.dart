import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_network_endpoint_group_compute_v1_args.dart';
import 'get_global_network_endpoint_group_compute_v1_result.dart';

/// Returns the specified network endpoint group.
Future<GetGlobalNetworkEndpointGroupComputeV1Result>
    getGlobalNetworkEndpointGroupComputeV1(
  GetGlobalNetworkEndpointGroupComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkEndpointGroupComputeV1Result.fromMap(result);
}
