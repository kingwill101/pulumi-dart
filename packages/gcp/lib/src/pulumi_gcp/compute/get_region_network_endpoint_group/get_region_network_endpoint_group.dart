import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_network_endpoint_group_args.dart';
import 'get_region_network_endpoint_group_result.dart';

/// Use this data source to access a Region Network Endpoint Group's attributes.
///
/// The RNEG may be found by providing either a `self_link`, or a `name` and a `region`.
Future<GetRegionNetworkEndpointGroupResult> getRegionNetworkEndpointGroup(
  GetRegionNetworkEndpointGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getRegionNetworkEndpointGroup:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupResult.fromMap(result);
}
