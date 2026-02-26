import 'package:pulumi/pulumi.dart';
import 'get_global_network_endpoint_group_args3.dart';
import 'get_global_network_endpoint_group_result3.dart';

/// Returns the specified network endpoint group.
Future<GetGlobalNetworkEndpointGroupResult3> getGlobalNetworkEndpointGroup3(
  GetGlobalNetworkEndpointGroupArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkEndpointGroupResult3.fromMap(result);
}
