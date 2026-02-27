// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_group_placement_policy.dart';
import 'resource_policy_instance_schedule_policy.dart';
import 'resource_policy_snapshot_schedule_policy.dart';
import 'resource_policy_vm_maintenance_policy.dart';

/// The set of arguments for ResourcePolicy.
class ResourcePolicyArgs {
  final pulumi.Input<String>? description;

  /// Resource policy for disk consistency groups.
  final pulumi.Input<Map<String, dynamic>>? diskConsistencyGroupPolicy;

  /// Resource policy for instances for placement configuration.
  final pulumi.Input<ResourcePolicyGroupPlacementPolicy>? groupPlacementPolicy;

  /// Resource policy for scheduling instance operations.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicy>?
      instanceSchedulePolicy;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Resource policy for persistent disks for creating snapshots.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicy>?
      snapshotSchedulePolicy;

  /// Resource policy applicable to VMs for infrastructure maintenance.
  final pulumi.Input<ResourcePolicyVmMaintenancePolicy>? vmMaintenancePolicy;

  ResourcePolicyArgs({
    this.description,
    this.diskConsistencyGroupPolicy,
    this.groupPlacementPolicy,
    this.instanceSchedulePolicy,
    this.name,
    this.project,
    required this.region,
    this.requestId,
    this.snapshotSchedulePolicy,
    this.vmMaintenancePolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskConsistencyGroupPolicyValue = diskConsistencyGroupPolicy;
    if (diskConsistencyGroupPolicyValue != null) {
      map['diskConsistencyGroupPolicy'] = diskConsistencyGroupPolicyValue;
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
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final snapshotSchedulePolicyValue = snapshotSchedulePolicy;
    if (snapshotSchedulePolicyValue != null) {
      map['snapshotSchedulePolicy'] = pulumi.Input.mapOptionalInputValue<
              ResourcePolicySnapshotSchedulePolicy, Map<String, dynamic>>(
          snapshotSchedulePolicyValue, (value) => value.toMap());
    }
    final vmMaintenancePolicyValue = vmMaintenancePolicy;
    if (vmMaintenancePolicyValue != null) {
      map['vmMaintenancePolicy'] = pulumi.Input.mapOptionalInputValue<
              ResourcePolicyVmMaintenancePolicy, Map<String, dynamic>>(
          vmMaintenancePolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      diskConsistencyGroupPolicy:
          pulumi.Input.asOptionalInput<Map<String, dynamic>>(
              map['diskConsistencyGroupPolicy']),
      groupPlacementPolicy:
          pulumi.Input.asOptionalInput<ResourcePolicyGroupPlacementPolicy>(
              map['groupPlacementPolicy']),
      instanceSchedulePolicy:
          pulumi.Input.asOptionalInput<ResourcePolicyInstanceSchedulePolicy>(
              map['instanceSchedulePolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      snapshotSchedulePolicy:
          pulumi.Input.asOptionalInput<ResourcePolicySnapshotSchedulePolicy>(
              map['snapshotSchedulePolicy']),
      vmMaintenancePolicy:
          pulumi.Input.asOptionalInput<ResourcePolicyVmMaintenancePolicy>(
              map['vmMaintenancePolicy']),
    );
  }
}
