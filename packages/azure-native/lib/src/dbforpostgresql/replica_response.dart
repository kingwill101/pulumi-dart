// ignore_for_file: unused_element, unnecessary_cast


/// Replica properties of a server.
class ReplicaResponse {
  /// Maximum number of read replicas allowed for a server.
  final int capacity;
  /// Indicates the replication state of a read replica. This property is returned only when the target server is a read replica. Possible  values are Active, Broken, Catchup, Provisioning, Reconfiguring, and Updating
  final String replicationState;
  /// Role of the server in a replication set.
  final String? role;

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
      capacity: map['capacity'] as int,
      replicationState: map['replicationState'] as String,
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}

