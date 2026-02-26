import 'package:pulumi/pulumi.dart';
import 'get_region_network_endpoint_group_args.dart';
import 'get_region_network_endpoint_group_result.dart';

/// Returns the specified network endpoint group.
Future<GetRegionNetworkEndpointGroupResult> getRegionNetworkEndpointGroup(
  GetRegionNetworkEndpointGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupResult.fromMap(result);
}
