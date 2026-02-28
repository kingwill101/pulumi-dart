// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_initial_replication_replica.dart';

class GetInstanceInitialReplication {
  /// The replication role.
  final List<GetInstanceInitialReplicationReplica> replicas;

  /// The replication role. Default value: "STANDBY" Possible values: ["ROLE_UNSPECIFIED", "ACTIVE", "STANDBY"]
  final String role;

  /// Creates a new [GetInstanceInitialReplication].
  /// [replicas] The replication role.
  /// [role] The replication role. Default value: "STANDBY" Possible values: ["ROLE_UNSPECIFIED", "ACTIVE", "STANDBY"]
  GetInstanceInitialReplication({
    required this.replicas,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['replicas'] = pulumi.Input.encodeList<
        GetInstanceInitialReplicationReplica,
        Map<String, dynamic>>(replicas, (value) => value.toMap());
    map['role'] = role;
    return map;
  }

  factory GetInstanceInitialReplication.fromMap(Map<String, dynamic> map) {
    return GetInstanceInitialReplication(
      replicas: pulumi.Input.decodeList<GetInstanceInitialReplicationReplica>(
          map['replicas'],
          (value) => GetInstanceInitialReplicationReplica.fromMap(
              (value as Map).cast<String, dynamic>())),
      role: map['role'] as String,
    );
  }
}
