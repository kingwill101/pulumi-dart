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
    required String dnsForwardingRulesetName,
    required String resourceGroupName,
    required String virtualNetworkLinkName,
  }) :
      dnsForwardingRulesetName = pulumi.Input.asInput<String>(dnsForwardingRulesetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkLinkName = pulumi.Input.asInput<String>(virtualNetworkLinkName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetName': dnsForwardingRulesetName,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkLinkName': virtualNetworkLinkName,
    };
  }

  factory GetPrivateResolverVirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateResolverVirtualNetworkLinkArgs(
      dnsForwardingRulesetName: map['dnsForwardingRulesetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualNetworkLinkName: map['virtualNetworkLinkName'] as String,
    );
  }
}

