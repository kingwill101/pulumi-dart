// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_list_dns_forwarding_ruleset_by_virtual_network_args_doc}
/// Arguments for listDnsForwardingRulesetByVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_list_dns_forwarding_ruleset_by_virtual_network_args_doc}
class ListDnsForwardingRulesetByVirtualNetworkArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The maximum number of results to return. If not specified, returns up to 100 results.
  final pulumi.Input<int>? top;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [ListDnsForwardingRulesetByVirtualNetworkArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [top] The maximum number of results to return. If not specified, returns up to 100 results.
  /// [virtualNetworkName] The name of the virtual network.
  const ListDnsForwardingRulesetByVirtualNetworkArgs({
    required this.resourceGroupName,
    this.top,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'top': ?top,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory ListDnsForwardingRulesetByVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return ListDnsForwardingRulesetByVirtualNetworkArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      top: (() { final guardedValue = map['top']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      virtualNetworkName: pulumi.Input.fromValue(map['virtualNetworkName'] as String),
    );
  }
}

