// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_dnsresolver_dns_resolver_policy_virtual_network_link_args_doc}
/// The set of arguments for DnsResolverPolicyVirtualNetworkLink.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_dns_resolver_policy_virtual_network_link_args_doc}
class DnsResolverPolicyVirtualNetworkLinkArgs {
  /// The name of the DNS resolver policy.
  final pulumi.Input<String> dnsResolverPolicyName;
  /// The name of the DNS resolver policy virtual network link for the DNS resolver policy.
  final pulumi.Input<String?>? dnsResolverPolicyVirtualNetworkLinkName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The reference to the virtual network. This cannot be changed after creation.
  final pulumi.Input<SubResource> virtualNetwork;

  /// Creates a new [DnsResolverPolicyVirtualNetworkLinkArgs].
  /// [dnsResolverPolicyName] The name of the DNS resolver policy.
  /// [dnsResolverPolicyVirtualNetworkLinkName] The name of the DNS resolver policy virtual network link for the DNS resolver policy.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [virtualNetwork] The reference to the virtual network. This cannot be changed after creation.
  const DnsResolverPolicyVirtualNetworkLinkArgs({
    required this.dnsResolverPolicyName,
    this.dnsResolverPolicyVirtualNetworkLinkName,
    this.location,
    required this.resourceGroupName,
    this.tags,
    required this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsResolverPolicyName': dnsResolverPolicyName,
      'dnsResolverPolicyVirtualNetworkLinkName': ?dnsResolverPolicyVirtualNetworkLinkName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'virtualNetwork': pulumi.Input.mapInputValue<SubResource, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
    };
  }

  factory DnsResolverPolicyVirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return DnsResolverPolicyVirtualNetworkLinkArgs(
      dnsResolverPolicyName: pulumi.Input.fromValue(map['dnsResolverPolicyName'] as String),
      dnsResolverPolicyVirtualNetworkLinkName: (() { final guardedValue = map['dnsResolverPolicyVirtualNetworkLinkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualNetwork: pulumi.Input.fromValue(SubResource.fromMap((map['virtualNetwork']! as Map).cast<String, dynamic>())),
    );
  }
}
