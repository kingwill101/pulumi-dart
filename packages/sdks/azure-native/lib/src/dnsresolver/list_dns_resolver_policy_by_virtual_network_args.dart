// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_list_dns_resolver_policy_by_virtual_network_args_doc}
/// Arguments for listDnsResolverPolicyByVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_list_dns_resolver_policy_by_virtual_network_args_doc}
class ListDnsResolverPolicyByVirtualNetworkArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [ListDnsResolverPolicyByVirtualNetworkArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualNetworkName] The name of the virtual network.
  ListDnsResolverPolicyByVirtualNetworkArgs({
    required this.resourceGroupName,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory ListDnsResolverPolicyByVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return ListDnsResolverPolicyByVirtualNetworkArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualNetworkName: pulumi.Input.fromValue(map['virtualNetworkName'] as String),
    );
  }
}

