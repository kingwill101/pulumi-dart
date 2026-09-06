// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NodeToNodeEncryptionOptions
class NodeToNodeEncryptionOptionsResponse {
  /// &lt;p&gt;True to enable node-to-node encryption.&lt;/p&gt;
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [NodeToNodeEncryptionOptionsResponse].
  /// [enabled] &lt;p&gt;True to enable node-to-node encryption.&lt;/p&gt;
  const NodeToNodeEncryptionOptionsResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory NodeToNodeEncryptionOptionsResponse.fromMap(Map<String, dynamic> map) {
    return NodeToNodeEncryptionOptionsResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
