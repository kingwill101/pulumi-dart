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
      inventoryItemName: (() { final guardedValue = map['inventoryItemName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inventoryType: pulumi.Input.fromValue(map['inventoryType'] as String),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceId: (() { final guardedValue = map['managedResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      moName: (() { final guardedValue = map['moName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      moRefId: (() { final guardedValue = map['moRefId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vcenterName: pulumi.Input.fromValue(map['vcenterName'] as String),
    );
  }
}

