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
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<int>? top,
    required pulumi.Output<String> virtualNetworkName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      top = pulumi.Input.asOptionalInput<int>(top),
      virtualNetworkName = pulumi.Input.asInput<String>(virtualNetworkName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'top': ?top,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory ListDnsResolverByVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return ListDnsResolverByVirtualNetworkArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      top: map['top'] == null ? null : pulumi.Output.create<int>(map['top'] as int),
      virtualNetworkName: pulumi.Output.create<String>(map['virtualNetworkName'] as String),
    );
  }
}

