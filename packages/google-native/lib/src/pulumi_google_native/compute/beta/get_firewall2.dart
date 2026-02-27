import 'package:pulumi/pulumi.dart' hide Config;
import 'get_firewall_args2.dart';
import 'get_firewall_result2.dart';

/// Returns the specified firewall.
Future<GetFirewallResult2> getFirewall2(
  GetFirewallArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getFirewall',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult2.fromMap(result);
}
