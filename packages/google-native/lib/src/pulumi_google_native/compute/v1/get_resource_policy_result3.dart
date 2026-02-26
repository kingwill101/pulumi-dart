// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_group_placement_policy_response3.dart';
import 'resource_policy_instance_schedule_policy_response3.dart';
import 'resource_policy_resource_status_response3.dart';
import 'resource_policy_snapshot_schedule_policy_response3.dart';

/// Result data returned by getResourcePolicy.
class GetResourcePolicyResult3 {
  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;
  final String description;

  /// Resource policy for disk consistency groups.
  final Map<String, dynamic> diskConsistencyGroupPolicy;

  /// Resource policy for instances for placement configuration.
  final ResourcePolicyGroupPlacementPolicyResponse3 groupPlacementPolicy;

  /// Resource policy for scheduling instance operations.
  final ResourcePolicyInstanceSchedulePolicyResponse3 instanceSchedulePolicy;

  /// Type of the resource. Always compute#resource_policies for resource policies.
  final String kind;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;
  final String region;

  /// The system status of the resource policy.
  final ResourcePolicyResourceStatusResponse3 resourceStatus;

  /// Server-defined fully-qualified URL for this resource.
  final String selfLink;

  /// Resource policy for persistent disks for creating snapshots.
  final ResourcePolicySnapshotSchedulePolicyResponse3 snapshotSchedulePolicy;

  /// The status of resource policy creation.
  final String status;

  GetResourcePolicyResult3({
    required this.creationTimestamp,
    required this.description,
    required this.diskConsistencyGroupPolicy,
    required this.groupPlacementPolicy,
    required this.instanceSchedulePolicy,
    required this.kind,
    required this.name,
    required this.region,
    required this.resourceStatus,
    required this.selfLink,
    required this.snapshotSchedulePolicy,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['diskConsistencyGroupPolicy'] = diskConsistencyGroupPolicy;
    map['groupPlacementPolicy'] = groupPlacementPolicy.toMap();
    map['instanceSchedulePolicy'] = instanceSchedulePolicy.toMap();
    map['kind'] = kind;
    map['name'] = name;
    map['region'] = region;
    map['resourceStatus'] = resourceStatus.toMap();
    map['selfLink'] = selfLink;
    map['snapshotSchedulePolicy'] = snapshotSchedulePolicy.toMap();
    map['status'] = status;
    return map;
  }

  factory GetResourcePolicyResult3.fromMap(Map<String, dynamic> map) {
    return GetResourcePolicyResult3(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      diskConsistencyGroupPolicy:
          (map['diskConsistencyGroupPolicy'] as Map).cast<String, dynamic>(),
      groupPlacementPolicy: ResourcePolicyGroupPlacementPolicyResponse3.fromMap(
          (map['groupPlacementPolicy'] as Map).cast<String, dynamic>()),
      instanceSchedulePolicy:
          ResourcePolicyInstanceSchedulePolicyResponse3.fromMap(
              (map['instanceSchedulePolicy'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      resourceStatus: ResourcePolicyResourceStatusResponse3.fromMap(
          (map['resourceStatus'] as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
      snapshotSchedulePolicy:
          ResourcePolicySnapshotSchedulePolicyResponse3.fromMap(
              (map['snapshotSchedulePolicy'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
    );
  }
}
