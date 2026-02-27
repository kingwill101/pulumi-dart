import 'package:pulumi/pulumi.dart';
import 'get_resolver_firewall_config_args.dart';
import 'get_resolver_firewall_config_result.dart';

/// `aws.route53.ResolverFirewallConfig` provides details about a specific a Route 53 Resolver DNS Firewall config.
///
/// This data source allows to find a details about a specific a Route 53 Resolver DNS Firewall config.
///
/// ## Example Usage
///
/// The following example shows how to get a firewall config using the VPC ID.
Future<GetResolverFirewallConfigResult> getResolverFirewallConfig(
  GetResolverFirewallConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallConfig:getResolverFirewallConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallConfigResult.fromMap(result);
}
