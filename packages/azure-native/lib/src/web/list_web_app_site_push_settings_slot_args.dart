// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_site_push_settings_slot_args_doc}
/// Arguments for listWebAppSitePushSettingsSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_site_push_settings_slot_args_doc}
class ListWebAppSitePushSettingsSlotArgs {
  /// Name of web app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of web app slot. If not specified then will default to production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppSitePushSettingsSlotArgs].
  /// [name] Name of web app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of web app slot. If not specified then will default to production slot.
  ListWebAppSitePushSettingsSlotArgs({
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

  factory ListWebAppSitePushSettingsSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppSitePushSettingsSlotArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      slot: map['slot'] as String,
    );
  }
}

