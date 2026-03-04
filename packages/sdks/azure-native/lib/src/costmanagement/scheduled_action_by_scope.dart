import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_destination_response.dart';
import 'notification_properties_response.dart';
import 'schedule_properties_response.dart';
import 'scheduled_action_by_scope_args.dart';
import 'system_data_response.dart';

/// Scheduled action definition.
///
/// Uses Azure REST API version 2024-08-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-04-01-preview, 2022-06-01-preview, 2022-10-01, 2023-03-01, 2023-04-01-preview, 2023-07-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateInsightAlertScheduledActionByScope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledActionByScope = new AzureNative.CostManagement.ScheduledActionByScope("scheduledActionByScope", new()
///     {
///         DisplayName = "Daily anomaly by resource",
///         Kind = AzureNative.CostManagement.ScheduledActionKind.InsightAlert,
///         Name = "dailyAnomalyByResource",
///         Notification = new AzureNative.CostManagement.Inputs.NotificationPropertiesArgs
///         {
///             Subject = "Cost anomaly detected in the resource",
///             To = new[]
///             {
///                 "user@gmail.com",
///                 "team@gmail.com",
///             },
///         },
///         Schedule = new AzureNative.CostManagement.Inputs.SchedulePropertiesArgs
///         {
///             EndDate = "2021-06-19T22:21:51.1287144Z",
///             Frequency = AzureNative.CostManagement.ScheduleFrequency.Daily,
///             StartDate = "2020-06-19T22:21:51.1287144Z",
///         },
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000",
///         Status = AzureNative.CostManagement.ScheduledActionStatus.Enabled,
///         ViewId = "/providers/Microsoft.CostManagement/views/swaggerExample",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewScheduledActionByScope(ctx, "scheduledActionByScope", &costmanagement.ScheduledActionByScopeArgs{
/// 			DisplayName: pulumi.String("Daily anomaly by resource"),
/// 			Kind:        pulumi.String(costmanagement.ScheduledActionKindInsightAlert),
/// 			Name:        pulumi.String("dailyAnomalyByResource"),
/// 			Notification: &costmanagement.NotificationPropertiesArgs{
/// 				Subject: pulumi.String("Cost anomaly detected in the resource"),
/// 				To: pulumi.StringArray{
/// 					pulumi.String("user@gmail.com"),
/// 					pulumi.String("team@gmail.com"),
/// 				},
/// 			},
/// 			Schedule: &costmanagement.SchedulePropertiesArgs{
/// 				EndDate:   pulumi.String("2021-06-19T22:21:51.1287144Z"),
/// 				Frequency: pulumi.String(costmanagement.ScheduleFrequencyDaily),
/// 				StartDate: pulumi.String("2020-06-19T22:21:51.1287144Z"),
/// 			},
/// 			Scope:  pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			Status: pulumi.String(costmanagement.ScheduledActionStatusEnabled),
/// 			ViewId: pulumi.String("/providers/Microsoft.CostManagement/views/swaggerExample"),
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
/// import com.pulumi.azurenative.costmanagement.ScheduledActionByScope;
/// import com.pulumi.azurenative.costmanagement.ScheduledActionByScopeArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.NotificationPropertiesArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.SchedulePropertiesArgs;
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
///         var scheduledActionByScope = new ScheduledActionByScope("scheduledActionByScope", ScheduledActionByScopeArgs.builder()
///             .displayName("Daily anomaly by resource")
///             .kind("InsightAlert")
///             .name("dailyAnomalyByResource")
///             .notification(NotificationPropertiesArgs.builder()
///                 .subject("Cost anomaly detected in the resource")
///                 .to(
///                     "user@gmail.com",
///                     "team@gmail.com")
///                 .build())
///             .schedule(SchedulePropertiesArgs.builder()
///                 .endDate("2021-06-19T22:21:51.1287144Z")
///                 .frequency("Daily")
///                 .startDate("2020-06-19T22:21:51.1287144Z")
///                 .build())
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000")
///             .status("Enabled")
///             .viewId("/providers/Microsoft.CostManagement/views/swaggerExample")
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
/// const scheduledActionByScope = new azure_native.costmanagement.ScheduledActionByScope("scheduledActionByScope", {
///     displayName: "Daily anomaly by resource",
///     kind: azure_native.costmanagement.ScheduledActionKind.InsightAlert,
///     name: "dailyAnomalyByResource",
///     notification: {
///         subject: "Cost anomaly detected in the resource",
///         to: [
///             "user@gmail.com",
///             "team@gmail.com",
///         ],
///     },
///     schedule: {
///         endDate: "2021-06-19T22:21:51.1287144Z",
///         frequency: azure_native.costmanagement.ScheduleFrequency.Daily,
///         startDate: "2020-06-19T22:21:51.1287144Z",
///     },
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000",
///     status: azure_native.costmanagement.ScheduledActionStatus.Enabled,
///     viewId: "/providers/Microsoft.CostManagement/views/swaggerExample",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_action_by_scope = azure_native.costmanagement.ScheduledActionByScope("scheduledActionByScope",
///     display_name="Daily anomaly by resource",
///     kind=azure_native.costmanagement.ScheduledActionKind.INSIGHT_ALERT,
///     name="dailyAnomalyByResource",
///     notification={
///         "subject": "Cost anomaly detected in the resource",
///         "to": [
///             "user@gmail.com",
///             "team@gmail.com",
///         ],
///     },
///     schedule={
///         "end_date": "2021-06-19T22:21:51.1287144Z",
///         "frequency": azure_native.costmanagement.ScheduleFrequency.DAILY,
///         "start_date": "2020-06-19T22:21:51.1287144Z",
///     },
///     scope="subscriptions/00000000-0000-0000-0000-000000000000",
///     status=azure_native.costmanagement.ScheduledActionStatus.ENABLED,
///     view_id="/providers/Microsoft.CostManagement/views/swaggerExample")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledActionByScope:
///     type: azure-native:costmanagement:ScheduledActionByScope
///     properties:
///       displayName: Daily anomaly by resource
///       kind: InsightAlert
///       name: dailyAnomalyByResource
///       notification:
///         subject: Cost anomaly detected in the resource
///         to:
///           - user@gmail.com
///           - team@gmail.com
///       schedule:
///         endDate: 2021-06-19T22:21:51.1287144Z
///         frequency: Daily
///         startDate: 2020-06-19T22:21:51.1287144Z
///       scope: subscriptions/00000000-0000-0000-0000-000000000000
///       status: Enabled
///       viewId: /providers/Microsoft.CostManagement/views/swaggerExample
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdateScheduledActionByScope
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledActionByScope = new AzureNative.CostManagement.ScheduledActionByScope("scheduledActionByScope", new()
///     {
///         DisplayName = "Monthly Cost By Resource",
///         FileDestination = new AzureNative.CostManagement.Inputs.FileDestinationArgs
///         {
///             FileFormats = new[]
///             {
///                 AzureNative.CostManagement.FileFormat.Csv,
///             },
///         },
///         Kind = AzureNative.CostManagement.ScheduledActionKind.Email,
///         Name = "monthlyCostByResource",
///         Notification = new AzureNative.CostManagement.Inputs.NotificationPropertiesArgs
///         {
///             Subject = "Cost by resource this month",
///             To = new[]
///             {
///                 "user@gmail.com",
///                 "team@gmail.com",
///             },
///         },
///         Schedule = new AzureNative.CostManagement.Inputs.SchedulePropertiesArgs
///         {
///             DaysOfWeek = new[]
///             {
///                 AzureNative.CostManagement.DaysOfWeek.Monday,
///             },
///             EndDate = "2021-06-19T22:21:51.1287144Z",
///             Frequency = AzureNative.CostManagement.ScheduleFrequency.Monthly,
///             HourOfDay = 10,
///             StartDate = "2020-06-19T22:21:51.1287144Z",
///             WeeksOfMonth = new[]
///             {
///                 AzureNative.CostManagement.WeeksOfMonth.First,
///                 AzureNative.CostManagement.WeeksOfMonth.Third,
///             },
///         },
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000",
///         Status = AzureNative.CostManagement.ScheduledActionStatus.Enabled,
///         ViewId = "/providers/Microsoft.CostManagement/views/swaggerExample",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewScheduledActionByScope(ctx, "scheduledActionByScope", &costmanagement.ScheduledActionByScopeArgs{
/// 			DisplayName: pulumi.String("Monthly Cost By Resource"),
/// 			FileDestination: &costmanagement.FileDestinationArgs{
/// 				FileFormats: pulumi.StringArray{
/// 					pulumi.String(costmanagement.FileFormatCsv),
/// 				},
/// 			},
/// 			Kind: pulumi.String(costmanagement.ScheduledActionKindEmail),
/// 			Name: pulumi.String("monthlyCostByResource"),
/// 			Notification: &costmanagement.NotificationPropertiesArgs{
/// 				Subject: pulumi.String("Cost by resource this month"),
/// 				To: pulumi.StringArray{
/// 					pulumi.String("user@gmail.com"),
/// 					pulumi.String("team@gmail.com"),
/// 				},
/// 			},
/// 			Schedule: &costmanagement.SchedulePropertiesArgs{
/// 				DaysOfWeek: pulumi.StringArray{
/// 					pulumi.String(costmanagement.DaysOfWeekMonday),
/// 				},
/// 				EndDate:   pulumi.String("2021-06-19T22:21:51.1287144Z"),
/// 				Frequency: pulumi.String(costmanagement.ScheduleFrequencyMonthly),
/// 				HourOfDay: pulumi.Int(10),
/// 				StartDate: pulumi.String("2020-06-19T22:21:51.1287144Z"),
/// 				WeeksOfMonth: pulumi.StringArray{
/// 					pulumi.String(costmanagement.WeeksOfMonthFirst),
/// 					pulumi.String(costmanagement.WeeksOfMonthThird),
/// 				},
/// 			},
/// 			Scope:  pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			Status: pulumi.String(costmanagement.ScheduledActionStatusEnabled),
/// 			ViewId: pulumi.String("/providers/Microsoft.CostManagement/views/swaggerExample"),
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
/// import com.pulumi.azurenative.costmanagement.ScheduledActionByScope;
/// import com.pulumi.azurenative.costmanagement.ScheduledActionByScopeArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.FileDestinationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.NotificationPropertiesArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.SchedulePropertiesArgs;
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
///         var scheduledActionByScope = new ScheduledActionByScope("scheduledActionByScope", ScheduledActionByScopeArgs.builder()
///             .displayName("Monthly Cost By Resource")
///             .fileDestination(FileDestinationArgs.builder()
///                 .fileFormats("Csv")
///                 .build())
///             .kind("Email")
///             .name("monthlyCostByResource")
///             .notification(NotificationPropertiesArgs.builder()
///                 .subject("Cost by resource this month")
///                 .to(
///                     "user@gmail.com",
///                     "team@gmail.com")
///                 .build())
///             .schedule(SchedulePropertiesArgs.builder()
///                 .daysOfWeek("Monday")
///                 .endDate("2021-06-19T22:21:51.1287144Z")
///                 .frequency("Monthly")
///                 .hourOfDay(10)
///                 .startDate("2020-06-19T22:21:51.1287144Z")
///                 .weeksOfMonth(
///                     "First",
///                     "Third")
///                 .build())
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000")
///             .status("Enabled")
///             .viewId("/providers/Microsoft.CostManagement/views/swaggerExample")
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
/// const scheduledActionByScope = new azure_native.costmanagement.ScheduledActionByScope("scheduledActionByScope", {
///     displayName: "Monthly Cost By Resource",
///     fileDestination: {
///         fileFormats: [azure_native.costmanagement.FileFormat.Csv],
///     },
///     kind: azure_native.costmanagement.ScheduledActionKind.Email,
///     name: "monthlyCostByResource",
///     notification: {
///         subject: "Cost by resource this month",
///         to: [
///             "user@gmail.com",
///             "team@gmail.com",
///         ],
///     },
///     schedule: {
///         daysOfWeek: [azure_native.costmanagement.DaysOfWeek.Monday],
///         endDate: "2021-06-19T22:21:51.1287144Z",
///         frequency: azure_native.costmanagement.ScheduleFrequency.Monthly,
///         hourOfDay: 10,
///         startDate: "2020-06-19T22:21:51.1287144Z",
///         weeksOfMonth: [
///             azure_native.costmanagement.WeeksOfMonth.First,
///             azure_native.costmanagement.WeeksOfMonth.Third,
///         ],
///     },
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000",
///     status: azure_native.costmanagement.ScheduledActionStatus.Enabled,
///     viewId: "/providers/Microsoft.CostManagement/views/swaggerExample",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_action_by_scope = azure_native.costmanagement.ScheduledActionByScope("scheduledActionByScope",
///     display_name="Monthly Cost By Resource",
///     file_destination={
///         "file_formats": [azure_native.costmanagement.FileFormat.CSV],
///     },
///     kind=azure_native.costmanagement.ScheduledActionKind.EMAIL,
///     name="monthlyCostByResource",
///     notification={
///         "subject": "Cost by resource this month",
///         "to": [
///             "user@gmail.com",
///             "team@gmail.com",
///         ],
///     },
///     schedule={
///         "days_of_week": [azure_native.costmanagement.DaysOfWeek.MONDAY],
///         "end_date": "2021-06-19T22:21:51.1287144Z",
///         "frequency": azure_native.costmanagement.ScheduleFrequency.MONTHLY,
///         "hour_of_day": 10,
///         "start_date": "2020-06-19T22:21:51.1287144Z",
///         "weeks_of_month": [
///             azure_native.costmanagement.WeeksOfMonth.FIRST,
///             azure_native.costmanagement.WeeksOfMonth.THIRD,
///         ],
///     },
///     scope="subscriptions/00000000-0000-0000-0000-000000000000",
///     status=azure_native.costmanagement.ScheduledActionStatus.ENABLED,
///     view_id="/providers/Microsoft.CostManagement/views/swaggerExample")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledActionByScope:
///     type: azure-native:costmanagement:ScheduledActionByScope
///     properties:
///       displayName: Monthly Cost By Resource
///       fileDestination:
///         fileFormats:
///           - Csv
///       kind: Email
///       name: monthlyCostByResource
///       notification:
///         subject: Cost by resource this month
///         to:
///           - user@gmail.com
///           - team@gmail.com
///       schedule:
///         daysOfWeek:
///           - Monday
///         endDate: 2021-06-19T22:21:51.1287144Z
///         frequency: Monthly
///         hourOfDay: 10
///         startDate: 2020-06-19T22:21:51.1287144Z
///         weeksOfMonth:
///           - First
///           - Third
///       scope: subscriptions/00000000-0000-0000-0000-000000000000
///       status: Enabled
///       viewId: /providers/Microsoft.CostManagement/views/swaggerExample
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
/// $ pulumi import azure-native:costmanagement:ScheduledActionByScope monthlyCostByResource /{scope}/providers/Microsoft.CostManagement/scheduledActions/{name}
/// ```
class ScheduledActionByScope extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Scheduled action name.
  late final pulumi.Output<String> displayName;

  /// Resource Etag. For update calls, eTag is optional and can be specified to achieve optimistic concurrency. Fetch the resource's eTag by doing a 'GET' call first and then including the latest eTag as part of the request body or 'If-Match' header while performing the update. For create calls, eTag is not required.
  late final pulumi.Output<String> eTag;

  /// Destination format of the view data. This is optional.
  late final pulumi.Output<FileDestinationResponse?> fileDestination;

  /// Kind of the scheduled action.
  late final pulumi.Output<String?> kind;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Notification properties based on scheduled action kind.
  late final pulumi.Output<NotificationPropertiesResponse> notification;

  /// Email address of the point of contact that should get the unsubscribe requests and notification emails.
  late final pulumi.Output<String?> notificationEmail;

  /// Schedule of the scheduled action.
  late final pulumi.Output<SchedulePropertiesResponse> schedule;

  /// For private scheduled action(Create or Update), scope will be empty.&lt;br /&gt; For shared scheduled action(Create or Update By Scope), Cost Management scope can be 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  late final pulumi.Output<String?> scope;

  /// Status of the scheduled action.
  late final pulumi.Output<String> status;

  /// Kind of the scheduled action.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Cost analysis viewId used for scheduled action. For example, '/providers/Microsoft.CostManagement/views/swaggerExample'
  late final pulumi.Output<String> viewId;

  /// Creates a new [ScheduledActionByScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledActionByScope]. {@macro pulumi_costmanagement_scheduled_action_by_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledActionByScope(
    String name, {
    ScheduledActionByScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:costmanagement:ScheduledActionByScope',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    displayName = registerOutput<String>('displayName');
    eTag = registerOutput<String>('eTag');
    fileDestination = registerOutput<FileDestinationResponse?>(
      'fileDestination',
    );
    kind = registerOutput<String?>('kind');
    this.name = registerOutput<String>('name');
    notification = registerOutput<NotificationPropertiesResponse>(
      'notification',
    );
    notificationEmail = registerOutput<String?>('notificationEmail');
    schedule = registerOutput<SchedulePropertiesResponse>('schedule');
    scope = registerOutput<String?>('scope');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    viewId = registerOutput<String>('viewId');
  }
}
