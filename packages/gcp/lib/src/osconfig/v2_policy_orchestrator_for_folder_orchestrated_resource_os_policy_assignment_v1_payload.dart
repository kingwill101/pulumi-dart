// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_instance_filter.dart';
import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_os_policy.dart';
import 'v2_policy_orchestrator_for_folder_orchestrated_resource_os_policy_assignment_v1_payload_rollout.dart';

class V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1Payload {
  /// Indicates that this revision has been successfully rolled out in this zone
  /// and new VMs will be assigned OS policies from this revision.
  ///
  /// For a given OS policy assignment, there is only one revision with a value
  /// of 'true' for this field.
  final bool? baseline;

  /// Indicates that this revision deletes the OS policy assignment.
  final bool? deleted;

  /// Freeform text describing the purpose of the resource.
  final String? description;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the
  /// client has an up-to-date value before proceeding.
  final String? etag;

  /// Filters to select target VMs for an assignment.
  ///
  /// If more than one filter criteria is specified below, a VM will be selected
  /// if and only if it satisfies all of them.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter
      instanceFilter;

  /// Identifier. In form of
  /// * `organizations/{organization_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `folders/{folder_id}/locations/global/policyOrchestrators/{orchestrator_id}`
  /// * `projects/{project_id_or_number}/locations/global/policyOrchestrators/{orchestrator_id}`
  final String? name;

  /// List of OS policies to be applied to the VMs.
  final List<
          V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy>
      osPolicies;

  /// Set to true, if the there are ongoing changes being applied by the
  /// orchestrator.
  final bool? reconciling;

  /// The timestamp that the revision was created.
  final String? revisionCreateTime;

  /// The assignment revision ID
  /// A new revision is committed whenever a rollout is triggered for a OS policy
  /// assignment
  final String? revisionId;

  /// Message to configure the rollout at the zonal level for the OS policy
  /// assignment.
  final V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadRollout
      rollout;

  /// OS policy assignment rollout state
  /// Possible values:
  /// IN_PROGRESS
  /// CANCELLING
  /// CANCELLED
  /// SUCCEEDED
  final String? rolloutState;

  /// Server generated unique id for the OS policy assignment resource.
  final String? uid;

  /// Creates a new [V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1Payload].
  /// [baseline] Indicates that this revision has been successfully rolled out in this zone
  /// [deleted] Indicates that this revision deletes the OS policy assignment.
  /// [description] Freeform text describing the purpose of the resource.
  /// [etag] This checksum is computed by the server based on the value of other
  /// [instanceFilter] Filters to select target VMs for an assignment.
  /// [name] Identifier. In form of
  /// [osPolicies] List of OS policies to be applied to the VMs.
  /// [reconciling] Set to true, if the there are ongoing changes being applied by the
  /// [revisionCreateTime] The timestamp that the revision was created.
  /// [revisionId] The assignment revision ID
  /// [rollout] Message to configure the rollout at the zonal level for the OS policy
  /// [rolloutState] OS policy assignment rollout state
  /// [uid] Server generated unique id for the OS policy assignment resource.
  V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1Payload({
    this.baseline,
    this.deleted,
    this.description,
    this.etag,
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
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['instanceFilter'] = instanceFilter.toMap();
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['osPolicies'] = pulumi.Input.encodeList<
        V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy,
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

  factory V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1Payload.fromMap(
      Map<String, dynamic> map) {
    return V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1Payload(
      baseline: map['baseline'] == null ? null : map['baseline'] as bool,
      deleted: map['deleted'] == null ? null : map['deleted'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      instanceFilter:
          V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadInstanceFilter
              .fromMap((map['instanceFilter'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      osPolicies: pulumi.Input.decodeList<
              V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy>(
          map['osPolicies'],
          (value) =>
              V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadOsPolicy
                  .fromMap((value as Map).cast<String, dynamic>())),
      reconciling:
          map['reconciling'] == null ? null : map['reconciling'] as bool,
      revisionCreateTime: map['revisionCreateTime'] == null
          ? null
          : map['revisionCreateTime'] as String,
      revisionId:
          map['revisionId'] == null ? null : map['revisionId'] as String,
      rollout:
          V2PolicyOrchestratorForFolderOrchestratedResourceOsPolicyAssignmentV1PayloadRollout
              .fromMap((map['rollout'] as Map).cast<String, dynamic>()),
      rolloutState:
          map['rolloutState'] == null ? null : map['rolloutState'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}
