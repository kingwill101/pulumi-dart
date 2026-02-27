// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_effective_replication_replica/instance_effective_replication_replica.dart';

class InstanceEffectiveReplication {
  /// The replication role.
  /// Structure is documented below.
  final List<InstanceEffectiveReplicationReplica>? replicas;

  /// (Output)
  /// The replication role.
  final String? role;

  InstanceEffectiveReplication({
    this.replicas,
    this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final replicasValue = replicas;
    if (replicasValue != null) {
      map['replicas'] = pulumi.Input.encodeList<
          InstanceEffectiveReplicationReplica,
          Map<String, dynamic>>(replicasValue, (value) => value.toMap());
    }
    final roleValue = role;
    if (roleValue != null) {
      map['role'] = roleValue;
    }
    return map;
  }

  factory InstanceEffectiveReplication.fromMap(Map<String, dynamic> map) {
    return InstanceEffectiveReplication(
      replicas: map['replicas'] == null
          ? null
          : pulumi.Input.decodeList<InstanceEffectiveReplicationReplica>(
              map['replicas'],
              (value) => InstanceEffectiveReplicationReplica.fromMap(
                  (value as Map).cast<String, dynamic>())),
      role: map['role'] == null ? null : map['role'] as String,
    );
  }
}
