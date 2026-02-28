// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_additional_notification_targets.dart';
import 'entitlement_approval_workflow.dart';
import 'entitlement_eligible_user.dart';
import 'entitlement_privileged_access.dart';
import 'entitlement_requester_justification_config.dart';

/// {@template pulumi_privilegedaccessmanager_entitlement_entitlement_args_doc}
/// The set of arguments for Entitlement.
/// {@endtemplate}
/// {@macro pulumi_privilegedaccessmanager_entitlement_entitlement_args_doc}
class EntitlementArgs {
  /// AdditionalNotificationTargets includes email addresses to be notified.
  /// Structure is documented below.
  final pulumi.Input<EntitlementAdditionalNotificationTargets>?
      additionalNotificationTargets;

  /// The approvals needed before access will be granted to a requester.
  /// No approvals will be needed if this field is null. Different types of approval workflows that can be used to gate privileged access granting.
  /// Structure is documented below.
  final pulumi.Input<EntitlementApprovalWorkflow>? approvalWorkflow;

  /// Who can create Grants using Entitlement. This list should contain at most one entry
  /// Structure is documented below.
  final pulumi.Input<List<EntitlementEligibleUser>> eligibleUsers;

  /// The ID to use for this Entitlement. This will become the last part of the resource name.
  /// This value should be 4-63 characters, and valid characters are "[a-z]", "[0-9]", and "-". The first character should be from [a-z].
  /// This value should be unique among all other Entitlements under the specified `parent`.
  final pulumi.Input<String> entitlementId;

  /// The region of the Entitlement resource.
  final pulumi.Input<String> location;

  /// The maximum amount of time for which access would be granted for a request.
  /// A requester can choose to ask for access for less than this duration but never more.
  /// Format: calculate the time in seconds and concatenate it with 's' i.e. 2 hours = "7200s", 45 minutes = "2700s"
  final pulumi.Input<String> maxRequestDuration;

  /// Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  final pulumi.Input<String> parent;

  /// Privileged access that this service can be used to gate.
  /// Structure is documented below.
  final pulumi.Input<EntitlementPrivilegedAccess> privilegedAccess;

  /// Defines the ways in which a requester should provide the justification while requesting for access.
  /// Structure is documented below.
  final pulumi.Input<EntitlementRequesterJustificationConfig>
      requesterJustificationConfig;

  /// Creates a new [EntitlementArgs].
  /// [additionalNotificationTargets] AdditionalNotificationTargets includes email addresses to be notified.
  /// [approvalWorkflow] The approvals needed before access will be granted to a requester.
  /// [eligibleUsers] Who can create Grants using Entitlement. This list should contain at most one entry
  /// [entitlementId] The ID to use for this Entitlement. This will become the last part of the resource name.
  /// [location] The region of the Entitlement resource.
  /// [maxRequestDuration] The maximum amount of time for which access would be granted for a request.
  /// [parent] Format: projects/{project-id|project-number} or organizations/{organization-number} or folders/{folder-number}
  /// [privilegedAccess] Privileged access that this service can be used to gate.
  /// [requesterJustificationConfig] Defines the ways in which a requester should provide the justification while requesting for access.
  EntitlementArgs({
    EntitlementAdditionalNotificationTargets? additionalNotificationTargets,
    EntitlementApprovalWorkflow? approvalWorkflow,
    required List<EntitlementEligibleUser> eligibleUsers,
    required String entitlementId,
    required String location,
    required String maxRequestDuration,
    required String parent,
    required EntitlementPrivilegedAccess privilegedAccess,
    required EntitlementRequesterJustificationConfig
        requesterJustificationConfig,
  })  : additionalNotificationTargets = pulumi.Input.asOptionalInput<
                EntitlementAdditionalNotificationTargets>(
            additionalNotificationTargets),
        approvalWorkflow =
            pulumi.Input.asOptionalInput<EntitlementApprovalWorkflow>(
                approvalWorkflow),
        eligibleUsers =
            pulumi.Input.asInput<List<EntitlementEligibleUser>>(eligibleUsers),
        entitlementId = pulumi.Input.asInput<String>(entitlementId),
        location = pulumi.Input.asInput<String>(location),
        maxRequestDuration = pulumi.Input.asInput<String>(maxRequestDuration),
        parent = pulumi.Input.asInput<String>(parent),
        privilegedAccess =
            pulumi.Input.asInput<EntitlementPrivilegedAccess>(privilegedAccess),
        requesterJustificationConfig =
            pulumi.Input.asInput<EntitlementRequesterJustificationConfig>(
                requesterJustificationConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalNotificationTargetsValue = additionalNotificationTargets;
    if (additionalNotificationTargetsValue != null) {
      map['additionalNotificationTargets'] = pulumi.Input.mapOptionalInputValue<
              EntitlementAdditionalNotificationTargets, Map<String, dynamic>>(
          additionalNotificationTargetsValue, (value) => value.toMap());
    }
    final approvalWorkflowValue = approvalWorkflow;
    if (approvalWorkflowValue != null) {
      map['approvalWorkflow'] = pulumi.Input.mapOptionalInputValue<
              EntitlementApprovalWorkflow, Map<String, dynamic>>(
          approvalWorkflowValue, (value) => value.toMap());
    }
    map['eligibleUsers'] = pulumi.Input.mapInputValue<
            List<EntitlementEligibleUser>, List<Map<String, dynamic>>>(
        eligibleUsers,
        (value) => pulumi.Input.encodeList<EntitlementEligibleUser,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    map['entitlementId'] = entitlementId;
    map['location'] = location;
    map['maxRequestDuration'] = maxRequestDuration;
    map['parent'] = parent;
    map['privilegedAccess'] = pulumi.Input.mapInputValue<
        EntitlementPrivilegedAccess,
        Map<String, dynamic>>(privilegedAccess, (value) => value.toMap());
    map['requesterJustificationConfig'] = pulumi.Input.mapInputValue<
            EntitlementRequesterJustificationConfig, Map<String, dynamic>>(
        requesterJustificationConfig, (value) => value.toMap());
    return map;
  }

  factory EntitlementArgs.fromMap(Map<String, dynamic> map) {
    return EntitlementArgs(
      additionalNotificationTargets:
          map['additionalNotificationTargets'] == null
              ? null
              : EntitlementAdditionalNotificationTargets.fromMap(
                  (map['additionalNotificationTargets'] as Map)
                      .cast<String, dynamic>()),
      approvalWorkflow: map['approvalWorkflow'] == null
          ? null
          : EntitlementApprovalWorkflow.fromMap(
              (map['approvalWorkflow'] as Map).cast<String, dynamic>()),
      eligibleUsers: pulumi.Input.decodeList<EntitlementEligibleUser>(
          map['eligibleUsers'],
          (value) => EntitlementEligibleUser.fromMap(
              (value as Map).cast<String, dynamic>())),
      entitlementId: map['entitlementId'] as String,
      location: map['location'] as String,
      maxRequestDuration: map['maxRequestDuration'] as String,
      parent: map['parent'] as String,
      privilegedAccess: EntitlementPrivilegedAccess.fromMap(
          (map['privilegedAccess'] as Map).cast<String, dynamic>()),
      requesterJustificationConfig:
          EntitlementRequesterJustificationConfig.fromMap(
              (map['requesterJustificationConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
