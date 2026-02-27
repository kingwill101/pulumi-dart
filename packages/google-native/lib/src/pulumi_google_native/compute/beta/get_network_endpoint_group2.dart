import 'package:pulumi/pulumi.dart' hide Config;
import 'get_network_endpoint_group_args2.dart';
import 'get_network_endpoint_group_result2.dart';

/// Returns the specified network endpoint group.
Future<GetNetworkEndpointGroupResult2> getNetworkEndpointGroup2(
  GetNetworkEndpointGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupResult2.fromMap(result);
}
