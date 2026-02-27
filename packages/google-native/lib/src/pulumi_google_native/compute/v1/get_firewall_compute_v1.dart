import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_compute_v1_args.dart';
import 'get_firewall_compute_v1_result.dart';

/// Returns the specified firewall.
Future<GetFirewallComputeV1Result> getFirewallComputeV1(
  GetFirewallComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallComputeV1Result.fromMap(result);
}
