import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_global_network_endpoint_group_args.dart';
import 'get_global_network_endpoint_group_result.dart';

/// Returns the specified network endpoint group.
Future<GetGlobalNetworkEndpointGroupResult> getGlobalNetworkEndpointGroup(
  GetGlobalNetworkEndpointGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkEndpointGroupResult.fromMap(result);
}
