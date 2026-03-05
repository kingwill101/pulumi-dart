// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_get_private_resolver_virtual_network_link_args_doc}
/// Arguments for getPrivateResolverVirtualNetworkLink.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_get_private_resolver_virtual_network_link_args_doc}
class GetPrivateResolverVirtualNetworkLinkArgs {
  /// The name of the DNS forwarding ruleset.
  final pulumi.Input<String> dnsForwardingRulesetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network link.
  final pulumi.Input<String> virtualNetworkLinkName;

  /// Creates a new [GetPrivateResolverVirtualNetworkLinkArgs].
  /// [dnsForwardingRulesetName] The name of the DNS forwarding ruleset.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualNetworkLinkName] The name of the virtual network link.
  GetPrivateResolverVirtualNetworkLinkArgs({
    required this.dnsForwardingRulesetName,
    required this.resourceGroupName,
    required this.virtualNetworkLinkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetName': dnsForwardingRulesetName,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkLinkName': virtualNetworkLinkName,
    };
  }

  factory GetPrivateResolverVirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateResolverVirtualNetworkLinkArgs(
      dnsForwardingRulesetName: pulumi.Input.fromValue(map['dnsForwardingRulesetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualNetworkLinkName: pulumi.Input.fromValue(map['virtualNetworkLinkName'] as String),
    );
  }
}

