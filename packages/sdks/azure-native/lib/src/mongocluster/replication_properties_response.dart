// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Replica properties of the mongo cluster.
class ReplicationPropertiesResponse {
  /// The replication link state of the replica cluster.
  final pulumi.Input<String> replicationState;
  /// The replication role of the cluster
  final pulumi.Input<String> role;
  /// The resource id the source cluster for the replica cluster.
  final pulumi.Input<String> sourceResourceId;

  /// Creates a new [ReplicationPropertiesResponse].
  /// [replicationState] The replication link state of the replica cluster.
  /// [role] The replication role of the cluster
  /// [sourceResourceId] The resource id the source cluster for the replica cluster.
  ReplicationPropertiesResponse({
    required this.replicationState,
    required this.role,
    required this.sourceResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicationState': replicationState,
      'role': role,
      'sourceResourceId': sourceResourceId,
    };
  }

  factory ReplicationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationPropertiesResponse(
      replicationState: (map['replicationState'] as String).input(),
      role: (map['role'] as String).input(),
      sourceResourceId: (map['sourceResourceId'] as String).input(),
    );
  }
}

