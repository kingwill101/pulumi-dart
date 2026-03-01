// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_premier_add_on_slot_args_doc}
/// Arguments for getWebAppPremierAddOnSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_premier_add_on_slot_args_doc}
class GetWebAppPremierAddOnSlotArgs {
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Add-on name.
  final pulumi.Input<String> premierAddOnName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get the named add-on for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppPremierAddOnSlotArgs].
  /// [name] Name of the app.
  /// [premierAddOnName] Add-on name.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get the named add-on for the production slot.
  GetWebAppPremierAddOnSlotArgs({
    required String name,
    required String premierAddOnName,
    required String resourceGroupName,
    required String slot,
  }) :
      name = pulumi.Input.asInput<String>(name),
      premierAddOnName = pulumi.Input.asInput<String>(premierAddOnName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'premierAddOnName': premierAddOnName,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppPremierAddOnSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppPremierAddOnSlotArgs(
      name: map['name'] as String,
      premierAddOnName: map['premierAddOnName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      slot: map['slot'] as String,
    );
  }
}

