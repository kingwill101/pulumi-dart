// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Capability.
class CapabilityArgs {
  /// Capability name that should be updated on the folder.
  final Input<String> capabilityName;

  /// Folder on which Capability needs to be updated in the format folders/folder_id.
  final Input<String> parent;

  /// Capability Value.
  final Input<bool> value;

  CapabilityArgs({
    required this.capabilityName,
    required this.parent,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capabilityName'] = capabilityName;
    map['parent'] = parent;
    map['value'] = value;
    return map;
  }

  factory CapabilityArgs.fromMap(Map<String, dynamic> map) {
    return CapabilityArgs(
      capabilityName: Input.asInput<String>(map['capabilityName']),
      parent: Input.asInput<String>(map['parent']),
      value: Input.asInput<bool>(map['value']),
    );
  }
}
