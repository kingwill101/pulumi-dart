import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewallpolicy_args.dart';
import 'get_firewallpolicy_result.dart';

/// Returns the specified firewall policy.
Future<GetFirewallpolicyResult> getFirewallpolicy(
  GetFirewallpolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:recaptchaenterprise/v1:getFirewallpolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallpolicyResult.fromMap(result);
}
