import 'package:pulumi/pulumi.dart' hide Config;
import 'get_network_endpoint_group_args3.dart';
import 'get_network_endpoint_group_result3.dart';

/// Returns the specified network endpoint group.
Future<GetNetworkEndpointGroupResult3> getNetworkEndpointGroup3(
  GetNetworkEndpointGroupArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkEndpointGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupResult3.fromMap(result);
}
