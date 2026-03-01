// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_neighbor_group_args_doc}
/// Arguments for getNeighborGroup.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_neighbor_group_args_doc}
class GetNeighborGroupArgs {
  /// Name of the Neighbor Group.
  final pulumi.Input<String> neighborGroupName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNeighborGroupArgs].
  /// [neighborGroupName] Name of the Neighbor Group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNeighborGroupArgs({
    required String neighborGroupName,
    required String resourceGroupName,
  }) :
      neighborGroupName = pulumi.Input.asInput<String>(neighborGroupName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'neighborGroupName': neighborGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNeighborGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetNeighborGroupArgs(
      neighborGroupName: map['neighborGroupName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

