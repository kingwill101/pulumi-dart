// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_cross_instance_replication_config_membership.dart';
import 'instance_cross_instance_replication_config_primary_instance.dart';
import 'instance_cross_instance_replication_config_secondary_instance.dart';

class InstanceCrossInstanceReplicationConfig {
  /// The instance role supports the following values:
  /// 1. `INSTANCE_ROLE_UNSPECIFIED`: This is an independent instance that has never participated in cross instance replication. It allows both reads and writes.
  /// 2. `NONE`: This is an independent instance that previously participated in cross instance replication(either as a `PRIMARY` or `SECONDARY` cluster). It allows both reads and writes.
  /// 3. `PRIMARY`: This instance serves as the replication source for secondary instance that are replicating from it. Any data written to it is automatically replicated to its secondary clusters. It allows both reads and writes.
  /// 4. `SECONDARY`: This instance replicates data from the primary instance. It allows only reads.
  /// Possible values are: `INSTANCE_ROLE_UNSPECIFIED`, `NONE`, `PRIMARY`, `SECONDARY`.
  final String? instanceRole;

  /// (Output)
  /// An output only view of all the member instance participating in cross instance replication. This field is populated for all the member clusters irrespective of their cluster role.
  /// Structure is documented below.
  final List<InstanceCrossInstanceReplicationConfigMembership>? memberships;

  /// This field is only set for a secondary instance. Details of the primary instance that is used as the replication source for this secondary instance. This is allowed to be set only for clusters whose cluster role is of type `SECONDARY`.
  /// Structure is documented below.
  final InstanceCrossInstanceReplicationConfigPrimaryInstance? primaryInstance;

  /// List of secondary instances that are replicating from this primary cluster. This is allowed to be set only for instances whose cluster role is of type `PRIMARY`.
  /// Structure is documented below.
  final List<InstanceCrossInstanceReplicationConfigSecondaryInstance>?
      secondaryInstances;

  /// (Output)
  /// The last time cross instance replication config was updated.
  final String? updateTime;

  /// Creates a new [InstanceCrossInstanceReplicationConfig].
  /// [instanceRole] The instance role supports the following values:
  /// [memberships] (Output)
  /// [primaryInstance] This field is only set for a secondary instance. Details of the primary instance that is used as the replication source for this secondary instance. This is allowed to be set only for clusters whose cluster role is of type `SECONDARY`.
  /// [secondaryInstances] List of secondary instances that are replicating from this primary cluster. This is allowed to be set only for instances whose cluster role is of type `PRIMARY`.
  /// [updateTime] (Output)
  InstanceCrossInstanceReplicationConfig({
    this.instanceRole,
    this.memberships,
    this.primaryInstance,
    this.secondaryInstances,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceRoleValue = instanceRole;
    if (instanceRoleValue != null) {
      map['instanceRole'] = instanceRoleValue;
    }
    final membershipsValue = memberships;
    if (membershipsValue != null) {
      map['memberships'] = pulumi.Input.encodeList<
          InstanceCrossInstanceReplicationConfigMembership,
          Map<String, dynamic>>(membershipsValue, (value) => value.toMap());
    }
    final primaryInstanceValue = primaryInstance;
    if (primaryInstanceValue != null) {
      map['primaryInstance'] = primaryInstanceValue.toMap();
    }
    final secondaryInstancesValue = secondaryInstances;
    if (secondaryInstancesValue != null) {
      map['secondaryInstances'] = pulumi.Input.encodeList<
              InstanceCrossInstanceReplicationConfigSecondaryInstance,
              Map<String, dynamic>>(
          secondaryInstancesValue, (value) => value.toMap());
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory InstanceCrossInstanceReplicationConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceCrossInstanceReplicationConfig(
      instanceRole:
          map['instanceRole'] == null ? null : map['instanceRole'] as String,
      memberships: map['memberships'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceCrossInstanceReplicationConfigMembership>(
              map['memberships'],
              (value) =>
                  InstanceCrossInstanceReplicationConfigMembership.fromMap(
                      (value as Map).cast<String, dynamic>())),
      primaryInstance: map['primaryInstance'] == null
          ? null
          : InstanceCrossInstanceReplicationConfigPrimaryInstance.fromMap(
              (map['primaryInstance'] as Map).cast<String, dynamic>()),
      secondaryInstances: map['secondaryInstances'] == null
          ? null
          : pulumi.Input.decodeList<
                  InstanceCrossInstanceReplicationConfigSecondaryInstance>(
              map['secondaryInstances'],
              (value) => InstanceCrossInstanceReplicationConfigSecondaryInstance
                  .fromMap((value as Map).cast<String, dynamic>())),
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
