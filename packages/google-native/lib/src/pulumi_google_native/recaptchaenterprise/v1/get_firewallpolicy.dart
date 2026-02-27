import 'package:pulumi/pulumi.dart' hide Config;
import 'get_firewallpolicy_args.dart';
import 'get_firewallpolicy_result.dart';

/// Returns the specified firewall policy.
Future<GetFirewallpolicyResult> getFirewallpolicy(
  GetFirewallpolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:recaptchaenterprise/v1:getFirewallpolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFirewallpolicyResult.fromMap(result);
}
