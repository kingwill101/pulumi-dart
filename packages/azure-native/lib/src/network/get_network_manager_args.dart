// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_manager_args_doc}
/// Arguments for getNetworkManager.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_manager_args_doc}
class GetNetworkManagerArgs {
  /// The name of the network manager.
  final pulumi.Input<String> networkManagerName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkManagerArgs].
  /// [networkManagerName] The name of the network manager.
  /// [resourceGroupName] The name of the resource group.
  GetNetworkManagerArgs({
    required String networkManagerName,
    required String resourceGroupName,
  }) :
      networkManagerName = pulumi.Input.asInput<String>(networkManagerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkManagerName': networkManagerName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerArgs(
      networkManagerName: map['networkManagerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

