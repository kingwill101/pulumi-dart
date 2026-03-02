// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NodeToNodeEncryptionOptions
class NodeToNodeEncryptionOptions {
  /// <p>True to enable node-to-node encryption.</p>
  final pulumi.Input<bool>? enabled;

  /// Creates a new [NodeToNodeEncryptionOptions].
  /// [enabled] <p>True to enable node-to-node encryption.</p>
  NodeToNodeEncryptionOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory NodeToNodeEncryptionOptions.fromMap(Map<String, dynamic> map) {
    return NodeToNodeEncryptionOptions(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

