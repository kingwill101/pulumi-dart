// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_capability_capability_args_doc}
/// The set of arguments for Capability.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_capability_capability_args_doc}
class CapabilityArgs {
  /// Capability name that should be updated on the folder.
  final pulumi.Input<String> capabilityName;

  /// Folder on which Capability needs to be updated in the format folders/folder_id.
  final pulumi.Input<String> parent;

  /// Capability Value.
  final pulumi.Input<bool> value;

  /// Creates a new [CapabilityArgs].
  /// [capabilityName] Capability name that should be updated on the folder.
  /// [parent] Folder on which Capability needs to be updated in the format folders/folder_id.
  /// [value] Capability Value.
  CapabilityArgs({
    required String capabilityName,
    required String parent,
    required bool value,
  }) : capabilityName = pulumi.Input.asInput<String>(capabilityName),
       parent = pulumi.Input.asInput<String>(parent),
       value = pulumi.Input.asInput<bool>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilityName': capabilityName,
      'parent': parent,
      'value': value,
    };
  }

  factory CapabilityArgs.fromMap(Map<String, dynamic> map) {
    return CapabilityArgs(
      capabilityName: map['capabilityName'] as String,
      parent: map['parent'] as String,
      value: map['value'] as bool,
    );
  }
}
