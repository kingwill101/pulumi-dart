import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_network_endpoint_group_args.dart';
import 'get_region_network_endpoint_group_result.dart';

/// Returns the specified network endpoint group.
Future<GetRegionNetworkEndpointGroupResult> getRegionNetworkEndpointGroup(
  GetRegionNetworkEndpointGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupResult.fromMap(result);
}
