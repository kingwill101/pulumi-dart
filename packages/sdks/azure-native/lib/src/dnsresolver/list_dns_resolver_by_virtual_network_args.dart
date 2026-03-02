// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dnsresolver_list_dns_resolver_by_virtual_network_args_doc}
/// Arguments for listDnsResolverByVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_dnsresolver_list_dns_resolver_by_virtual_network_args_doc}
class ListDnsResolverByVirtualNetworkArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The maximum number of results to return. If not specified, returns up to 100 results.
  final pulumi.Input<int>? top;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [ListDnsResolverByVirtualNetworkArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [top] The maximum number of results to return. If not specified, returns up to 100 results.
  /// [virtualNetworkName] The name of the virtual network.
  ListDnsResolverByVirtualNetworkArgs({
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

  factory ListDnsResolverByVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return ListDnsResolverByVirtualNetworkArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      top: map['top'] == null ? null : (map['top'] as int).input(),
      virtualNetworkName: (map['virtualNetworkName'] as String).input(),
    );
  }
}

