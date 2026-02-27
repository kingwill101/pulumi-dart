import 'package:pulumi/pulumi.dart';
import 'get_resolver_firewall_domain_list_args.dart';
import 'get_resolver_firewall_domain_list_result.dart';

/// `aws.route53.ResolverFirewallDomainList` Retrieves the specified firewall domain list.
///
/// This data source allows to retrieve details about a specific a Route 53 Resolver DNS Firewall domain list.
///
/// ## Example Usage
///
/// The following example shows how to get a firewall domain list from its ID.
Future<GetResolverFirewallDomainListResult> getResolverFirewallDomainList(
  GetResolverFirewallDomainListArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:route53/getResolverFirewallDomainList:getResolverFirewallDomainList',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetResolverFirewallDomainListResult.fromMap(result);
}
