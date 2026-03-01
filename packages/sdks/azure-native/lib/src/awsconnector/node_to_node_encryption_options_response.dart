// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NodeToNodeEncryptionOptions
class NodeToNodeEncryptionOptionsResponse {
  /// <p>True to enable node-to-node encryption.</p>
  final bool? enabled;

  /// Creates a new [NodeToNodeEncryptionOptionsResponse].
  /// [enabled] <p>True to enable node-to-node encryption.</p>
  NodeToNodeEncryptionOptionsResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory NodeToNodeEncryptionOptionsResponse.fromMap(Map<String, dynamic> map) {
    return NodeToNodeEncryptionOptionsResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

