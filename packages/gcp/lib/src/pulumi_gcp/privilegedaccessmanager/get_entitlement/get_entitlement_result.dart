// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_entitlement_additional_notification_target/get_entitlement_additional_notification_target.dart';
import '../get_entitlement_approval_workflow/get_entitlement_approval_workflow.dart';
import '../get_entitlement_eligible_user/get_entitlement_eligible_user.dart';
import '../get_entitlement_privileged_access/get_entitlement_privileged_access.dart';
import '../get_entitlement_requester_justification_config/get_entitlement_requester_justification_config.dart';

/// Result data returned by getEntitlement.
class GetEntitlementResult {
  final List<GetEntitlementAdditionalNotificationTarget>
      additionalNotificationTargets;
  final List<GetEntitlementApprovalWorkflow> approvalWorkflows;
  final String createTime;
  final List<GetEntitlementEligibleUser> eligibleUsers;
  final String? entitlementId;
  final String etag;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? location;
  final String maxRequestDuration;
  final String name;
  final String? parent;
  final List<GetEntitlementPrivilegedAccess> privilegedAccesses;
  final List<GetEntitlementRequesterJustificationConfig>
      requesterJustificationConfigs;
  final String state;
  final String updateTime;

  GetEntitlementResult({
    required this.additionalNotificationTargets,
    required this.approvalWorkflows,
    required this.createTime,
    required this.eligibleUsers,
    this.entitlementId,
    required this.etag,
    required this.id,
    this.location,
    required this.maxRequestDuration,
    required this.name,
    this.parent,
    required this.privilegedAccesses,
    required this.requesterJustificationConfigs,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalNotificationTargets'] = Input.encodeList<
            GetEntitlementAdditionalNotificationTarget, Map<String, dynamic>>(
        additionalNotificationTargets, (value) => value.toMap());
    map['approvalWorkflows'] =
        Input.encodeList<GetEntitlementApprovalWorkflow, Map<String, dynamic>>(
            approvalWorkflows, (value) => value.toMap());
    map['createTime'] = createTime;
    map['eligibleUsers'] =
        Input.encodeList<GetEntitlementEligibleUser, Map<String, dynamic>>(
            eligibleUsers, (value) => value.toMap());
    final entitlementIdValue = entitlementId;
    if (entitlementIdValue != null) {
      map['entitlementId'] = entitlementIdValue;
    }
    map['etag'] = etag;
    map['id'] = id;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['maxRequestDuration'] = maxRequestDuration;
    map['name'] = name;
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    map['privilegedAccesses'] =
        Input.encodeList<GetEntitlementPrivilegedAccess, Map<String, dynamic>>(
            privilegedAccesses, (value) => value.toMap());
    map['requesterJustificationConfigs'] = Input.encodeList<
            GetEntitlementRequesterJustificationConfig, Map<String, dynamic>>(
        requesterJustificationConfigs, (value) => value.toMap());
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetEntitlementResult.fromMap(Map<String, dynamic> map) {
    return GetEntitlementResult(
      additionalNotificationTargets:
          Input.decodeList<GetEntitlementAdditionalNotificationTarget>(
              map['additionalNotificationTargets'],
              (value) => GetEntitlementAdditionalNotificationTarget.fromMap(
                  (value as Map).cast<String, dynamic>())),
      approvalWorkflows: Input.decodeList<GetEntitlementApprovalWorkflow>(
          map['approvalWorkflows'],
          (value) => GetEntitlementApprovalWorkflow.fromMap(
              (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      eligibleUsers: Input.decodeList<GetEntitlementEligibleUser>(
          map['eligibleUsers'],
          (value) => GetEntitlementEligibleUser.fromMap(
              (value as Map).cast<String, dynamic>())),
      entitlementId:
          map['entitlementId'] == null ? null : map['entitlementId'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maxRequestDuration: map['maxRequestDuration'] as String,
      name: map['name'] as String,
      parent: map['parent'] == null ? null : map['parent'] as String,
      privilegedAccesses: Input.decodeList<GetEntitlementPrivilegedAccess>(
          map['privilegedAccesses'],
          (value) => GetEntitlementPrivilegedAccess.fromMap(
              (value as Map).cast<String, dynamic>())),
      requesterJustificationConfigs:
          Input.decodeList<GetEntitlementRequesterJustificationConfig>(
              map['requesterJustificationConfigs'],
              (value) => GetEntitlementRequesterJustificationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
