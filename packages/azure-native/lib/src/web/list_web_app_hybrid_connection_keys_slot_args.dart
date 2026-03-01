// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_list_web_app_hybrid_connection_keys_slot_args_doc}
/// Arguments for listWebAppHybridConnectionKeysSlot.
/// {@endtemplate}
/// {@macro pulumi_web_list_web_app_hybrid_connection_keys_slot_args_doc}
class ListWebAppHybridConnectionKeysSlotArgs {
  /// The name of the web app.
  final pulumi.Input<String> name;
  /// The namespace for this hybrid connection.
  final pulumi.Input<String> namespaceName;
  /// The relay name for this hybrid connection.
  final pulumi.Input<String> relayName;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the slot for the web app.
  final pulumi.Input<String> slot;

  /// Creates a new [ListWebAppHybridConnectionKeysSlotArgs].
  /// [name] The name of the web app.
  /// [namespaceName] The namespace for this hybrid connection.
  /// [relayName] The relay name for this hybrid connection.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [slot] The name of the slot for the web app.
  ListWebAppHybridConnectionKeysSlotArgs({
    required String name,
    required String namespaceName,
    required String relayName,
    required String resourceGroupName,
    required String slot,
  }) :
      name = pulumi.Input.asInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      relayName = pulumi.Input.asInput<String>(relayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      slot = pulumi.Input.asInput<String>(slot);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': namespaceName,
      'relayName': relayName,
      'resourceGroupName': resourceGroupName,
      'slot': slot,
    };
  }

  factory ListWebAppHybridConnectionKeysSlotArgs.fromMap(Map<String, dynamic> map) {
    return ListWebAppHybridConnectionKeysSlotArgs(
      name: map['name'] as String,
      namespaceName: map['namespaceName'] as String,
      relayName: map['relayName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      slot: map['slot'] as String,
    );
  }
}

