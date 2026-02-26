import 'package:pulumi/pulumi.dart';
import 'get_global_network_endpoint_group_args2.dart';
import 'get_global_network_endpoint_group_result2.dart';

/// Returns the specified network endpoint group.
Future<GetGlobalNetworkEndpointGroupResult2> getGlobalNetworkEndpointGroup2(
  GetGlobalNetworkEndpointGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkEndpointGroupResult2.fromMap(result);
}
