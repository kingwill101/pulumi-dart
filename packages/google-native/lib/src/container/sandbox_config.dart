// ignore_for_file: unused_element, unnecessary_cast

import 'sandbox_config_type.dart';

/// SandboxConfig contains configurations of the sandbox to use for the node.
class SandboxConfig {
  /// Type of the sandbox to use for the node.
  final SandboxConfigType? type;

  /// Creates a new [SandboxConfig].
  /// [type] Type of the sandbox to use for the node.
  SandboxConfig({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    return map;
  }

  factory SandboxConfig.fromMap(Map<String, dynamic> map) {
    return SandboxConfig(
      type: map['type'] == null
          ? null
          : SandboxConfigType.fromValue(map['type'] as String),
    );
  }
}
