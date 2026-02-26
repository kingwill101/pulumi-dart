import 'package:pulumi/pulumi.dart';
import 'get_firewall_args3.dart';
import 'get_firewall_result3.dart';

/// Returns the specified firewall.
Future<GetFirewallResult3> getFirewall3(
  GetFirewallArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getFirewall',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult3.fromMap(result);
}
