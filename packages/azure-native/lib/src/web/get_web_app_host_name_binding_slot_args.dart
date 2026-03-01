// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_web_app_host_name_binding_slot_args_doc}
/// Arguments for getWebAppHostNameBindingSlot.
/// {@endtemplate}
/// {@macro pulumi_web_get_web_app_host_name_binding_slot_args_doc}
class GetWebAppHostNameBindingSlotArgs {
  /// Hostname in the hostname binding.
  final pulumi.Input<String> hostName;
  /// Name of the app.
  final pulumi.Input<String> name;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the deployment slot. If a slot is not specified, the API the named binding for the production slot.
  final pulumi.Input<String> slot;

  /// Creates a new [GetWebAppHostNameBindingSlotArgs].
  /// [hostName] Hostname in the hostname binding.
  /// [name] Name of the app.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] Name of the deployment slot. If a slot is not specified, the API the named binding for the production slot.
  GetWebAppHostNameBindingSlotArgs({
    required String hostName,
    required String name,
    required String resourceGroupName,
    required String slot,
  }) :
      hostName = pulumi.Input.asInput<String>(hostName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory GetWebAppHostNameBindingSlotArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppHostNameBindingSlotArgs(
      hostName: map['hostName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      slot: map['slot'] as String,
    );
  }
}

