// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'resource_policy_group_placement_policy3.dart';
import 'resource_policy_instance_schedule_policy3.dart';
import 'resource_policy_snapshot_schedule_policy3.dart';

/// The set of arguments for ResourcePolicy.
class ResourcePolicyArgs3 {
  final Input<String>? description;

  /// Resource policy for disk consistency groups.
  final Input<Map<String, dynamic>>? diskConsistencyGroupPolicy;

  /// Resource policy for instances for placement configuration.
  final Input<ResourcePolicyGroupPlacementPolicy3>? groupPlacementPolicy;

  /// Resource policy for scheduling instance operations.
  final Input<ResourcePolicyInstanceSchedulePolicy3>? instanceSchedulePolicy;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Resource policy for persistent disks for creating snapshots.
  final Input<ResourcePolicySnapshotSchedulePolicy3>? snapshotSchedulePolicy;

  ResourcePolicyArgs3({
    this.description,
    this.diskConsistencyGroupPolicy,
    this.groupPlacementPolicy,
    this.instanceSchedulePolicy,
    this.name,
    this.project,
    required this.region,
    this.requestId,
    this.snapshotSchedulePolicy,
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
      map['groupPlacementPolicy'] = Input.mapOptionalInputValue<
              ResourcePolicyGroupPlacementPolicy3, Map<String, dynamic>>(
          groupPlacementPolicyValue, (value) => value.toMap());
    }
    final instanceSchedulePolicyValue = instanceSchedulePolicy;
    if (instanceSchedulePolicyValue != null) {
      map['instanceSchedulePolicy'] = Input.mapOptionalInputValue<
              ResourcePolicyInstanceSchedulePolicy3, Map<String, dynamic>>(
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
      map['snapshotSchedulePolicy'] = Input.mapOptionalInputValue<
              ResourcePolicySnapshotSchedulePolicy3, Map<String, dynamic>>(
          snapshotSchedulePolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourcePolicyArgs3.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      diskConsistencyGroupPolicy: Input.asOptionalInput<Map<String, dynamic>>(
          map['diskConsistencyGroupPolicy']),
      groupPlacementPolicy:
          Input.asOptionalInput<ResourcePolicyGroupPlacementPolicy3>(
              map['groupPlacementPolicy']),
      instanceSchedulePolicy:
          Input.asOptionalInput<ResourcePolicyInstanceSchedulePolicy3>(
              map['instanceSchedulePolicy']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      snapshotSchedulePolicy:
          Input.asOptionalInput<ResourcePolicySnapshotSchedulePolicy3>(
              map['snapshotSchedulePolicy']),
    );
  }
}
