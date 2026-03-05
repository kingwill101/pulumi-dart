// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Replica properties of a server.
class ReplicaResponse {
  /// Maximum number of read replicas allowed for a server.
  final pulumi.Input<int> capacity;
  /// Indicates the replication state of a read replica. This property is returned only when the target server is a read replica. Possible  values are Active, Broken, Catchup, Provisioning, Reconfiguring, and Updating
  final pulumi.Input<String> replicationState;
  /// Role of the server in a replication set.
  final pulumi.Input<String>? role;

  /// Creates a new [ReplicaResponse].
  /// [capacity] Maximum number of read replicas allowed for a server.
  /// [replicationState] Indicates the replication state of a read replica. This property is returned only when the target server is a read replica. Possible  values are Active, Broken, Catchup, Provisioning, Reconfiguring, and Updating
  /// [role] Role of the server in a replication set.
  ReplicaResponse({
    required this.capacity,
    required this.replicationState,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'replicationState': replicationState,
      'role': ?role,
    };
  }

  factory ReplicaResponse.fromMap(Map<String, dynamic> map) {
    return ReplicaResponse(
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      replicationState: pulumi.Input.fromValue(map['replicationState'] as String),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

