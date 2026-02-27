import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_args.dart';
import 'get_firewall_result.dart';

/// Returns the specified firewall.
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}
