// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_metadata_slot_args_doc}
/// Arguments for listWebAppMetadataSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_metadata_slot_args_doc}
class ListWebAppMetadataSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get the metadata for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppMetadataSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the metadata for the production slot.
  ListWebAppMetadataSlotArgs({
    required String name,
    required String resourceGroupName,
    required String slot,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory ListWebAppMetadataSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppMetadataSlotArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      slot: map['slot'] as String,
    );
  }
}

