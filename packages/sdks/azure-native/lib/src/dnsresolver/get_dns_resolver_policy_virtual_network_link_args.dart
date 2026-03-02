// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_get_dns_resolver_policy_virtual_network_link_args_doc}
/// Arguments for getDnsResolverPolicyVirtualNetworkLink.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_get_dns_resolver_policy_virtual_network_link_args_doc}
class GetDnsResolverPolicyVirtualNetworkLinkArgs {
  /// The name of the DNS resolver policy.
  final pulumi.Input<String> dnsResolverPolicyName;
  /// The name of the DNS resolver policy virtual network link for the DNS resolver policy.
  final pulumi.Input<String> dnsResolverPolicyVirtualNetworkLinkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDnsResolverPolicyVirtualNetworkLinkArgs].
  /// [dnsResolverPolicyName] The name of the DNS resolver policy.
  /// [dnsResolverPolicyVirtualNetworkLinkName] The name of the DNS resolver policy virtual network link for the DNS resolver policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDnsResolverPolicyVirtualNetworkLinkArgs({
    required this.dnsResolverPolicyName,
    required this.dnsResolverPolicyVirtualNetworkLinkName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverPolicyName': dnsResolverPolicyName,
      'dnsResolverPolicyVirtualNetworkLinkName': dnsResolverPolicyVirtualNetworkLinkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDnsResolverPolicyVirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsResolverPolicyVirtualNetworkLinkArgs(
      dnsResolverPolicyName: (map['dnsResolverPolicyName'] as String).input(),
      dnsResolverPolicyVirtualNetworkLinkName: (map['dnsResolverPolicyVirtualNetworkLinkName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

