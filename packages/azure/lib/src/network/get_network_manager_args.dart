// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_network_manager_get_network_manager_args_doc}
/// Arguments for getNetworkManager.
/// {@endtemplate}
/// {@macro pulumi_network_get_network_manager_get_network_manager_args_doc}
class GetNetworkManagerArgs {
  /// The name of the Network Manager.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where the Network Manager exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNetworkManagerArgs].
  /// [name] The name of the Network Manager.
  /// [resourceGroupName] The Name of the Resource Group where the Network Manager exists.
  GetNetworkManagerArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNetworkManagerArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

