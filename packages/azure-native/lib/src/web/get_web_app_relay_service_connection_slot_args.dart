// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_relay_service_connection_slot_args_doc}
/// Arguments for getWebAppRelayServiceConnectionSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_relay_service_connection_slot_args_doc}
class GetWebAppRelayServiceConnectionSlotArgs {
  /// Name of the hybrid connection.
  final pulumi.Input<String> entityName;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API will get a hybrid connection for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppRelayServiceConnectionSlotArgs].
  /// [entityName] Name of the hybrid connection.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API will get a hybrid connection for the production slot.
  GetWebAppRelayServiceConnectionSlotArgs({
    required String entityName,
    required String name,
    required String resourceGroupName,
    required String slot,
  }) :
      entityName = pulumi.Input.asInput<String>(entityName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityName': entityName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppRelayServiceConnectionSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppRelayServiceConnectionSlotArgs(
      entityName: map['entityName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      slot: map['slot'] as String,
    );
  }
}

