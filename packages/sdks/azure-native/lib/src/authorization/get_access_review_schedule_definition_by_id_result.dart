// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_instance_response.dart';
import 'access_review_recurrence_range_response.dart';
import 'access_review_reviewer_response.dart';
import 'access_review_scope_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccessReviewScheduleDefinitionById.
class GetAccessReviewScheduleDefinitionByIdResult {
  /// Flag to indicate whether auto-apply capability, to automatically change the target object access resource, is enabled. If not enabled, a user must, after the review completes, apply the access review.
  final bool? autoApplyDecisionsEnabled;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// This is the collection of backup reviewers.
  final List<AccessReviewReviewerResponse>? backupReviewers;
  /// This specifies the behavior for the autoReview feature when an access review completes.
  final String? defaultDecision;
  /// Flag to indicate whether reviewers are required to provide a justification when reviewing access.
  final bool? defaultDecisionEnabled;
  /// The description provided by the access review creator and visible to admins.
  final String? descriptionForAdmins;
  /// The description provided by the access review creator to be shown to reviewers.
  final String? descriptionForReviewers;
  /// The display name for the schedule definition.
  final String? displayName;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The duration in days for an instance.
  final int? instanceDurationInDays;
  /// This is the collection of instances returned when one does an expand on it.
  final List<AccessReviewInstanceResponse>? instances;
  /// The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  final int? interval;
  /// Flag to indicate whether the reviewer is required to pass justification when recording a decision.
  final bool? justificationRequiredOnApproval;
  /// Flag to indicate whether sending mails to reviewers and the review creator is enabled.
  final bool? mailNotificationsEnabled;
  /// The name of the resource
  final String? name;
  /// The identity id
  final String? principalId;
  /// The identity display name
  final String? principalName;
  /// The identity type : user/servicePrincipal
  final String? principalType;
  /// Access Review schedule definition recurrence range.
  final AccessReviewRecurrenceRangeResponse? range;
  /// Recommendations for access reviews are calculated by looking back at 30 days of data(w.r.t the start date of the review) by default. However, in some scenarios, customers want to change how far back to look at and want to configure 60 days, 90 days, etc. instead. This setting allows customers to configure this duration. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  final String? recommendationLookBackDuration;
  /// Flag to indicate whether showing recommendations to reviewers is enabled.
  final bool? recommendationsEnabled;
  /// Flag to indicate whether sending reminder emails to reviewers are enabled.
  final bool? reminderNotificationsEnabled;
  /// This is the collection of reviewers.
  final List<AccessReviewReviewerResponse>? reviewers;
  /// This field specifies the type of reviewers for a review. Usually for a review, reviewers are explicitly assigned. However, in some cases, the reviewers may not be assigned and instead be chosen dynamically. For example managers review or self review.
  final String? reviewersType;
  /// This is used to define what to include in scope of the review. The scope definition includes the resourceId and roleDefinitionId.
  final AccessReviewScopeResponse? scope;
  /// This read-only field specifies the status of an accessReview.
  final String? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// The user principal name(if valid)
  final String? userPrincipalName;

  /// Creates a new [GetAccessReviewScheduleDefinitionByIdResult].
  /// [autoApplyDecisionsEnabled] Flag to indicate whether auto-apply capability, to automatically change the target object access resource, is enabled. If not enabled, a user must, after the review completes, apply the access review.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backupReviewers] This is the collection of backup reviewers.
  /// [defaultDecision] This specifies the behavior for the autoReview feature when an access review completes.
  /// [defaultDecisionEnabled] Flag to indicate whether reviewers are required to provide a justification when reviewing access.
  /// [descriptionForAdmins] The description provided by the access review creator and visible to admins.
  /// [descriptionForReviewers] The description provided by the access review creator to be shown to reviewers.
  /// [displayName] The display name for the schedule definition.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [instanceDurationInDays] The duration in days for an instance.
  /// [instances] This is the collection of instances returned when one does an expand on it.
  /// [interval] The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  /// [justificationRequiredOnApproval] Flag to indicate whether the reviewer is required to pass justification when recording a decision.
  /// [mailNotificationsEnabled] Flag to indicate whether sending mails to reviewers and the review creator is enabled.
  /// [name] The name of the resource
  /// [principalId] The identity id
  /// [principalName] The identity display name
  /// [principalType] The identity type : user/servicePrincipal
  /// [range] Access Review schedule definition recurrence range.
  /// [recommendationLookBackDuration] Recommendations for access reviews are calculated by looking back at 30 days of data(w.r.t the start date of the review) by default. However, in some scenarios, customers want to change how far back to look at and want to configure 60 days, 90 days, etc. instead. This setting allows customers to configure this duration. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  /// [recommendationsEnabled] Flag to indicate whether showing recommendations to reviewers is enabled.
  /// [reminderNotificationsEnabled] Flag to indicate whether sending reminder emails to reviewers are enabled.
  /// [reviewers] This is the collection of reviewers.
  /// [reviewersType] This field specifies the type of reviewers for a review. Usually for a review, reviewers are explicitly assigned. However, in some cases, the reviewers may not be assigned and instead be chosen dynamically. For example managers review or self review.
  /// [scope] This is used to define what to include in scope of the review. The scope definition includes the resourceId and roleDefinitionId.
  /// [status] This read-only field specifies the status of an accessReview.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [userPrincipalName] The user principal name(if valid)
  const GetAccessReviewScheduleDefinitionByIdResult({
    this.autoApplyDecisionsEnabled,
    this.azureApiVersion,
    this.backupReviewers,
    this.defaultDecision,
    this.defaultDecisionEnabled,
    this.descriptionForAdmins,
    this.descriptionForReviewers,
    this.displayName,
    this.id,
    this.instanceDurationInDays,
    this.instances,
    this.interval,
    this.justificationRequiredOnApproval,
    this.mailNotificationsEnabled,
    this.name,
    this.principalId,
    this.principalName,
    this.principalType,
    this.range,
    this.recommendationLookBackDuration,
    this.recommendationsEnabled,
    this.reminderNotificationsEnabled,
    this.reviewers,
    this.reviewersType,
    this.scope,
    this.status,
    this.systemData,
    this.type,
    this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApplyDecisionsEnabled': ?autoApplyDecisionsEnabled,
      'azureApiVersion': ?azureApiVersion,
      'backupReviewers': ?(() { final guardedValue = backupReviewers; if (guardedValue == null) return null; return pulumi.Input.encodeList<AccessReviewReviewerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'defaultDecision': ?defaultDecision,
      'defaultDecisionEnabled': ?defaultDecisionEnabled,
      'descriptionForAdmins': ?descriptionForAdmins,
      'descriptionForReviewers': ?descriptionForReviewers,
      'displayName': ?displayName,
      'id': ?id,
      'instanceDurationInDays': ?instanceDurationInDays,
      'instances': ?(() { final guardedValue = instances; if (guardedValue == null) return null; return pulumi.Input.encodeList<AccessReviewInstanceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'interval': ?interval,
      'justificationRequiredOnApproval': ?justificationRequiredOnApproval,
      'mailNotificationsEnabled': ?mailNotificationsEnabled,
      'name': ?name,
      'principalId': ?principalId,
      'principalName': ?principalName,
      'principalType': ?principalType,
      'range': ?range?.toMap(),
      'recommendationLookBackDuration': ?recommendationLookBackDuration,
      'recommendationsEnabled': ?recommendationsEnabled,
      'reminderNotificationsEnabled': ?reminderNotificationsEnabled,
      'reviewers': ?(() { final guardedValue = reviewers; if (guardedValue == null) return null; return pulumi.Input.encodeList<AccessReviewReviewerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'reviewersType': ?reviewersType,
      'scope': ?scope?.toMap(),
      'status': ?status,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'userPrincipalName': ?userPrincipalName,
    };
  }

  factory GetAccessReviewScheduleDefinitionByIdResult.fromMap(Map<String, dynamic> map) {
    return GetAccessReviewScheduleDefinitionByIdResult(
      autoApplyDecisionsEnabled: (() { final guardedValue = map['autoApplyDecisionsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupReviewers: (() { final guardedValue = map['backupReviewers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessReviewReviewerResponse>(guardedValue, (value) => AccessReviewReviewerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      defaultDecision: (() { final guardedValue = map['defaultDecision']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultDecisionEnabled: (() { final guardedValue = map['defaultDecisionEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      descriptionForAdmins: (() { final guardedValue = map['descriptionForAdmins']; if (guardedValue == null) return null; return guardedValue as String; })(),
      descriptionForReviewers: (() { final guardedValue = map['descriptionForReviewers']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceDurationInDays: (() { final guardedValue = map['instanceDurationInDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessReviewInstanceResponse>(guardedValue, (value) => AccessReviewInstanceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      justificationRequiredOnApproval: (() { final guardedValue = map['justificationRequiredOnApproval']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      mailNotificationsEnabled: (() { final guardedValue = map['mailNotificationsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalName: (() { final guardedValue = map['principalName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      principalType: (() { final guardedValue = map['principalType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      range: (() { final guardedValue = map['range']; if (guardedValue == null) return null; return AccessReviewRecurrenceRangeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      recommendationLookBackDuration: (() { final guardedValue = map['recommendationLookBackDuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recommendationsEnabled: (() { final guardedValue = map['recommendationsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      reminderNotificationsEnabled: (() { final guardedValue = map['reminderNotificationsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      reviewers: (() { final guardedValue = map['reviewers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessReviewReviewerResponse>(guardedValue, (value) => AccessReviewReviewerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      reviewersType: (() { final guardedValue = map['reviewersType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return AccessReviewScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userPrincipalName: (() { final guardedValue = map['userPrincipalName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
