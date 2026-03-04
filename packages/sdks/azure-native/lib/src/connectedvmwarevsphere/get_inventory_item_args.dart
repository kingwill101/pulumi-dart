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
    required this.inventoryItemName,
    required this.resourceGroupName,
    required this.vcenterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inventoryItemName': inventoryItemName,
      'resourceGroupName': resourceGroupName,
      'vcenterName': vcenterName,
    };
  }

  factory GetInventoryItemArgs.fromMap(Map<String, dynamic> map) {
    return GetInventoryItemArgs(
      inventoryItemName: pulumi.Input.fromValue(
        map['inventoryItemName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      vcenterName: pulumi.Input.fromValue(map['vcenterName'] as String),
    );
  }
}
