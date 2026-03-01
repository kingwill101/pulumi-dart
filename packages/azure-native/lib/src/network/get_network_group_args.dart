// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_group_args_doc}
/// Arguments for getNetworkGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_group_args_doc}
class GetNetworkGroupArgs {
  /// The name of the network group.
  final pulumi.Input<String> networkGroupName;
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkGroupArgs].
  /// [networkGroupName] The name of the network group.
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkGroupArgs({
    required String networkGroupName,
    required String networkManagerName,
    required String resourceGroupName,
  }) :
      networkGroupName = pulumi.Input.asInput<String>(networkGroupName),
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkGroupName': networkGroupName,
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkGroupArgs(
      networkGroupName: map['networkGroupName'] as String,
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

