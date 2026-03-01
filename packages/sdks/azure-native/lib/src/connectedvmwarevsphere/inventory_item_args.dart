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
    pulumi.Output<String>? inventoryItemName,
    required pulumi.Output<String> inventoryType,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? managedResourceId,
    pulumi.Output<String>? moName,
    pulumi.Output<String>? moRefId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vcenterName,
  }) :
      inventoryItemName = pulumi.Input.asOptionalInput<String>(inventoryItemName),
      inventoryType = pulumi.Input.asInput<String>(inventoryType),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      managedResourceId = pulumi.Input.asOptionalInput<String>(managedResourceId),
      moName = pulumi.Input.asOptionalInput<String>(moName),
      moRefId = pulumi.Input.asOptionalInput<String>(moRefId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vcenterName = pulumi.Input.asInput<String>(vcenterName);

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
      inventoryItemName: map['inventoryItemName'] == null ? null : pulumi.Output.create<String>(map['inventoryItemName'] as String),
      inventoryType: pulumi.Output.create<String>(map['inventoryType'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      managedResourceId: map['managedResourceId'] == null ? null : pulumi.Output.create<String>(map['managedResourceId'] as String),
      moName: map['moName'] == null ? null : pulumi.Output.create<String>(map['moName'] as String),
      moRefId: map['moRefId'] == null ? null : pulumi.Output.create<String>(map['moRefId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vcenterName: pulumi.Output.create<String>(map['vcenterName'] as String),
    );
  }
}

