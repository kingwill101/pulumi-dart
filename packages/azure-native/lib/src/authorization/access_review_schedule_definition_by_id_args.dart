// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_instance.dart';
import 'access_review_recurrence_range.dart';
import 'access_review_reviewer.dart';

/// {@template pulumi_authorization_access_review_schedule_definition_by_id_args_doc}
/// The set of arguments for AccessReviewScheduleDefinitionById.
/// {@endtemplate}
/// {@macro pulumi_authorization_access_review_schedule_definition_by_id_args_doc}
class AccessReviewScheduleDefinitionByIdArgs {
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
  /// The recurrence type : weekly, monthly, etc.
  final pulumi.Input<String>? type;

  /// Creates a new [AccessReviewScheduleDefinitionByIdArgs].
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
  /// [type] The recurrence type : weekly, monthly, etc.
  AccessReviewScheduleDefinitionByIdArgs({
    bool? autoApplyDecisionsEnabled,
    List<AccessReviewReviewer>? backupReviewers,
    String? defaultDecision,
    bool? defaultDecisionEnabled,
    String? descriptionForAdmins,
    String? descriptionForReviewers,
    String? displayName,
    String? excludeResourceId,
    String? excludeRoleDefinitionId,
    bool? expandNestedMemberships,
    String? inactiveDuration,
    bool? includeAccessBelowResource,
    bool? includeInheritedAccess,
    int? instanceDurationInDays,
    List<AccessReviewInstance>? instances,
    int? interval,
    bool? justificationRequiredOnApproval,
    bool? mailNotificationsEnabled,
    AccessReviewRecurrenceRange? range,
    String? recommendationLookBackDuration,
    bool? recommendationsEnabled,
    bool? reminderNotificationsEnabled,
    List<AccessReviewReviewer>? reviewers,
    String? scheduleDefinitionId,
    String? type,
  }) :
      autoApplyDecisionsEnabled = pulumi.Input.asOptionalInput<bool>(autoApplyDecisionsEnabled),
      backupReviewers = pulumi.Input.asOptionalInput<List<AccessReviewReviewer>>(backupReviewers),
      defaultDecision = pulumi.Input.asOptionalInput<String>(defaultDecision),
      defaultDecisionEnabled = pulumi.Input.asOptionalInput<bool>(defaultDecisionEnabled),
      descriptionForAdmins = pulumi.Input.asOptionalInput<String>(descriptionForAdmins),
      descriptionForReviewers = pulumi.Input.asOptionalInput<String>(descriptionForReviewers),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      excludeResourceId = pulumi.Input.asOptionalInput<String>(excludeResourceId),
      excludeRoleDefinitionId = pulumi.Input.asOptionalInput<String>(excludeRoleDefinitionId),
      expandNestedMemberships = pulumi.Input.asOptionalInput<bool>(expandNestedMemberships),
      inactiveDuration = pulumi.Input.asOptionalInput<String>(inactiveDuration),
      includeAccessBelowResource = pulumi.Input.asOptionalInput<bool>(includeAccessBelowResource),
      includeInheritedAccess = pulumi.Input.asOptionalInput<bool>(includeInheritedAccess),
      instanceDurationInDays = pulumi.Input.asOptionalInput<int>(instanceDurationInDays),
      instances = pulumi.Input.asOptionalInput<List<AccessReviewInstance>>(instances),
      interval = pulumi.Input.asOptionalInput<int>(interval),
      justificationRequiredOnApproval = pulumi.Input.asOptionalInput<bool>(justificationRequiredOnApproval),
      mailNotificationsEnabled = pulumi.Input.asOptionalInput<bool>(mailNotificationsEnabled),
      range = pulumi.Input.asOptionalInput<AccessReviewRecurrenceRange>(range),
      recommendationLookBackDuration = pulumi.Input.asOptionalInput<String>(recommendationLookBackDuration),
      recommendationsEnabled = pulumi.Input.asOptionalInput<bool>(recommendationsEnabled),
      reminderNotificationsEnabled = pulumi.Input.asOptionalInput<bool>(reminderNotificationsEnabled),
      reviewers = pulumi.Input.asOptionalInput<List<AccessReviewReviewer>>(reviewers),
      scheduleDefinitionId = pulumi.Input.asOptionalInput<String>(scheduleDefinitionId),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoApplyDecisionsEnabled': ?autoApplyDecisionsEnabled,
      'backupReviewers': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewReviewer>, List<Map<String, dynamic>>>(backupReviewers, (value) => pulumi.Input.encodeList<AccessReviewReviewer, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'instances': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<AccessReviewInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'interval': ?interval,
      'justificationRequiredOnApproval': ?justificationRequiredOnApproval,
      'mailNotificationsEnabled': ?mailNotificationsEnabled,
      'range': ?pulumi.Input.mapOptionalInputValue<AccessReviewRecurrenceRange, Map<String, dynamic>>(range, (value) => value.toMap()),
      'recommendationLookBackDuration': ?recommendationLookBackDuration,
      'recommendationsEnabled': ?recommendationsEnabled,
      'reminderNotificationsEnabled': ?reminderNotificationsEnabled,
      'reviewers': ?pulumi.Input.mapOptionalInputValue<List<AccessReviewReviewer>, List<Map<String, dynamic>>>(reviewers, (value) => pulumi.Input.encodeList<AccessReviewReviewer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scheduleDefinitionId': ?scheduleDefinitionId,
      'type': ?type,
    };
  }

  factory AccessReviewScheduleDefinitionByIdArgs.fromMap(Map<String, dynamic> map) {
    return AccessReviewScheduleDefinitionByIdArgs(
      autoApplyDecisionsEnabled: map['autoApplyDecisionsEnabled'] == null ? null : map['autoApplyDecisionsEnabled'] as bool,
      backupReviewers: map['backupReviewers'] == null ? null : pulumi.Input.decodeList<AccessReviewReviewer>(map['backupReviewers'], (value) => AccessReviewReviewer.fromMap((value as Map).cast<String, dynamic>())),
      defaultDecision: map['defaultDecision'] == null ? null : map['defaultDecision'] as String,
      defaultDecisionEnabled: map['defaultDecisionEnabled'] == null ? null : map['defaultDecisionEnabled'] as bool,
      descriptionForAdmins: map['descriptionForAdmins'] == null ? null : map['descriptionForAdmins'] as String,
      descriptionForReviewers: map['descriptionForReviewers'] == null ? null : map['descriptionForReviewers'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      excludeResourceId: map['excludeResourceId'] == null ? null : map['excludeResourceId'] as String,
      excludeRoleDefinitionId: map['excludeRoleDefinitionId'] == null ? null : map['excludeRoleDefinitionId'] as String,
      expandNestedMemberships: map['expandNestedMemberships'] == null ? null : map['expandNestedMemberships'] as bool,
      inactiveDuration: map['inactiveDuration'] == null ? null : map['inactiveDuration'] as String,
      includeAccessBelowResource: map['includeAccessBelowResource'] == null ? null : map['includeAccessBelowResource'] as bool,
      includeInheritedAccess: map['includeInheritedAccess'] == null ? null : map['includeInheritedAccess'] as bool,
      instanceDurationInDays: map['instanceDurationInDays'] == null ? null : map['instanceDurationInDays'] as int,
      instances: map['instances'] == null ? null : pulumi.Input.decodeList<AccessReviewInstance>(map['instances'], (value) => AccessReviewInstance.fromMap((value as Map).cast<String, dynamic>())),
      interval: map['interval'] == null ? null : map['interval'] as int,
      justificationRequiredOnApproval: map['justificationRequiredOnApproval'] == null ? null : map['justificationRequiredOnApproval'] as bool,
      mailNotificationsEnabled: map['mailNotificationsEnabled'] == null ? null : map['mailNotificationsEnabled'] as bool,
      range: map['range'] == null ? null : AccessReviewRecurrenceRange.fromMap((map['range'] as Map).cast<String, dynamic>()),
      recommendationLookBackDuration: map['recommendationLookBackDuration'] == null ? null : map['recommendationLookBackDuration'] as String,
      recommendationsEnabled: map['recommendationsEnabled'] == null ? null : map['recommendationsEnabled'] as bool,
      reminderNotificationsEnabled: map['reminderNotificationsEnabled'] == null ? null : map['reminderNotificationsEnabled'] as bool,
      reviewers: map['reviewers'] == null ? null : pulumi.Input.decodeList<AccessReviewReviewer>(map['reviewers'], (value) => AccessReviewReviewer.fromMap((value as Map).cast<String, dynamic>())),
      scheduleDefinitionId: map['scheduleDefinitionId'] == null ? null : map['scheduleDefinitionId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

