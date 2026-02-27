// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter/v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter.dart';
import '../v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy/v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_os_policy.dart';
import '../v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_rollout/v2_policy_orchestrator_orchestrated_resource_os_policy_assignment_v1_payload_rollout.dart';

class V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload {
  /// Output only. Indicates that this revision has been successfully rolled out in this zone
  /// and new VMs will be assigned OS policies from this revision.
  ///
  /// For a given OS policy assignment, there is only one revision with a value
  /// of 'true' for this field.
  final bool? baseline;

  /// Output only. Indicates that this revision deletes the OS policy assignment.
  final bool? deleted;

  /// Optional. Freeform text describing the purpose of the resource.
  final String? description;

  /// Filters to select target VMs for an assignment.
  ///
  /// If more than one filter criteria is specified below, a VM will be selected
  /// if and only if it satisfies all of them.
  final V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter
      instanceFilter;

  /// Immutable. Identifier. In form of
  /// * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  final String? name;

  /// Required. List of OS policies to be applied to the VMs.
  final List<
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy>
      osPolicies;

  /// Output only. Set to true, if the there are ongoing changes being applied by the
  /// orchestrator.
  final bool? reconciling;

  /// Output only. The timestamp that the revision was created.
  final String? revisionCreateTime;

  /// Output only. The assignment revision ID
  /// A new revision is committed whenever a rollout is triggered for a OS policy
  /// assignment
  final String? revisionId;

  /// Message to configure the rollout at the zonal level for the OS policy
  /// assignment.
  final V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout
      rollout;

  /// Output only. OS policy assignment rollout state
  /// Possible values:
  /// ROLLOUT_STATE_UNSPECIFIED
  /// IN_PROGRESS
  /// CANCELLING
  /// CANCELLED
  /// SUCCEEDED
  final String? rolloutState;

  /// Output only. Server generated unique id for the OS policy assignment resource.
  final String? uid;

  V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload({
    this.baseline,
    this.deleted,
    this.description,
    required this.instanceFilter,
    this.name,
    required this.osPolicies,
    this.reconciling,
    this.revisionCreateTime,
    this.revisionId,
    required this.rollout,
    this.rolloutState,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final baselineValue = baseline;
    if (baselineValue != null) {
      map['baseline'] = baselineValue;
    }
    final deletedValue = deleted;
    if (deletedValue != null) {
      map['deleted'] = deletedValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceFilter'] = instanceFilter.toMap();
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['osPolicies'] = pulumi.Input.encodeList<
        V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy,
        Map<String, dynamic>>(osPolicies, (value) => value.toMap());
    final reconcilingValue = reconciling;
    if (reconcilingValue != null) {
      map['reconciling'] = reconcilingValue;
    }
    final revisionCreateTimeValue = revisionCreateTime;
    if (revisionCreateTimeValue != null) {
      map['revisionCreateTime'] = revisionCreateTimeValue;
    }
    final revisionIdValue = revisionId;
    if (revisionIdValue != null) {
      map['revisionId'] = revisionIdValue;
    }
    map['rollout'] = rollout.toMap();
    final rolloutStateValue = rolloutState;
    if (rolloutStateValue != null) {
      map['rolloutState'] = rolloutStateValue;
    }
    final uidValue = uid;
    if (uidValue != null) {
      map['uid'] = uidValue;
    }
    return map;
  }

  factory V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1Payload(
      baseline: map['baseline'] == null ? null : map['baseline'] as bool,
      deleted: map['deleted'] == null ? null : map['deleted'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      instanceFilter:
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter
              .fromMap((map['instanceFilter'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      osPolicies: pulumi.Input.decodeList<
              V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy>(
          map['osPolicies'],
          (value) =>
              V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy
                  .fromMap((value as Map).cast<String, dynamic>())),
      reconciling:
          map['reconciling'] == null ? null : map['reconciling'] as bool,
      revisionCreateTime: map['revisionCreateTime'] == null
          ? null
          : map['revisionCreateTime'] as String,
      revisionId:
          map['revisionId'] == null ? null : map['revisionId'] as String,
      rollout:
          V2PolicyOrchestratorOrchestratedResourceOsPolicyAssignmentV1PayloadRollout
              .fromMap((map['rollout'] as Map).cast<String, dynamic>()),
      rolloutState:
          map['rolloutState'] == null ? null : map['rolloutState'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
