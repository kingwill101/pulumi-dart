// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainNodeToNodeEncryption {
  /// Whether to enable node-to-node encryption. If the `node_to_node_encryption` block is not provided then this defaults to `false`. Enabling node-to-node encryption of a new domain requires an `elasticsearch_version` of `6.0` or greater.
  final pulumi.Input<bool> enabled;

  /// Creates a new [DomainNodeToNodeEncryption].
  /// [enabled] Whether to enable node-to-node encryption. If the `node_to_node_encryption` block is not provided then this defaults to `false`. Enabling node-to-node encryption of a new domain requires an `elasticsearch_version` of `6.0` or greater.
  DomainNodeToNodeEncryption({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory DomainNodeToNodeEncryption.fromMap(Map<String, dynamic> map) {
    return DomainNodeToNodeEncryption(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
