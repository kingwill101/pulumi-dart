import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_endpoint_group_compute_v1_args.dart';
import 'get_network_endpoint_group_compute_v1_result.dart';

/// Returns the specified network endpoint group.
Future<GetNetworkEndpointGroupComputeV1Result> getNetworkEndpointGroupComputeV1(
  GetNetworkEndpointGroupComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupComputeV1Result.fromMap(result);
}
