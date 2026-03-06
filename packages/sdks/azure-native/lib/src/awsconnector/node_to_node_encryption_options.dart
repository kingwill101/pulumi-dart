// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NodeToNodeEncryptionOptions
class NodeToNodeEncryptionOptions {
  /// &lt;p&gt;True to enable node-to-node encryption.&lt;/p&gt;
  final pulumi.Input<bool>? enabled;

  /// Creates a new [NodeToNodeEncryptionOptions].
  /// [enabled] &lt;p&gt;True to enable node-to-node encryption.&lt;/p&gt;
  const NodeToNodeEncryptionOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory NodeToNodeEncryptionOptions.fromMap(Map<String, dynamic> map) {
    return NodeToNodeEncryptionOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

