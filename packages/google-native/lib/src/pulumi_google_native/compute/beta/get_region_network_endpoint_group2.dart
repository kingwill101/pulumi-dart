import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_network_endpoint_group_args2.dart';
import 'get_region_network_endpoint_group_result2.dart';

/// Returns the specified network endpoint group.
Future<GetRegionNetworkEndpointGroupResult2> getRegionNetworkEndpointGroup2(
  GetRegionNetworkEndpointGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupResult2.fromMap(result);
}
