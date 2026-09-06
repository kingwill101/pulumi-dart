import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_args.dart';
import 'budget_filter_response.dart';
import 'budget_time_period_response.dart';
import 'current_spend_response.dart';
import 'forecast_spend_response.dart';
import 'notification_response.dart';
import 'system_data_response.dart';

/// A budget resource.
///
/// Uses Azure REST API version 2024-08-01. In version 2.x of the Azure Native provider, it used API version 2023-05-01.
///
/// Other available API versions: 2023-05-01, 2023-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native consumption [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateBudget
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.Consumption.Budget("budget", new()
///     {
///         Amount = 100.65,
///         BudgetName = "TestBudget",
///         Category = AzureNative.Consumption.CategoryType.Cost,
///         ETag = "\"1d34d016a593709\"",
///         Filter = new AzureNative.Consumption.Inputs.BudgetFilterArgs
///         {
///             And = new[]
///             {
///                 new AzureNative.Consumption.Inputs.BudgetFilterPropertiesArgs
///                 {
///                     Dimensions = new AzureNative.Consumption.Inputs.BudgetComparisonExpressionArgs
///                     {
///                         Name = "ResourceId",
///                         Operator = AzureNative.Consumption.BudgetOperatorType.In,
///                         Values = new[]
///                         {
///                             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2",
///                             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1",
///                         },
///                     },
///                 },
///                 new AzureNative.Consumption.Inputs.BudgetFilterPropertiesArgs
///                 {
///                     Tags = new AzureNative.Consumption.Inputs.BudgetComparisonExpressionArgs
///                     {
///                         Name = "category",
///                         Operator = AzureNative.Consumption.BudgetOperatorType.In,
///                         Values = new[]
///                         {
///                             "Dev",
///                             "Prod",
///                         },
///                     },
///                 },
///                 new AzureNative.Consumption.Inputs.BudgetFilterPropertiesArgs
///                 {
///                     Tags = new AzureNative.Consumption.Inputs.BudgetComparisonExpressionArgs
///                     {
///                         Name = "department",
///                         Operator = AzureNative.Consumption.BudgetOperatorType.In,
///                         Values = new[]
///                         {
///                             "engineering",
///                             "sales",
///                         },
///                     },
///                 },
///             },
///         },
///         Notifications =
///         {
///             { "Actual_GreaterThan_80_Percent", new AzureNative.Consumption.Inputs.NotificationArgs
///             {
///                 ContactEmails = new[]
///                 {
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com",
///                 },
///                 ContactGroups = new[]
///                 {
///                     "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/microsoft.insights/actionGroups/SampleActionGroup",
///                 },
///                 ContactRoles = new[]
///                 {
///                     "Contributor",
///                     "Reader",
///                 },
///                 Enabled = true,
///                 Locale = AzureNative.Consumption.CultureCode.En_us,
///                 Operator = AzureNative.Consumption.OperatorType.GreaterThan,
///                 Threshold = 80,
///                 ThresholdType = AzureNative.Consumption.ThresholdType.Actual,
///             } },
///         },
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000",
///         TimeGrain = AzureNative.Consumption.TimeGrainType.Monthly,
///         TimePeriod = new AzureNative.Consumption.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2018-10-31T00:00:00Z",
///             StartDate = "2017-10-01T00:00:00Z",
///         },
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
/// 	consumption "github.com/pulumi/pulumi-azure-native-sdk/consumption/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := consumption.NewBudget(ctx, "budget", &consumption.BudgetArgs{
/// 			Amount:     pulumi.Float64(100.65),
/// 			BudgetName: pulumi.String("TestBudget"),
/// 			Category:   pulumi.String(consumption.CategoryTypeCost),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter: &consumption.BudgetFilterArgs{
/// 				And: consumption.BudgetFilterPropertiesArray{
/// 					&consumption.BudgetFilterPropertiesArgs{
/// 						Dimensions: &consumption.BudgetComparisonExpressionArgs{
/// 							Name:     pulumi.String("ResourceId"),
/// 							Operator: pulumi.String(consumption.BudgetOperatorTypeIn),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2"),
/// 								pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1"),
/// 							},
/// 						},
/// 					},
/// 					&consumption.BudgetFilterPropertiesArgs{
/// 						Tags: &consumption.BudgetComparisonExpressionArgs{
/// 							Name:     pulumi.String("category"),
/// 							Operator: pulumi.String(consumption.BudgetOperatorTypeIn),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("Dev"),
/// 								pulumi.String("Prod"),
/// 							},
/// 						},
/// 					},
/// 					&consumption.BudgetFilterPropertiesArgs{
/// 						Tags: &consumption.BudgetComparisonExpressionArgs{
/// 							Name:     pulumi.String("department"),
/// 							Operator: pulumi.String(consumption.BudgetOperatorTypeIn),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("engineering"),
/// 								pulumi.String("sales"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Notifications: consumption.NotificationMap{
/// 				"Actual_GreaterThan_80_Percent": &consumption.NotificationArgs{
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("johndoe@contoso.com"),
/// 						pulumi.String("janesmith@contoso.com"),
/// 					},
/// 					ContactGroups: pulumi.StringArray{
/// 						pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/microsoft.insights/actionGroups/SampleActionGroup"),
/// 					},
/// 					ContactRoles: pulumi.StringArray{
/// 						pulumi.String("Contributor"),
/// 						pulumi.String("Reader"),
/// 					},
/// 					Enabled:       pulumi.Bool(true),
/// 					Locale:        pulumi.String(consumption.CultureCode_En_Us),
/// 					Operator:      pulumi.String(consumption.OperatorTypeGreaterThan),
/// 					Threshold:     pulumi.Float64(80),
/// 					ThresholdType: pulumi.String(consumption.ThresholdTypeActual),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			TimeGrain: pulumi.String(consumption.TimeGrainTypeMonthly),
/// 			TimePeriod: &consumption.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2018-10-31T00:00:00Z"),
/// 				StartDate: pulumi.String("2017-10-01T00:00:00Z"),
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_consumption_budget" "budget" {
///   amount      = 100.65
///   budget_name = "TestBudget"
///   category    = "Cost"
///   e_tag       = "\"1d34d016a593709\""
///   filter = {
///     and = [{
///       "dimensions" = {
///         "name"     = "ResourceId"
///         "operator" = "In"
///         "values"   = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2", "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1"]
///       }
///       }, {
///       "tags" = {
///         "name"     = "category"
///         "operator" = "In"
///         "values"   = ["Dev", "Prod"]
///       }
///       }, {
///       "tags" = {
///         "name"     = "department"
///         "operator" = "In"
///         "values"   = ["engineering", "sales"]
///       }
///     }]
///   }
///   notifications = {
///     "Actual_GreaterThan_80_Percent" = {
///       contact_emails = ["johndoe@contoso.com", "janesmith@contoso.com"]
///       contact_groups = ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/microsoft.insights/actionGroups/SampleActionGroup"]
///       contact_roles  = ["Contributor", "Reader"]
///       enabled        = true
///       locale         = "en-us"
///       operator       = "GreaterThan"
///       threshold      = 80
///       threshold_type = "Actual"
///     }
///   }
///   scope      = "subscriptions/00000000-0000-0000-0000-000000000000"
///   time_grain = "Monthly"
///   time_period = {
///     end_date   = "2018-10-31T00:00:00Z"
///     start_date = "2017-10-01T00:00:00Z"
///   }
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
/// import com.pulumi.azurenative.consumption.Budget;
/// import com.pulumi.azurenative.consumption.BudgetArgs;
/// import com.pulumi.azurenative.consumption.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.consumption.inputs.BudgetTimePeriodArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .amount(100.65)
///             .budgetName("TestBudget")
///             .category("Cost")
///             .eTag("\"1d34d016a593709\"")
///             .filter(BudgetFilterArgs.builder()
///                 .and(
///                     BudgetFilterPropertiesArgs.builder()
///                         .dimensions(BudgetComparisonExpressionArgs.builder()
///                             .name("ResourceId")
///                             .operator("In")
///                             .values(
///                                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2",
///                                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1")
///                             .build())
///                         .build(),
///                     BudgetFilterPropertiesArgs.builder()
///                         .tags(BudgetComparisonExpressionArgs.builder()
///                             .name("category")
///                             .operator("In")
///                             .values(
///                                 "Dev",
///                                 "Prod")
///                             .build())
///                         .build(),
///                     BudgetFilterPropertiesArgs.builder()
///                         .tags(BudgetComparisonExpressionArgs.builder()
///                             .name("department")
///                             .operator("In")
///                             .values(
///                                 "engineering",
///                                 "sales")
///                             .build())
///                         .build())
///                 .build())
///             .notifications(Map.of("Actual_GreaterThan_80_Percent", NotificationArgs.builder()
///                 .contactEmails(
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com")
///                 .contactGroups("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/microsoft.insights/actionGroups/SampleActionGroup")
///                 .contactRoles(
///                     "Contributor",
///                     "Reader")
///                 .enabled(true)
///                 .locale("en-us")
///                 .operator("GreaterThan")
///                 .threshold(80.0)
///                 .thresholdType("Actual")
///                 .build()))
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000")
///             .timeGrain("Monthly")
///             .timePeriod(BudgetTimePeriodArgs.builder()
///                 .endDate("2018-10-31T00:00:00Z")
///                 .startDate("2017-10-01T00:00:00Z")
///                 .build())
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
/// const budget = new azure_native.consumption.Budget("budget", {
///     amount: 100.65,
///     budgetName: "TestBudget",
///     category: azure_native.consumption.CategoryType.Cost,
///     eTag: "\"1d34d016a593709\"",
///     filter: {
///         and: [
///             {
///                 dimensions: {
///                     name: "ResourceId",
///                     operator: azure_native.consumption.BudgetOperatorType.In,
///                     values: [
///                         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2",
///                         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1",
///                     ],
///                 },
///             },
///             {
///                 tags: {
///                     name: "category",
///                     operator: azure_native.consumption.BudgetOperatorType.In,
///                     values: [
///                         "Dev",
///                         "Prod",
///                     ],
///                 },
///             },
///             {
///                 tags: {
///                     name: "department",
///                     operator: azure_native.consumption.BudgetOperatorType.In,
///                     values: [
///                         "engineering",
///                         "sales",
///                     ],
///                 },
///             },
///         ],
///     },
///     notifications: {
///         Actual_GreaterThan_80_Percent: {
///             contactEmails: [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             contactGroups: ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/microsoft.insights/actionGroups/SampleActionGroup"],
///             contactRoles: [
///                 "Contributor",
///                 "Reader",
///             ],
///             enabled: true,
///             locale: azure_native.consumption.CultureCode.En_us,
///             operator: azure_native.consumption.OperatorType.GreaterThan,
///             threshold: 80,
///             thresholdType: azure_native.consumption.ThresholdType.Actual,
///         },
///     },
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000",
///     timeGrain: azure_native.consumption.TimeGrainType.Monthly,
///     timePeriod: {
///         endDate: "2018-10-31T00:00:00Z",
///         startDate: "2017-10-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.consumption.Budget("budget",
///     amount=100.65,
///     budget_name="TestBudget",
///     category=azure_native.consumption.CategoryType.COST,
///     e_tag="\"1d34d016a593709\"",
///     filter={
///         "and_": [
///             {
///                 "dimensions": {
///                     "name": "ResourceId",
///                     "operator": azure_native.consumption.BudgetOperatorType.IN_,
///                     "values": [
///                         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2",
///                         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1",
///                     ],
///                 },
///             },
///             {
///                 "tags": {
///                     "name": "category",
///                     "operator": azure_native.consumption.BudgetOperatorType.IN_,
///                     "values": [
///                         "Dev",
///                         "Prod",
///                     ],
///                 },
///             },
///             {
///                 "tags": {
///                     "name": "department",
///                     "operator": azure_native.consumption.BudgetOperatorType.IN_,
///                     "values": [
///                         "engineering",
///                         "sales",
///                     ],
///                 },
///             },
///         ],
///     },
///     notifications={
///         "Actual_GreaterThan_80_Percent": {
///             "contact_emails": [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             "contact_groups": ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/microsoft.insights/actionGroups/SampleActionGroup"],
///             "contact_roles": [
///                 "Contributor",
///                 "Reader",
///             ],
///             "enabled": True,
///             "locale": azure_native.consumption.CultureCode.EN_US,
///             "operator": azure_native.consumption.OperatorType.GREATER_THAN,
///             "threshold": float(80),
///             "threshold_type": azure_native.consumption.ThresholdType.ACTUAL,
///         },
///     },
///     scope="subscriptions/00000000-0000-0000-0000-000000000000",
///     time_grain=azure_native.consumption.TimeGrainType.MONTHLY,
///     time_period={
///         "end_date": "2018-10-31T00:00:00Z",
///         "start_date": "2017-10-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:consumption:Budget
///     properties:
///       amount: 100.65
///       budgetName: TestBudget
///       category: Cost
///       eTag: '"1d34d016a593709"'
///       filter:
///         and:
///           - dimensions:
///               name: ResourceId
///               operator: In
///               values:
///                 - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2
///                 - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1
///           - tags:
///               name: category
///               operator: In
///               values:
///                 - Dev
///                 - Prod
///           - tags:
///               name: department
///               operator: In
///               values:
///                 - engineering
///                 - sales
///       notifications:
///         Actual_GreaterThan_80_Percent:
///           contactEmails:
///             - johndoe@contoso.com
///             - janesmith@contoso.com
///           contactGroups:
///             - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/microsoft.insights/actionGroups/SampleActionGroup
///           contactRoles:
///             - Contributor
///             - Reader
///           enabled: true
///           locale: en-us
///           operator: GreaterThan
///           threshold: 80
///           thresholdType: Actual
///       scope: subscriptions/00000000-0000-0000-0000-000000000000
///       timeGrain: Monthly
///       timePeriod:
///         endDate: 2018-10-31T00:00:00Z
///         startDate: 2017-10-01T00:00:00Z
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
/// $ pulumi import azure-native:consumption:Budget TestBudget /{scope}/providers/Microsoft.Consumption/budgets/{budgetName}
/// ```
class Budget extends pulumi.CustomResource {
  /// The total amount of cost to track with the budget
  late final pulumi.Output<double> amount;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The category of the budget, whether the budget tracks cost or usage.
  late final pulumi.Output<String> category;
  /// The current amount of cost which is being tracked for a budget.
  late final pulumi.Output<CurrentSpendResponse> currentSpend;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  late final pulumi.Output<String?> eTag;
  /// May be used to filter budgets by user-specified dimensions and/or tags.
  late final pulumi.Output<BudgetFilterResponse?> filter;
  /// The forecasted cost which is being tracked for a budget.
  late final pulumi.Output<ForecastSpendResponse> forecastSpend;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Dictionary of notifications associated with the budget. Budget can have up to five notifications.
  late final pulumi.Output<Map<String, NotificationResponse>?> notifications;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain. BillingMonth, BillingQuarter, and BillingAnnual are only supported by WD customers
  late final pulumi.Output<String> timeGrain;
  /// Has start and end date of the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than twelve months. Past start date should  be selected within the timegrain period. There are no restrictions on the end date.
  late final pulumi.Output<BudgetTimePeriodResponse> timePeriod;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Budget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Budget]. {@macro pulumi_consumption_budget_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Budget(
    String name, {
    BudgetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:consumption:Budget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amount = registerOutput<double>('amount');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    category = registerOutput<String>('category');
    currentSpend = registerOutput<CurrentSpendResponse>('currentSpend', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CurrentSpendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eTag = registerOutput<String?>('eTag');
    filter = registerOutput<BudgetFilterResponse?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forecastSpend = registerOutput<ForecastSpendResponse>('forecastSpend', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ForecastSpendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    notifications = registerOutput<Map<String, NotificationResponse>?>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<NotificationResponse>(guardedValue, (value) => NotificationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeGrain = registerOutput<String>('timeGrain');
    timePeriod = registerOutput<BudgetTimePeriodResponse>('timePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetTimePeriodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Budget] resource.
  Budget.reference(String urn)
    : super(
        'azure-native:consumption:Budget',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    amount = registerOutput<double>('amount');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    category = registerOutput<String>('category');
    currentSpend = registerOutput<CurrentSpendResponse>('currentSpend', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CurrentSpendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eTag = registerOutput<String?>('eTag');
    filter = registerOutput<BudgetFilterResponse?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forecastSpend = registerOutput<ForecastSpendResponse>('forecastSpend', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ForecastSpendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    notifications = registerOutput<Map<String, NotificationResponse>?>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<NotificationResponse>(guardedValue, (value) => NotificationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeGrain = registerOutput<String>('timeGrain');
    timePeriod = registerOutput<BudgetTimePeriodResponse>('timePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetTimePeriodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
