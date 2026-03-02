// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration of the Kafka cluster
class ClusterConfigEntityResponse {
  /// The lifecycle phase of the cluster
  final pulumi.Input<String>? kind;

  /// Creates a new [ClusterConfigEntityResponse].
  /// [kind] The lifecycle phase of the cluster
  ClusterConfigEntityResponse({
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
    };
  }

  factory ClusterConfigEntityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterConfigEntityResponse(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
    );
  }
}

