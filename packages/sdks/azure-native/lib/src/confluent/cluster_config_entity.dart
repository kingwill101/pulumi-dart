// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of the Kafka cluster
class ClusterConfigEntity {
  /// The lifecycle phase of the cluster
  final pulumi.Input<String>? kind;

  /// Creates a new [ClusterConfigEntity].
  /// [kind] The lifecycle phase of the cluster
  const ClusterConfigEntity({
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
    };
  }

  factory ClusterConfigEntity.fromMap(Map<String, dynamic> map) {
    return ClusterConfigEntity(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
