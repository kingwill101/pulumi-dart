// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_rack_args_doc}
/// Arguments for getNetworkRack.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_rack_args_doc}
class GetNetworkRackArgs {
  /// Name of the Network Rack.
  final pulumi.Input<String> networkRackName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkRackArgs].
  /// [networkRackName] Name of the Network Rack.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkRackArgs({
    required this.networkRackName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkRackName': networkRackName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkRackArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkRackArgs(
      networkRackName: pulumi.Input.fromValue(map['networkRackName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
