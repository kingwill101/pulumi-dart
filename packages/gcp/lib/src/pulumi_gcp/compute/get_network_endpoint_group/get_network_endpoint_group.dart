import 'package:pulumi/pulumi.dart';
import 'get_network_endpoint_group_args.dart';
import 'get_network_endpoint_group_result.dart';

/// Use this data source to access a Network Endpoint Group's attributes.
///
/// The NEG may be found by providing either a `self_link`, or a `name` and a `zone`.
Future<GetNetworkEndpointGroupResult> getNetworkEndpointGroup(
  GetNetworkEndpointGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:compute/getNetworkEndpointGroup:getNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupResult.fromMap(result);
}
