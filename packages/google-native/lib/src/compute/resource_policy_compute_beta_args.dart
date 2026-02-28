// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_group_placement_policy_compute_beta.dart';
import 'resource_policy_instance_schedule_policy_compute_beta.dart';
import 'resource_policy_snapshot_schedule_policy_compute_beta.dart';

/// {@template pulumi_compute_beta_resource_policy_compute_beta_args_doc}
/// The set of arguments for ResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_resource_policy_compute_beta_args_doc}
class ResourcePolicyComputeBetaArgs {
  final pulumi.Input<String>? description;

  /// Resource policy for disk consistency groups.
  final pulumi.Input<Map<String, dynamic>>? diskConsistencyGroupPolicy;

  /// Resource policy for instances for placement configuration.
  final pulumi.Input<ResourcePolicyGroupPlacementPolicyComputeBeta>?
      groupPlacementPolicy;

  /// Resource policy for scheduling instance operations.
  final pulumi.Input<ResourcePolicyInstanceSchedulePolicyComputeBeta>?
      instanceSchedulePolicy;

  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Resource policy for persistent disks for creating snapshots.
  final pulumi.Input<ResourcePolicySnapshotSchedulePolicyComputeBeta>?
      snapshotSchedulePolicy;

  /// Creates a new [ResourcePolicyComputeBetaArgs].
  /// [description] Optional.
  /// [diskConsistencyGroupPolicy] Resource policy for disk consistency groups.
  /// [groupPlacementPolicy] Resource policy for instances for placement configuration.
  /// [instanceSchedulePolicy] Resource policy for scheduling instance operations.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [snapshotSchedulePolicy] Resource policy for persistent disks for creating snapshots.
  ResourcePolicyComputeBetaArgs({
    String? description,
    Map<String, dynamic>? diskConsistencyGroupPolicy,
    ResourcePolicyGroupPlacementPolicyComputeBeta? groupPlacementPolicy,
    ResourcePolicyInstanceSchedulePolicyComputeBeta? instanceSchedulePolicy,
    String? name,
    String? project,
    required String region,
    String? requestId,
    ResourcePolicySnapshotSchedulePolicyComputeBeta? snapshotSchedulePolicy,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        diskConsistencyGroupPolicy =
            pulumi.Input.asOptionalInput<Map<String, dynamic>>(
                diskConsistencyGroupPolicy),
        groupPlacementPolicy = pulumi.Input.asOptionalInput<
                ResourcePolicyGroupPlacementPolicyComputeBeta>(
            groupPlacementPolicy),
        instanceSchedulePolicy = pulumi.Input.asOptionalInput<
                ResourcePolicyInstanceSchedulePolicyComputeBeta>(
            instanceSchedulePolicy),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        snapshotSchedulePolicy = pulumi.Input.asOptionalInput<
                ResourcePolicySnapshotSchedulePolicyComputeBeta>(
            snapshotSchedulePolicy);

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
              ResourcePolicyGroupPlacementPolicyComputeBeta,
              Map<String, dynamic>>(
          groupPlacementPolicyValue, (value) => value.toMap());
    }
    final instanceSchedulePolicyValue = instanceSchedulePolicy;
    if (instanceSchedulePolicyValue != null) {
      map['instanceSchedulePolicy'] = pulumi.Input.mapOptionalInputValue<
              ResourcePolicyInstanceSchedulePolicyComputeBeta,
              Map<String, dynamic>>(
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
              ResourcePolicySnapshotSchedulePolicyComputeBeta,
              Map<String, dynamic>>(
          snapshotSchedulePolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResourcePolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyComputeBetaArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      diskConsistencyGroupPolicy: map['diskConsistencyGroupPolicy'] == null
          ? null
          : (map['diskConsistencyGroupPolicy'] as Map).cast<String, dynamic>(),
      groupPlacementPolicy: map['groupPlacementPolicy'] == null
          ? null
          : ResourcePolicyGroupPlacementPolicyComputeBeta.fromMap(
              (map['groupPlacementPolicy'] as Map).cast<String, dynamic>()),
      instanceSchedulePolicy: map['instanceSchedulePolicy'] == null
          ? null
          : ResourcePolicyInstanceSchedulePolicyComputeBeta.fromMap(
              (map['instanceSchedulePolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      snapshotSchedulePolicy: map['snapshotSchedulePolicy'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyComputeBeta.fromMap(
              (map['snapshotSchedulePolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
