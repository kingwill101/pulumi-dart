import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_compute_beta_args.dart';
import 'get_firewall_compute_beta_result.dart';

/// Returns the specified firewall.
Future<GetFirewallComputeBetaResult> getFirewallComputeBeta(
  GetFirewallComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallComputeBetaResult.fromMap(result);
}
