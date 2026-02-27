import 'package:pulumi/pulumi.dart' hide Config;
import 'get_region_network_endpoint_group_args3.dart';
import 'get_region_network_endpoint_group_result3.dart';

/// Returns the specified network endpoint group.
Future<GetRegionNetworkEndpointGroupResult3> getRegionNetworkEndpointGroup3(
  GetRegionNetworkEndpointGroupArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupResult3.fromMap(result);
}
