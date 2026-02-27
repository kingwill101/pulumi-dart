import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_compute_v1_args.dart';
import 'get_firewall_policy_compute_v1_result.dart';

/// Returns the specified firewall policy.
Future<GetFirewallPolicyComputeV1Result> getFirewallPolicyComputeV1(
  GetFirewallPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyComputeV1Result.fromMap(result);
}
