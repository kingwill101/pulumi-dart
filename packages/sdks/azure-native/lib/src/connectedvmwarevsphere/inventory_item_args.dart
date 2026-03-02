// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_inventory_item_args_doc}
/// The set of arguments for InventoryItem.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_inventory_item_args_doc}
class InventoryItemArgs {
  /// Name of the inventoryItem.
  final pulumi.Input<String>? inventoryItemName;
  /// They inventory type.
  final pulumi.Input<String> inventoryType;
  /// Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  final pulumi.Input<String>? kind;
  /// Gets or sets the tracked resource id corresponding to the inventory resource.
  final pulumi.Input<String>? managedResourceId;
  /// Gets or sets the vCenter Managed Object name for the inventory item.
  final pulumi.Input<String>? moName;
  /// Gets or sets the MoRef (Managed Object Reference) ID for the inventory item.
  final pulumi.Input<String>? moRefId;
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the vCenter.
  final pulumi.Input<String> vcenterName;

  /// Creates a new [InventoryItemArgs].
  /// [inventoryItemName] Name of the inventoryItem.
  /// [inventoryType] They inventory type.
  /// [kind] Metadata used by portal/tooling/etc to render different UX experiences for resources of the same type; e.g. ApiApps are a kind of Microsoft.Web/sites type.  If supported, the resource provider must validate and persist this value.
  /// [managedResourceId] Gets or sets the tracked resource id corresponding to the inventory resource.
  /// [moName] Gets or sets the vCenter Managed Object name for the inventory item.
  /// [moRefId] Gets or sets the MoRef (Managed Object Reference) ID for the inventory item.
  /// [resourceGroupName] The Resource Group Name.
  /// [vcenterName] Name of the vCenter.
  InventoryItemArgs({
    this.inventoryItemName,
    required this.inventoryType,
    this.kind,
    this.managedResourceId,
    this.moName,
    this.moRefId,
    required this.resourceGroupName,
    required this.vcenterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inventoryItemName': ?inventoryItemName,
      'inventoryType': inventoryType,
      'kind': ?kind,
      'managedResourceId': ?managedResourceId,
      'moName': ?moName,
      'moRefId': ?moRefId,
      'resourceGroupName': resourceGroupName,
      'vcenterName': vcenterName,
    };
  }

  factory InventoryItemArgs.fromMap(Map<String, dynamic> map) {
    return InventoryItemArgs(
      inventoryItemName: map['inventoryItemName'] == null ? null : (map['inventoryItemName']! as String).input(),
      inventoryType: (map['inventoryType'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      managedResourceId: map['managedResourceId'] == null ? null : (map['managedResourceId']! as String).input(),
      moName: map['moName'] == null ? null : (map['moName']! as String).input(),
      moRefId: map['moRefId'] == null ? null : (map['moRefId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      vcenterName: (map['vcenterName'] as String).input(),
    );
  }
}

