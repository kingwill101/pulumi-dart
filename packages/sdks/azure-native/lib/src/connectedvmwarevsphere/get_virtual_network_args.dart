// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_virtual_network_args_doc}
/// Arguments for getVirtualNetwork.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_virtual_network_args_doc}
class GetVirtualNetworkArgs {
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the virtual network resource.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [GetVirtualNetworkArgs].
  /// [resourceGroupName] The Resource Group Name.
  /// [virtualNetworkName] Name of the virtual network resource.
  GetVirtualNetworkArgs({
    required this.resourceGroupName,
    required this.virtualNetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory GetVirtualNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      virtualNetworkName: (map['virtualNetworkName'] as String).input(),
    );
  }
}

