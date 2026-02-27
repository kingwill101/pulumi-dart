import 'package:pulumi/pulumi.dart';
import 'get_region_network_endpoint_group_args.dart';
import 'get_region_network_endpoint_group_result.dart';

/// Use this data source to access a Region Network Endpoint Group's attributes.
///
/// The RNEG may be found by providing either a `self_link`, or a `name` and a `region`.
Future<GetRegionNetworkEndpointGroupResult> getRegionNetworkEndpointGroup(
  GetRegionNetworkEndpointGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionNetworkEndpointGroup:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupResult.fromMap(result);
}
