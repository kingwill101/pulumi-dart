// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_instance_response.dart';
import 'access_review_recurrence_range_response.dart';
import 'access_review_reviewer_response.dart';
import 'access_review_scope_response.dart';

/// Result data returned by getScopeAccessReviewScheduleDefinitionById.
class GetScopeAccessReviewScheduleDefinitionByIdResult {
  /// Flag to indicate whether auto-apply capability, to automatically change the target object access resource, is enabled. If not enabled, a user must, after the review completes, apply the access review.
  final bool? autoApplyDecisionsEnabled;
  /// The Azure API version of the resource.
  final String azureApiVersion;
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
  /// The access review schedule definition id.
  final String id;
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
  /// The access review schedule definition unique id.
  final String name;
  /// The identity id
  final String principalId;
  /// The identity display name
  final String principalName;
  /// The identity type : user/servicePrincipal
  final String principalType;
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
  final String reviewersType;
  /// This is used to define what to include in scope of the review. The scope definition includes the resourceId and roleDefinitionId.
  final AccessReviewScopeResponse scope;
  /// This read-only field specifies the status of an accessReview.
  final String status;
  /// The resource type.
  final String type;
  /// The user principal name(if valid)
  final String userPrincipalName;

  /// Creates a new [GetScopeAccessReviewScheduleDefinitionByIdResult].
  /// [autoApplyDecisionsEnabled] Flag to indicate whether auto-apply capability, to automatically change the target object access resource, is enabled. If not enabled, a user must, after the review completes, apply the access review.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backupReviewers] This is the collection of backup reviewers.
  /// [defaultDecision] This specifies the behavior for the autoReview feature when an access review completes.
  /// [defaultDecisionEnabled] Flag to indicate whether reviewers are required to provide a justification when reviewing access.
  /// [descriptionForAdmins] The description provided by the access review creator and visible to admins.
  /// [descriptionForReviewers] The description provided by the access review creator to be shown to reviewers.
  /// [displayName] The display name for the schedule definition.
  /// [id] The access review schedule definition id.
  /// [instanceDurationInDays] The duration in days for an instance.
  /// [instances] This is the collection of instances returned when one does an expand on it.
  /// [interval] The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  /// [justificationRequiredOnApproval] Flag to indicate whether the reviewer is required to pass justification when recording a decision.
  /// [mailNotificationsEnabled] Flag to indicate whether sending mails to reviewers and the review creator is enabled.
  /// [name] The access review schedule definition unique id.
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
  /// [type] The resource type.
  /// [userPrincipalName] The user principal name(if valid)
  GetScopeAccessReviewScheduleDefinitionByIdResult({
    this.autoApplyDecisionsEnabled,
    required this.azureApiVersion,
    this.backupReviewers,
    this.defaultDecision,
    this.defaultDecisionEnabled,
    this.descriptionForAdmins,
    this.descriptionForReviewers,
    this.displayName,
    required this.id,
    this.instanceDurationInDays,
    this.instances,
    this.interval,
    this.justificationRequiredOnApproval,
    this.mailNotificationsEnabled,
    required this.name,
    required this.principalId,
    required this.principalName,
    required this.principalType,
    this.range,
    this.recommendationLookBackDuration,
    this.recommendationsEnabled,
    this.reminderNotificationsEnabled,
    this.reviewers,
    required this.reviewersType,
    required this.scope,
    required this.status,
    required this.type,
    required this.userPrincipalName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApplyDecisionsEnabled': ?autoApplyDecisionsEnabled,
      'azureApiVersion': azureApiVersion,
      'backupReviewers': ?backupReviewers == null ? null : pulumi.Input.encodeList<AccessReviewReviewerResponse, Map<String, dynamic>>(backupReviewers!, (value) => value.toMap()),
      'defaultDecision': ?defaultDecision,
      'defaultDecisionEnabled': ?defaultDecisionEnabled,
      'descriptionForAdmins': ?descriptionForAdmins,
      'descriptionForReviewers': ?descriptionForReviewers,
      'displayName': ?displayName,
      'id': id,
      'instanceDurationInDays': ?instanceDurationInDays,
      'instances': ?instances == null ? null : pulumi.Input.encodeList<AccessReviewInstanceResponse, Map<String, dynamic>>(instances!, (value) => value.toMap()),
      'interval': ?interval,
      'justificationRequiredOnApproval': ?justificationRequiredOnApproval,
      'mailNotificationsEnabled': ?mailNotificationsEnabled,
      'name': name,
      'principalId': principalId,
      'principalName': principalName,
      'principalType': principalType,
      'range': ?range == null ? null : range!.toMap(),
      'recommendationLookBackDuration': ?recommendationLookBackDuration,
      'recommendationsEnabled': ?recommendationsEnabled,
      'reminderNotificationsEnabled': ?reminderNotificationsEnabled,
      'reviewers': ?reviewers == null ? null : pulumi.Input.encodeList<AccessReviewReviewerResponse, Map<String, dynamic>>(reviewers!, (value) => value.toMap()),
      'reviewersType': reviewersType,
      'scope': scope.toMap(),
      'status': status,
      'type': type,
      'userPrincipalName': userPrincipalName,
    };
  }

  factory GetScopeAccessReviewScheduleDefinitionByIdResult.fromMap(Map<String, dynamic> map) {
    return GetScopeAccessReviewScheduleDefinitionByIdResult(
      autoApplyDecisionsEnabled: map['autoApplyDecisionsEnabled'] == null ? null : map['autoApplyDecisionsEnabled'] as bool,
      azureApiVersion: map['azureApiVersion'] as String,
      backupReviewers: map['backupReviewers'] == null ? null : pulumi.Input.decodeList<AccessReviewReviewerResponse>(map['backupReviewers'], (value) => AccessReviewReviewerResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultDecision: map['defaultDecision'] == null ? null : map['defaultDecision'] as String,
      defaultDecisionEnabled: map['defaultDecisionEnabled'] == null ? null : map['defaultDecisionEnabled'] as bool,
      descriptionForAdmins: map['descriptionForAdmins'] == null ? null : map['descriptionForAdmins'] as String,
      descriptionForReviewers: map['descriptionForReviewers'] == null ? null : map['descriptionForReviewers'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      id: map['id'] as String,
      instanceDurationInDays: map['instanceDurationInDays'] == null ? null : map['instanceDurationInDays'] as int,
      instances: map['instances'] == null ? null : pulumi.Input.decodeList<AccessReviewInstanceResponse>(map['instances'], (value) => AccessReviewInstanceResponse.fromMap((value as Map).cast<String, dynamic>())),
      interval: map['interval'] == null ? null : map['interval'] as int,
      justificationRequiredOnApproval: map['justificationRequiredOnApproval'] == null ? null : map['justificationRequiredOnApproval'] as bool,
      mailNotificationsEnabled: map['mailNotificationsEnabled'] == null ? null : map['mailNotificationsEnabled'] as bool,
      name: map['name'] as String,
      principalId: map['principalId'] as String,
      principalName: map['principalName'] as String,
      principalType: map['principalType'] as String,
      range: map['range'] == null ? null : AccessReviewRecurrenceRangeResponse.fromMap((map['range'] as Map).cast<String, dynamic>()),
      recommendationLookBackDuration: map['recommendationLookBackDuration'] == null ? null : map['recommendationLookBackDuration'] as String,
      recommendationsEnabled: map['recommendationsEnabled'] == null ? null : map['recommendationsEnabled'] as bool,
      reminderNotificationsEnabled: map['reminderNotificationsEnabled'] == null ? null : map['reminderNotificationsEnabled'] as bool,
      reviewers: map['reviewers'] == null ? null : pulumi.Input.decodeList<AccessReviewReviewerResponse>(map['reviewers'], (value) => AccessReviewReviewerResponse.fromMap((value as Map).cast<String, dynamic>())),
      reviewersType: map['reviewersType'] as String,
      scope: AccessReviewScopeResponse.fromMap((map['scope'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      type: map['type'] as String,
      userPrincipalName: map['userPrincipalName'] as String,
    );
  }
}

