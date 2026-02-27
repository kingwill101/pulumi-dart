// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../entitlement_additional_notification_targets/entitlement_additional_notification_targets.dart';
import '../entitlement_approval_workflow/entitlement_approval_workflow.dart';
import '../entitlement_eligible_user/entitlement_eligible_user.dart';
import '../entitlement_privileged_access/entitlement_privileged_access.dart';
import '../entitlement_requester_justification_config/entitlement_requester_justification_config.dart';

/// The set of arguments for Entitlement.
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

  EntitlementArgs({
    this.additionalNotificationTargets,
    this.approvalWorkflow,
    required this.eligibleUsers,
    required this.entitlementId,
    required this.location,
    required this.maxRequestDuration,
    required this.parent,
    required this.privilegedAccess,
    required this.requesterJustificationConfig,
  });

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
      additionalNotificationTargets: pulumi.Input.asOptionalInput<
              EntitlementAdditionalNotificationTargets>(
          map['additionalNotificationTargets']),
      approvalWorkflow:
          pulumi.Input.asOptionalInput<EntitlementApprovalWorkflow>(
              map['approvalWorkflow']),
      eligibleUsers: pulumi.Input.asInput<List<EntitlementEligibleUser>>(
          map['eligibleUsers']),
      entitlementId: pulumi.Input.asInput<String>(map['entitlementId']),
      location: pulumi.Input.asInput<String>(map['location']),
      maxRequestDuration:
          pulumi.Input.asInput<String>(map['maxRequestDuration']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      privilegedAccess: pulumi.Input.asInput<EntitlementPrivilegedAccess>(
          map['privilegedAccess']),
      requesterJustificationConfig:
          pulumi.Input.asInput<EntitlementRequesterJustificationConfig>(
              map['requesterJustificationConfig']),
    );
  }
}
