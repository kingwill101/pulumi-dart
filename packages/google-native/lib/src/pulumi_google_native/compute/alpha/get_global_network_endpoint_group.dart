import 'package:pulumi/pulumi.dart';
import 'get_global_network_endpoint_group_args.dart';
import 'get_global_network_endpoint_group_result.dart';

/// Returns the specified network endpoint group.
Future<GetGlobalNetworkEndpointGroupResult> getGlobalNetworkEndpointGroup(
  GetGlobalNetworkEndpointGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkEndpointGroupResult.fromMap(result);
}
