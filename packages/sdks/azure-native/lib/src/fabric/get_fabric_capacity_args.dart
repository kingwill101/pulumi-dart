// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fabric_get_fabric_capacity_args_doc}
/// Arguments for getFabricCapacity.
/// {@endtemplate}
/// {@macro pulumi_fabric_get_fabric_capacity_args_doc}
class GetFabricCapacityArgs {
  /// The name of the Microsoft Fabric capacity. It must be a minimum of 3 characters, and a maximum of 63.
  final pulumi.Input<String> capacityName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetFabricCapacityArgs].
  /// [capacityName] The name of the Microsoft Fabric capacity. It must be a minimum of 3 characters, and a maximum of 63.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetFabricCapacityArgs({
    required this.capacityName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityName': capacityName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetFabricCapacityArgs.fromMap(Map<String, dynamic> map) {
    return GetFabricCapacityArgs(
      capacityName: pulumi.Input.fromValue(map['capacityName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

