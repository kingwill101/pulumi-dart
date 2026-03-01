// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_virtual_wan_args_doc}
/// Arguments for getVirtualWan.
/// {@endtemplate}
/// {@macro pulumi_network_get_virtual_wan_args_doc}
class GetVirtualWanArgs {
  /// The resource group name of the VirtualWan.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualWAN being retrieved.
  final pulumi.Input<String> virtualWANName;

  /// Creates a new [GetVirtualWanArgs].
  /// [resourceGroupName] The resource group name of the VirtualWan.
  /// [virtualWANName] The name of the VirtualWAN being retrieved.
  GetVirtualWanArgs({
    required String resourceGroupName,
    required String virtualWANName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualWANName = pulumi.Input.asInput<String>(virtualWANName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualWANName': virtualWANName,
    };
  }

  factory GetVirtualWanArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualWanArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      virtualWANName: map['virtualWANName'] as String,
    );
  }
}

