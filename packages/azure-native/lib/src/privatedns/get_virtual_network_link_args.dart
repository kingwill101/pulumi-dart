// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatedns_get_virtual_network_link_args_doc}
/// Arguments for getVirtualNetworkLink.
/// {@endtemplate}
/// {@macro pulumi_privatedns_get_virtual_network_link_args_doc}
class GetVirtualNetworkLinkArgs {
  /// The name of the Private DNS zone (without a terminating dot).
  final pulumi.Input<String> privateZoneName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual network link.
  final pulumi.Input<String> virtualNetworkLinkName;

  /// Creates a new [GetVirtualNetworkLinkArgs].
  /// [privateZoneName] The name of the Private DNS zone (without a terminating dot).
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualNetworkLinkName] The name of the virtual network link.
  GetVirtualNetworkLinkArgs({
    required String privateZoneName,
    required String resourceGroupName,
    required String virtualNetworkLinkName,
  }) :
      privateZoneName = pulumi.Input.asInput<String>(privateZoneName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualNetworkLinkName = pulumi.Input.asInput<String>(virtualNetworkLinkName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateZoneName': privateZoneName,
      'resourceGroupName': resourceGroupName,
      'virtualNetworkLinkName': virtualNetworkLinkName,
    };
  }

  factory GetVirtualNetworkLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkLinkArgs(
      privateZoneName: map['privateZoneName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualNetworkLinkName: map['virtualNetworkLinkName'] as String,
    );
  }
}

