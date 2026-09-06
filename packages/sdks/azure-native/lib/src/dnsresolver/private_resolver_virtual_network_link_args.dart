// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// {@template pulumi_dnsresolver_private_resolver_virtual_network_link_args_doc}
/// The set of arguments for PrivateResolverVirtualNetworkLink.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_private_resolver_virtual_network_link_args_doc}
class PrivateResolverVirtualNetworkLinkArgs {
  /// The name of the DNS forwarding ruleset.
  final pulumi.Input<String> dnsForwardingRulesetName;
  /// Metadata attached to the virtual network link.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the virtual network. This cannot be changed after creation.
  final pulumi.Input<SubResource> virtualNetwork;
  /// The name of the virtual network link.
  final pulumi.Input<String?>? virtualNetworkLinkName;

  /// Creates a new [PrivateResolverVirtualNetworkLinkArgs].
  /// [dnsForwardingRulesetName] The name of the DNS forwarding ruleset.
  /// [metadata] Metadata attached to the virtual network link.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualNetwork] The reference to the virtual network. This cannot be changed after creation.
  /// [virtualNetworkLinkName] The name of the virtual network link.
  const PrivateResolverVirtualNetworkLinkArgs({
    required this.dnsForwardingRulesetName,
    this.metadata,
    required this.resourceGroupName,
    required this.virtualNetwork,
    this.virtualNetworkLinkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsForwardingRulesetName': dnsForwardingRulesetName,
      'metadata': ?metadata,
      'resourceGroupName': resourceGroupName,
      'virtualNetwork': pulumi.Input.mapInputValue<SubResource, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
      'virtualNetworkLinkName': ?virtualNetworkLinkName,
    };
  }

  factory PrivateResolverVirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return PrivateResolverVirtualNetworkLinkArgs(
      dnsForwardingRulesetName: pulumi.Input.fromValue(map['dnsForwardingRulesetName'] as String),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualNetwork: pulumi.Input.fromValue(SubResource.fromMap((map['virtualNetwork']! as Map).cast<String, dynamic>())),
      virtualNetworkLinkName: (() { final guardedValue = map['virtualNetworkLinkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
