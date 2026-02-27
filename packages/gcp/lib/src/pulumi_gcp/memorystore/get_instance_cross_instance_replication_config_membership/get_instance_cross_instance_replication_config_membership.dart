// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_cross_instance_replication_config_membership_primary_instance/get_instance_cross_instance_replication_config_membership_primary_instance.dart';
import '../get_instance_cross_instance_replication_config_membership_secondary_instance/get_instance_cross_instance_replication_config_membership_secondary_instance.dart';

class GetInstanceCrossInstanceReplicationConfigMembership {
  /// Details of the primary instance that is used as the replication source for all the secondary instances.
  final List<GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance>
      primaryInstances;

  /// List of secondary instances that are replicating from the primary instance.
  final List<
          GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance>
      secondaryInstances;

  GetInstanceCrossInstanceReplicationConfigMembership({
    required this.primaryInstances,
    required this.secondaryInstances,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['primaryInstances'] = pulumi.Input.encodeList<
        GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance,
        Map<String, dynamic>>(primaryInstances, (value) => value.toMap());
    map['secondaryInstances'] = pulumi.Input.encodeList<
        GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance,
        Map<String, dynamic>>(secondaryInstances, (value) => value.toMap());
    return map;
  }

  factory GetInstanceCrossInstanceReplicationConfigMembership.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceCrossInstanceReplicationConfigMembership(
      primaryInstances: pulumi.Input.decodeList<
              GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance>(
          map['primaryInstances'],
          (value) =>
              GetInstanceCrossInstanceReplicationConfigMembershipPrimaryInstance
                  .fromMap((value as Map).cast<String, dynamic>())),
      secondaryInstances: pulumi.Input.decodeList<
              GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance>(
          map['secondaryInstances'],
          (value) =>
              GetInstanceCrossInstanceReplicationConfigMembershipSecondaryInstance
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
