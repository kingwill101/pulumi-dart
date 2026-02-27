import 'package:pulumi/pulumi.dart' hide Config;
import 'get_network_policy_args.dart';
import 'get_network_policy_result.dart';

/// Retrieves a `NetworkPolicy` resource by its resource name.
Future<GetNetworkPolicyResult> getNetworkPolicy(
  GetNetworkPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getNetworkPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNetworkPolicyResult.fromMap(result);
}
