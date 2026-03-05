import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_recurrence_range_response.dart';
import 'access_review_schedule_definition_by_id_args.dart';
import 'access_review_scope_response.dart';

/// Access Review Schedule Definition.
///
/// Uses Azure REST API version 2021-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-12-01-preview.
///
/// Other available API versions: 2021-03-01-preview, 2021-07-01-preview, 2021-11-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native authorization [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:authorization:AccessReviewScheduleDefinitionById myresource1 /subscriptions/{subscriptionId}/providers/Microsoft.Authorization/accessReviewScheduleDefinitions/{scheduleDefinitionId}
/// ```
class AccessReviewScheduleDefinitionById extends pulumi.CustomResource {
  /// Flag to indicate whether auto-apply capability, to automatically change the target object access resource, is enabled. If not enabled, a user must, after the review completes, apply the access review.
  late final pulumi.Output<bool?> autoApplyDecisionsEnabled;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// This is the collection of backup reviewers.
  late final pulumi.Output<List<Map<String, dynamic>>?> backupReviewers;
  /// This specifies the behavior for the autoReview feature when an access review completes.
  late final pulumi.Output<String?> defaultDecision;
  /// Flag to indicate whether reviewers are required to provide a justification when reviewing access.
  late final pulumi.Output<bool?> defaultDecisionEnabled;
  /// The description provided by the access review creator and visible to admins.
  late final pulumi.Output<String?> descriptionForAdmins;
  /// The description provided by the access review creator to be shown to reviewers.
  late final pulumi.Output<String?> descriptionForReviewers;
  /// The display name for the schedule definition.
  late final pulumi.Output<String?> displayName;
  /// The duration in days for an instance.
  late final pulumi.Output<int?> instanceDurationInDays;
  /// This is the collection of instances returned when one does an expand on it.
  late final pulumi.Output<List<Map<String, dynamic>>?> instances;
  /// The interval for recurrence. For a quarterly review, the interval is 3 for type : absoluteMonthly.
  late final pulumi.Output<int?> interval;
  /// Flag to indicate whether the reviewer is required to pass justification when recording a decision.
  late final pulumi.Output<bool?> justificationRequiredOnApproval;
  /// Flag to indicate whether sending mails to reviewers and the review creator is enabled.
  late final pulumi.Output<bool?> mailNotificationsEnabled;
  /// The access review schedule definition unique id.
  late final pulumi.Output<String> name;
  /// The identity id
  late final pulumi.Output<String> principalId;
  /// The identity display name
  late final pulumi.Output<String> principalName;
  /// The identity type : user/servicePrincipal
  late final pulumi.Output<String> principalType;
  /// Access Review schedule definition recurrence range.
  late final pulumi.Output<AccessReviewRecurrenceRangeResponse?> range;
  /// Recommendations for access reviews are calculated by looking back at 30 days of data(w.r.t the start date of the review) by default. However, in some scenarios, customers want to change how far back to look at and want to configure 60 days, 90 days, etc. instead. This setting allows customers to configure this duration. The value should be in ISO  8601 format (http://en.wikipedia.org/wiki/ISO_8601#Durations).This code can be used to convert TimeSpan to a valid interval string: XmlConvert.ToString(new TimeSpan(hours, minutes, seconds))
  late final pulumi.Output<String?> recommendationLookBackDuration;
  /// Flag to indicate whether showing recommendations to reviewers is enabled.
  late final pulumi.Output<bool?> recommendationsEnabled;
  /// Flag to indicate whether sending reminder emails to reviewers are enabled.
  late final pulumi.Output<bool?> reminderNotificationsEnabled;
  /// This is the collection of reviewers.
  late final pulumi.Output<List<Map<String, dynamic>>?> reviewers;
  /// This field specifies the type of reviewers for a review. Usually for a review, reviewers are explicitly assigned. However, in some cases, the reviewers may not be assigned and instead be chosen dynamically. For example managers review or self review.
  late final pulumi.Output<String> reviewersType;
  /// This is used to define what to include in scope of the review. The scope definition includes the resourceId and roleDefinitionId.
  late final pulumi.Output<AccessReviewScopeResponse> scope;
  /// This read-only field specifies the status of an accessReview.
  late final pulumi.Output<String> status;
  /// The resource type.
  late final pulumi.Output<String> type;
  /// The user principal name(if valid)
  late final pulumi.Output<String> userPrincipalName;

  /// Creates a new [AccessReviewScheduleDefinitionById].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessReviewScheduleDefinitionById]. {@macro pulumi_authorization_access_review_schedule_definition_by_id_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessReviewScheduleDefinitionById(
    String name, {
    AccessReviewScheduleDefinitionByIdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:AccessReviewScheduleDefinitionById',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoApplyDecisionsEnabled = registerOutput<bool?>('autoApplyDecisionsEnabled');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backupReviewers = registerOutput<List<Map<String, dynamic>>?>('backupReviewers');
    defaultDecision = registerOutput<String?>('defaultDecision');
    defaultDecisionEnabled = registerOutput<bool?>('defaultDecisionEnabled');
    descriptionForAdmins = registerOutput<String?>('descriptionForAdmins');
    descriptionForReviewers = registerOutput<String?>('descriptionForReviewers');
    displayName = registerOutput<String?>('displayName');
    instanceDurationInDays = registerOutput<int?>('instanceDurationInDays');
    instances = registerOutput<List<Map<String, dynamic>>?>('instances');
    interval = registerOutput<int?>('interval');
    justificationRequiredOnApproval = registerOutput<bool?>('justificationRequiredOnApproval');
    mailNotificationsEnabled = registerOutput<bool?>('mailNotificationsEnabled');
    this.name = registerOutput<String>('name');
    principalId = registerOutput<String>('principalId');
    principalName = registerOutput<String>('principalName');
    principalType = registerOutput<String>('principalType');
    range = registerOutput<AccessReviewRecurrenceRangeResponse?>('range', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessReviewRecurrenceRangeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    recommendationLookBackDuration = registerOutput<String?>('recommendationLookBackDuration');
    recommendationsEnabled = registerOutput<bool?>('recommendationsEnabled');
    reminderNotificationsEnabled = registerOutput<bool?>('reminderNotificationsEnabled');
    reviewers = registerOutput<List<Map<String, dynamic>>?>('reviewers');
    reviewersType = registerOutput<String>('reviewersType');
    scope = registerOutput<AccessReviewScopeResponse>('scope', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccessReviewScopeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
    userPrincipalName = registerOutput<String>('userPrincipalName');
  }
}
