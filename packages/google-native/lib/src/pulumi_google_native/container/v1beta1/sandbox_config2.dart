// ignore_for_file: unused_element, unnecessary_cast

import 'sandbox_config_type2.dart';

/// SandboxConfig contains configurations of the sandbox to use for the node.
class SandboxConfig2 {
  /// Type of the sandbox to use for the node (e.g. 'gvisor')
  final String? sandboxType;

  /// Type of the sandbox to use for the node.
  final SandboxConfigType2? type;

  SandboxConfig2({
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

  factory SandboxConfig2.fromMap(Map<String, dynamic> map) {
    return SandboxConfig2(
      sandboxType:
          map['sandboxType'] == null ? null : map['sandboxType'] as String,
      type: map['type'] == null
          ? null
          : SandboxConfigType2.fromValue(map['type'] as String),
    );
  }
}
