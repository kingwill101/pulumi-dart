import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_policy_args.dart';
import 'get_network_policy_result.dart';

/// Retrieves a `NetworkPolicy` resource by its resource name.
Future<GetNetworkPolicyResult> getNetworkPolicy(
  GetNetworkPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getNetworkPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPolicyResult.fromMap(result);
}
