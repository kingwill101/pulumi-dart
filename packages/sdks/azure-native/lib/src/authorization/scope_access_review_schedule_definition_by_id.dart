import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_review_instance_response.dart';
import 'access_review_recurrence_range_response.dart';
import 'access_review_reviewer_response.dart';
import 'access_review_scope_response.dart';
import 'scope_access_review_schedule_definition_by_id_args.dart';

/// Access Review Schedule Definition.
///
/// Uses Azure REST API version 2021-12-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-12-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutAccessReview
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scopeAccessReviewScheduleDefinitionById = new AzureNative.Authorization.ScopeAccessReviewScheduleDefinitionById("scopeAccessReviewScheduleDefinitionById", new()
///     {
///         ScheduleDefinitionId = "fa73e90b-5bf1-45fd-a182-35ce5fc0674d",
///         Scope = "subscriptions/fa73e90b-5bf1-45fd-a182-35ce5fc0674d",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	authorization "github.com/pulumi/pulumi-azure-native-sdk/authorization/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := authorization.NewScopeAccessReviewScheduleDefinitionById(ctx, "scopeAccessReviewScheduleDefinitionById", &authorization.ScopeAccessReviewScheduleDefinitionByIdArgs{
/// 			ScheduleDefinitionId: pulumi.String("fa73e90b-5bf1-45fd-a182-35ce5fc0674d"),
/// 			Scope:                pulumi.String("subscriptions/fa73e90b-5bf1-45fd-a182-35ce5fc0674d"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.authorization.ScopeAccessReviewScheduleDefinitionById;
/// import com.pulumi.azurenative.authorization.ScopeAccessReviewScheduleDefinitionByIdArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var scopeAccessReviewScheduleDefinitionById = new ScopeAccessReviewScheduleDefinitionById("scopeAccessReviewScheduleDefinitionById", ScopeAccessReviewScheduleDefinitionByIdArgs.builder()
///             .scheduleDefinitionId("fa73e90b-5bf1-45fd-a182-35ce5fc0674d")
///             .scope("subscriptions/fa73e90b-5bf1-45fd-a182-35ce5fc0674d")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const scopeAccessReviewScheduleDefinitionById = new azure_native.authorization.ScopeAccessReviewScheduleDefinitionById("scopeAccessReviewScheduleDefinitionById", {
///     scheduleDefinitionId: "fa73e90b-5bf1-45fd-a182-35ce5fc0674d",
///     scope: "subscriptions/fa73e90b-5bf1-45fd-a182-35ce5fc0674d",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scope_access_review_schedule_definition_by_id = azure_native.authorization.ScopeAccessReviewScheduleDefinitionById("scopeAccessReviewScheduleDefinitionById",
///     schedule_definition_id="fa73e90b-5bf1-45fd-a182-35ce5fc0674d",
///     scope="subscriptions/fa73e90b-5bf1-45fd-a182-35ce5fc0674d")
///
/// ```
///
/// ```yaml
/// resources:
///   scopeAccessReviewScheduleDefinitionById:
///     type: azure-native:authorization:ScopeAccessReviewScheduleDefinitionById
///     properties:
///       scheduleDefinitionId: fa73e90b-5bf1-45fd-a182-35ce5fc0674d
///       scope: subscriptions/fa73e90b-5bf1-45fd-a182-35ce5fc0674d
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:authorization:ScopeAccessReviewScheduleDefinitionById fa73e90b-5bf1-45fd-a182-35ce5fc0674d /{scope}/providers/Microsoft.Authorization/accessReviewScheduleDefinitions/{scheduleDefinitionId}
/// ```
class ScopeAccessReviewScheduleDefinitionById extends pulumi.CustomResource {
  /// Flag to indicate whether auto-apply capability, to automatically change the target object access resource, is enabled. If not enabled, a user must, after the review completes, apply the access review.
  late final pulumi.Output<bool?> autoApplyDecisionsEnabled;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// This is the collection of backup reviewers.
  late final pulumi.Output<List<AccessReviewReviewerResponse>?> backupReviewers;
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
  late final pulumi.Output<List<AccessReviewInstanceResponse>?> instances;
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
  late final pulumi.Output<List<AccessReviewReviewerResponse>?> reviewers;
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

  /// Creates a new [ScopeAccessReviewScheduleDefinitionById].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScopeAccessReviewScheduleDefinitionById]. {@macro pulumi_authorization_scope_access_review_schedule_definition_by_id_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScopeAccessReviewScheduleDefinitionById(
    String name, {
    ScopeAccessReviewScheduleDefinitionByIdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:authorization:ScopeAccessReviewScheduleDefinitionById',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoApplyDecisionsEnabled = registerOutput<bool?>('autoApplyDecisionsEnabled');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.backupReviewers = registerOutput<List<AccessReviewReviewerResponse>?>('backupReviewers');
    this.defaultDecision = registerOutput<String?>('defaultDecision');
    this.defaultDecisionEnabled = registerOutput<bool?>('defaultDecisionEnabled');
    this.descriptionForAdmins = registerOutput<String?>('descriptionForAdmins');
    this.descriptionForReviewers = registerOutput<String?>('descriptionForReviewers');
    this.displayName = registerOutput<String?>('displayName');
    this.instanceDurationInDays = registerOutput<int?>('instanceDurationInDays');
    this.instances = registerOutput<List<AccessReviewInstanceResponse>?>('instances');
    this.interval = registerOutput<int?>('interval');
    this.justificationRequiredOnApproval = registerOutput<bool?>('justificationRequiredOnApproval');
    this.mailNotificationsEnabled = registerOutput<bool?>('mailNotificationsEnabled');
    this.name = registerOutput<String>('name');
    this.principalId = registerOutput<String>('principalId');
    this.principalName = registerOutput<String>('principalName');
    this.principalType = registerOutput<String>('principalType');
    this.range = registerOutput<AccessReviewRecurrenceRangeResponse?>('range');
    this.recommendationLookBackDuration = registerOutput<String?>('recommendationLookBackDuration');
    this.recommendationsEnabled = registerOutput<bool?>('recommendationsEnabled');
    this.reminderNotificationsEnabled = registerOutput<bool?>('reminderNotificationsEnabled');
    this.reviewers = registerOutput<List<AccessReviewReviewerResponse>?>('reviewers');
    this.reviewersType = registerOutput<String>('reviewersType');
    this.scope = registerOutput<AccessReviewScopeResponse>('scope');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
    this.userPrincipalName = registerOutput<String>('userPrincipalName');
  }
}
