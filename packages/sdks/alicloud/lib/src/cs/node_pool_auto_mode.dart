// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolAutoMode {
  /// Whether to enable auto mode. Valid values:
  final pulumi.Input<bool>? enabled;

  /// Creates a new [NodePoolAutoMode].
  /// [enabled] Whether to enable auto mode. Valid values:
  NodePoolAutoMode({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory NodePoolAutoMode.fromMap(Map<String, dynamic> map) {
    return NodePoolAutoMode(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

