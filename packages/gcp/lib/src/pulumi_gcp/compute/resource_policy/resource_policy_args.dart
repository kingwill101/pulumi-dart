// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resource_policy_disk_consistency_group_policy/resource_policy_disk_consistency_group_policy.dart';
import '../resource_policy_group_placement_policy/resource_policy_group_placement_policy.dart';
import '../resource_policy_instance_schedule_policy/resource_policy_instance_schedule_policy.dart';
import '../resource_policy_snapshot_schedule_policy/resource_policy_snapshot_schedule_policy.dart';
import '../resource_policy_workload_policy/resource_policy_workload_policy.dart';

/// The set of arguments for ResourcePolicy.
class ResourcePolicyArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Replication consistency group for asynchronous disk replication.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyDiskConsistencyGroupPolicy>?
      diskConsistencyGroupPolicy;

  /// Resource policy for instances used for placement configuration.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyGroupPlacementPolicy>? groupPlacementPolicy;

  /// Resource policy for scheduling instance operations.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicy>?
      instanceSchedulePolicy;

  /// The name of the resource, provided by the client when initially creating
  /// the resource. The resource name must be 1-63 characters long, and comply
  /// with RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z`? which means the
  /// first character must be a lowercase letter, and all following characters
  /// must be a dash, lowercase letter, or digit, except the last character,
  /// which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Region where resource policy resides.
  final pulumi.Input<String>? region;

  /// Policy for creating snapshots of persistent disks.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicy>?
      snapshotSchedulePolicy;

  /// Represents the workload policy.
  /// Structure is documented below.
  final pulumi.Input<ResourcePolicyWorkloadPolicy>? workloadPolicy;

  ResourcePolicyArgs({
    this.description,
    this.diskConsistencyGroupPolicy,
    this.groupPlacementPolicy,
    this.instanceSchedulePolicy,
    this.name,
    this.project,
    this.region,
    this.snapshotSchedulePolicy,
    this.workloadPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskConsistencyGroupPolicyValue = diskConsistencyGroupPolicy;
    if (diskConsistencyGroupPolicyValue != null) {
      map['diskConsistencyGroupPolicy'] = pulumi.Input.mapOptionalInputValue<
              ResourcePolicyDiskConsistencyGroupPolicy, Map<String, dynamic>>(
          diskConsistencyGroupPolicyValue, (value) => value.toMap());
    }
    final groupPlacementPolicyValue = groupPlacementPolicy;
    if (groupPlacementPolicyValue != null) {
      map['groupPlacementPolicy'] = pulumi.Input.mapOptionalInputValue<
              ResourcePolicyGroupPlacementPolicy, Map<String, dynamic>>(
          groupPlacementPolicyValue, (value) => value.toMap());
    }
    final instanceSchedulePolicyValue = instanceSchedulePolicy;
    if (instanceSchedulePolicyValue != null) {
      map['instanceSchedulePolicy'] = pulumi.Input.mapOptionalInputValue<
              ResourcePolicyInstanceSchedulePolicy, Map<String, dynamic>>(
          instanceSchedulePolicyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final snapshotSchedulePolicyValue = snapshotSchedulePolicy;
    if (snapshotSchedulePolicyValue != null) {
      map['snapshotSchedulePolicy'] = pulumi.Input.mapOptionalInputValue<
              ResourcePolicySnapshotSchedulePolicy, Map<String, dynamic>>(
          snapshotSchedulePolicyValue, (value) => value.toMap());
    }
    final workloadPolicyValue = workloadPolicy;
    if (workloadPolicyValue != null) {
      map['workloadPolicy'] = pulumi.Input.mapOptionalInputValue<
          ResourcePolicyWorkloadPolicy,
          Map<String, dynamic>>(workloadPolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      diskConsistencyGroupPolicy: pulumi.Input.asOptionalInput<
              ResourcePolicyDiskConsistencyGroupPolicy>(
          map['diskConsistencyGroupPolicy']),
      groupPlacementPolicy:
          pulumi.Input.asOptionalInput<ResourcePolicyGroupPlacementPolicy>(
              map['groupPlacementPolicy']),
      instanceSchedulePolicy:
          pulumi.Input.asOptionalInput<ResourcePolicyInstanceSchedulePolicy>(
              map['instanceSchedulePolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snapshotSchedulePolicy:
          pulumi.Input.asOptionalInput<ResourcePolicySnapshotSchedulePolicy>(
              map['snapshotSchedulePolicy']),
      workloadPolicy:
          pulumi.Input.asOptionalInput<ResourcePolicyWorkloadPolicy>(
              map['workloadPolicy']),
    );
  }
}
