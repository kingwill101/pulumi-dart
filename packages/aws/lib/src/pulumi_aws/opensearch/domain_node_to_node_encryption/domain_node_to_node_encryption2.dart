// ignore_for_file: unused_element, unnecessary_cast

class DomainNodeToNodeEncryption2 {
  /// Whether to enable node-to-node encryption. If the `node_to_node_encryption` block is not provided then this defaults to `false`. Enabling node-to-node encryption of a new domain requires an `engine_version` of `OpenSearch_X.Y` or `Elasticsearch_6.0` or greater.
  final bool enabled;

  DomainNodeToNodeEncryption2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory DomainNodeToNodeEncryption2.fromMap(Map<String, dynamic> map) {
    return DomainNodeToNodeEncryption2(
      enabled: map['enabled'] as bool,
    );
  }
}
