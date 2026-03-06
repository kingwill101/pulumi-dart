// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of the Kafka cluster
class ClusterConfigEntityResponse {
  /// The lifecycle phase of the cluster
  final pulumi.Input<String>? kind;

  /// Creates a new [ClusterConfigEntityResponse].
  /// [kind] The lifecycle phase of the cluster
  const ClusterConfigEntityResponse({
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
    };
  }

  factory ClusterConfigEntityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterConfigEntityResponse(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

