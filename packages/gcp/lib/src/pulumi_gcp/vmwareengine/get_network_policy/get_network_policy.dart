import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_policy_args.dart';
import 'get_network_policy_result.dart';

/// Use this data source to get details about a network policy resource.
///
/// To get more information about network policy, see:
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.networkPolicies)
Future<GetNetworkPolicyResult> getNetworkPolicy(
  GetNetworkPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:vmwareengine/getNetworkPolicy:getNetworkPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPolicyResult.fromMap(result);
}
