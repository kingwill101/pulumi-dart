import 'package:pulumi/pulumi.dart';
import 'get_firewall_args.dart';
import 'get_firewall_result.dart';

/// Returns the specified firewall.
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getFirewall',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}
