// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_instance.dart';
import 'access_review_recurrence_range.dart';
import 'access_review_reviewer.dart';

/// {@template pulumi_authorization_scope_access_review_schedule_definition_by_id_args_doc}
/// The set of arguments for ScopeAccessReviewScheduleDefinitionById.
/// {@endtemplate}
/// {@macro pulumi_authorization_scope_access_review_schedule_definition_by_id_args_doc}
class ScopeAccessReviewScheduleDefinitionByIdArgs {
  /// Flag to indicate whether auto-apply capability, to automatically change the target object access resource, is enabled. If not enabled, a user must, after the review completes, apply the access review.
  final pulumi.Input<bool>? autoApplyDecisionsEnabled;

  /// This is the collection of backup reviewers.
  final pulumi.Input<List<AccessReviewReviewer>>? backupReviewers;

  /// This specifies the behavior for the autoReview feature when an access review completes.
  final pulumi.Input<String>? defaultDecision;

  /// Flag to indicate whether reviewers are required to provide a justification when reviewing access.
  final pulumi.Input<bool>? defaultDecisionEnabled;

  /// The description provided by the access review creator and visible to admins.
  final pulumi.Input<String>? descriptionForAdmins;

  /// The description provided by the access review creator to be shown to reviewers.
  final pulumi.Input<String>? descriptionForReviewers;

  /// The display name for the schedule definition.
  final pulumi.Input<String>? displayName;

  /// This is used to indicate the resource id(s) to exclude
  final pulumi.Input<String>? excludeResourceId;

  /// This is used to indicate the role definition id(s) to exclude
  final pulumi.Input<String>? excludeRoleDefinitionId;

  /// Flag to indicate whether to expand nested memberships or not.
  final pulumi.Input<bool>? expandNestedMemberships;

  /// Duration users are inactive for. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  final pulumi.Input<String>? inactiveDuration;

  /// Flag to indicate whether to expand nested memberships or not.
  final pulumi.Input<bool>? includeAccessBelowResource;

  /// Flag to indicate whether to expand nested memberships or not.
  final pulumi.Input<bool>? includeInheritedAccess;

  /// The duration in days for an instance.
  final pulumi.Input<int>? instanceDurationInDays;

  /// This is the collection of instances returned when one does an expand on it.
  final pulumi.Input<List<AccessReviewInstance>>? instances;

  /// The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  final pulumi.Input<int>? interval;

  /// Flag to indicate whether the reviewer is required to pass justification when recording a decision.
  final pulumi.Input<bool>? justificationRequiredOnApproval;

  /// Flag to indicate whether sending mails to reviewers and the review creator is enabled.
  final pulumi.Input<bool>? mailNotificationsEnabled;

  /// Access Review schedule definition recurrence range.
  final pulumi.Input<AccessReviewRecurrenceRange>? range;

  /// Recommendations for access reviews are calculated by looking back at 30 days of data(w.r.t the start date of the review) by default. However, in some scenarios, customers want to change how far back to look at and want to configure 60 days, 90 days, etc. instead. This setting allows customers to configure this duration. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  final pulumi.Input<String>? recommendationLookBackDuration;

  /// Flag to indicate whether showing recommendations to reviewers is enabled.
  final pulumi.Input<bool>? recommendationsEnabled;

  /// Flag to indicate whether sending reminder emails to reviewers are enabled.
  final pulumi.Input<bool>? reminderNotificationsEnabled;

  /// This is the collection of reviewers.
  final pulumi.Input<List<AccessReviewReviewer>>? reviewers;

  /// The id of the access review schedule definition.
  final pulumi.Input<String>? scheduleDefinitionId;

  /// The scope of the resource.
  final pulumi.Input<String> scope;

  /// The recurrence type : weekly, monthly, etc.
  final pulumi.Input<String>? type;

  /// Creates a new [ScopeAccessReviewScheduleDefinitionByIdArgs].
  /// [autoApplyDecisionsEnabled] Flag to indicate whether auto-apply capability, to automatically change the target object access resource, is enabled. If not enabled, a user must, after the review completes, apply the access review.
  /// [backupReviewers] This is the collection of backup reviewers.
  /// [defaultDecision] This specifies the behavior for the autoReview feature when an access review completes.
  /// [defaultDecisionEnabled] Flag to indicate whether reviewers are required to provide a justification when reviewing access.
  /// [descriptionForAdmins] The description provided by the access review creator and visible to admins.
  /// [descriptionForReviewers] The description provided by the access review creator to be shown to reviewers.
  /// [displayName] The display name for the schedule definition.
  /// [excludeResourceId] This is used to indicate the resource id(s) to exclude
  /// [excludeRoleDefinitionId] This is used to indicate the role definition id(s) to exclude
  /// [expandNestedMemberships] Flag to indicate whether to expand nested memberships or not.
  /// [inactiveDuration] Duration users are inactive for. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  /// [includeAccessBelowResource] Flag to indicate whether to expand nested memberships or not.
  /// [includeInheritedAccess] Flag to indicate whether to expand nested memberships or not.
  /// [instanceDurationInDays] The duration in days for an instance.
  /// [instances] This is the collection of instances returned when one does an expand on it.
  /// [interval] The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  /// [justificationRequiredOnApproval] Flag to indicate whether the reviewer is required to pass justification when recording a decision.
  /// [mailNotificationsEnabled] Flag to indicate whether sending mails to reviewers and the review creator is enabled.
  /// [range] Access Review schedule definition recurrence range.
  /// [recommendationLookBackDuration] Recommendations for access reviews are calculated by looking back at 30 days of data(w.r.t the start date of the review) by default. However, in some scenarios, customers want to change how far back to look at and want to configure 60 days, 90 days, etc. instead. This setting allows customers to configure this duration. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  /// [recommendationsEnabled] Flag to indicate whether showing recommendations to reviewers is enabled.
  /// [reminderNotificationsEnabled] Flag to indicate whether sending reminder emails to reviewers are enabled.
  /// [reviewers] This is the collection of reviewers.
  /// [scheduleDefinitionId] The id of the access review schedule definition.
  /// [scope] The scope of the resource.
  /// [type] The recurrence type : weekly, monthly, etc.
  ScopeAccessReviewScheduleDefinitionByIdArgs({
    this.autoApplyDecisionsEnabled,
    this.backupReviewers,
    this.defaultDecision,
    this.defaultDecisionEnabled,
    this.descriptionForAdmins,
    this.descriptionForReviewers,
    this.displayName,
    this.excludeResourceId,
    this.excludeRoleDefinitionId,
    this.expandNestedMemberships,
    this.inactiveDuration,
    this.includeAccessBelowResource,
    this.includeInheritedAccess,
    this.instanceDurationInDays,
    this.instances,
    this.interval,
    this.justificationRequiredOnApproval,
    this.mailNotificationsEnabled,
    this.range,
    this.recommendationLookBackDuration,
    this.recommendationsEnabled,
    this.reminderNotificationsEnabled,
    this.reviewers,
    this.scheduleDefinitionId,
    required this.scope,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApplyDecisionsEnabled': ?autoApplyDecisionsEnabled,
      'backupReviewers':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccessReviewReviewer>,
            List<Map<String, dynamic>>
          >(
            backupReviewers,
            (value) =>
                pulumi.Input.encodeList<
                  AccessReviewReviewer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultDecision': ?defaultDecision,
      'defaultDecisionEnabled': ?defaultDecisionEnabled,
      'descriptionForAdmins': ?descriptionForAdmins,
      'descriptionForReviewers': ?descriptionForReviewers,
      'displayName': ?displayName,
      'excludeResourceId': ?excludeResourceId,
      'excludeRoleDefinitionId': ?excludeRoleDefinitionId,
      'expandNestedMemberships': ?expandNestedMemberships,
      'inactiveDuration': ?inactiveDuration,
      'includeAccessBelowResource': ?includeAccessBelowResource,
      'includeInheritedAccess': ?includeInheritedAccess,
      'instanceDurationInDays': ?instanceDurationInDays,
      'instances':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccessReviewInstance>,
            List<Map<String, dynamic>>
          >(
            instances,
            (value) =>
                pulumi.Input.encodeList<
                  AccessReviewInstance,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'interval': ?interval,
      'justificationRequiredOnApproval': ?justificationRequiredOnApproval,
      'mailNotificationsEnabled': ?mailNotificationsEnabled,
      'range':
          ?pulumi.Input.mapOptionalInputValue<
            AccessReviewRecurrenceRange,
            Map<String, dynamic>
          >(range, (value) => value.toMap()),
      'recommendationLookBackDuration': ?recommendationLookBackDuration,
      'recommendationsEnabled': ?recommendationsEnabled,
      'reminderNotificationsEnabled': ?reminderNotificationsEnabled,
      'reviewers':
          ?pulumi.Input.mapOptionalInputValue<
            List<AccessReviewReviewer>,
            List<Map<String, dynamic>>
          >(
            reviewers,
            (value) =>
                pulumi.Input.encodeList<
                  AccessReviewReviewer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'scheduleDefinitionId': ?scheduleDefinitionId,
      'scope': scope,
      'type': ?type,
    };
  }

  factory ScopeAccessReviewScheduleDefinitionByIdArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScopeAccessReviewScheduleDefinitionByIdArgs(
      autoApplyDecisionsEnabled: (() {
        final guardedValue = map['autoApplyDecisionsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      backupReviewers: (() {
        final guardedValue = map['backupReviewers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccessReviewReviewer>(
            guardedValue,
            (value) => AccessReviewReviewer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      defaultDecision: (() {
        final guardedValue = map['defaultDecision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultDecisionEnabled: (() {
        final guardedValue = map['defaultDecisionEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      descriptionForAdmins: (() {
        final guardedValue = map['descriptionForAdmins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      descriptionForReviewers: (() {
        final guardedValue = map['descriptionForReviewers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludeResourceId: (() {
        final guardedValue = map['excludeResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludeRoleDefinitionId: (() {
        final guardedValue = map['excludeRoleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expandNestedMemberships: (() {
        final guardedValue = map['expandNestedMemberships'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      inactiveDuration: (() {
        final guardedValue = map['inactiveDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      includeAccessBelowResource: (() {
        final guardedValue = map['includeAccessBelowResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      includeInheritedAccess: (() {
        final guardedValue = map['includeInheritedAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceDurationInDays: (() {
        final guardedValue = map['instanceDurationInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      instances: (() {
        final guardedValue = map['instances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccessReviewInstance>(
            guardedValue,
            (value) => AccessReviewInstance.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      interval: (() {
        final guardedValue = map['interval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      justificationRequiredOnApproval: (() {
        final guardedValue = map['justificationRequiredOnApproval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      mailNotificationsEnabled: (() {
        final guardedValue = map['mailNotificationsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      range: (() {
        final guardedValue = map['range'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AccessReviewRecurrenceRange.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      recommendationLookBackDuration: (() {
        final guardedValue = map['recommendationLookBackDuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recommendationsEnabled: (() {
        final guardedValue = map['recommendationsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      reminderNotificationsEnabled: (() {
        final guardedValue = map['reminderNotificationsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      reviewers: (() {
        final guardedValue = map['reviewers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AccessReviewReviewer>(
            guardedValue,
            (value) => AccessReviewReviewer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      scheduleDefinitionId: (() {
        final guardedValue = map['scheduleDefinitionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: pulumi.Input.fromValue(map['scope'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
