// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_inventory_item_args_doc}
/// Arguments for getInventoryItem.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_inventory_item_args_doc}
class GetInventoryItemArgs {
  /// Name of the inventoryItem.
  final pulumi.Input<String> inventoryItemName;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the vCenter.
  final pulumi.Input<String> vcenterName;

  /// Creates a new [GetInventoryItemArgs].
  /// [inventoryItemName] Name of the inventoryItem.
  /// [resourceGroupName] The Resource Group Name.
  /// [vcenterName] Name of the vCenter.
  GetInventoryItemArgs({
    required pulumi.Output<String> inventoryItemName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vcenterName,
  }) :
      inventoryItemName = pulumi.Input.asInput<String>(inventoryItemName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vcenterName = pulumi.Input.asInput<String>(vcenterName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inventoryItemName': inventoryItemName,
      'resourceGroupName': resourceGroupName,
      'vcenterName': vcenterName,
    };
  }

  factory GetInventoryItemArgs.fromMap(Map<String, dynamic> map) {
    return GetInventoryItemArgs(
      inventoryItemName: pulumi.Output.create<String>(map['inventoryItemName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vcenterName: pulumi.Output.create<String>(map['vcenterName'] as String),
    );
  }
}

