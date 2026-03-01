// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_publishing_credentials_slot_args_doc}
/// Arguments for listWebAppPublishingCredentialsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_publishing_credentials_slot_args_doc}
class ListWebAppPublishingCredentialsSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get the publishing credentials for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppPublishingCredentialsSlotArgs].
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the publishing credentials for the production slot.
  ListWebAppPublishingCredentialsSlotArgs({
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

  factory ListWebAppPublishingCredentialsSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppPublishingCredentialsSlotArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      slot: map['slot'] as String,
    );
  }
}

