// ignore_for_file: unused_element, unnecessary_cast

import 'sandbox_config_type_container_v1beta1.dart';

/// SandboxConfig contains configurations of the sandbox to use for the node.
class SandboxConfigContainerV1beta1 {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final String? sandboxType;

  /// Type of the sandbox to use for the node.
  final SandboxConfigTypeContainerV1beta1? type;

  /// Creates a new [SandboxConfigContainerV1beta1].
  /// [sandboxType] Type of the sandbox to use for the node (e.g. 'gvisor')
  /// [type] Type of the sandbox to use for the node.
  SandboxConfigContainerV1beta1({
    this.sandboxType,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sandboxTypeValue = sandboxType;
    if (sandboxTypeValue != null) {
      map['sandboxType'] = sandboxTypeValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory SandboxConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return SandboxConfigContainerV1beta1(
      sandboxType:
          map['sandboxType'] == null ? null : map['sandboxType'] as String,
      type: map['type'] == null
          ? null
          : SandboxConfigTypeContainerV1beta1.fromValue(map['type'] as String),
    );
  }
}
