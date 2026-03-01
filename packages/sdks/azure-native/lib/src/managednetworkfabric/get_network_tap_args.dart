// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_network_tap_args_doc}
/// Arguments for getNetworkTap.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_network_tap_args_doc}
class GetNetworkTapArgs {
  /// Name of the Network Tap.
  final pulumi.Input<String> networkTapName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkTapArgs].
  /// [networkTapName] Name of the Network Tap.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNetworkTapArgs({
    required pulumi.Output<String> networkTapName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      networkTapName = pulumi.Input.asInput<String>(networkTapName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkTapName': networkTapName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkTapArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkTapArgs(
      networkTapName: pulumi.Output.create<String>(map['networkTapName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

