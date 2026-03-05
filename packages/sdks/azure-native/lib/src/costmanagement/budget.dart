import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_args.dart';
import 'budget_filter_response.dart';
import 'budget_time_period_response.dart';
import 'current_spend_response.dart';
import 'forecast_spend_response.dart';
import 'notification_response.dart';

/// A budget resource.
///
/// Uses Azure REST API version 2024-08-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2019-04-01-preview, 2023-04-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate-Cost-Subscription-Budget
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.CostManagement.Budget("budget", new()
///     {
///         Amount = 100.65,
///         BudgetName = "TestBudget",
///         Category = AzureNative.CostManagement.CategoryType.Cost,
///         ETag = "\"1d34d016a593709\"",
///         Filter = new AzureNative.CostManagement.Inputs.BudgetFilterArgs
///         {
///             And = new[]
///             {
///                 new AzureNative.CostManagement.Inputs.BudgetFilterPropertiesArgs
///                 {
///                     Dimensions = new AzureNative.CostManagement.Inputs.BudgetComparisonExpressionArgs
///                     {
///                         Name = "ResourceId",
///                         Operator = AzureNative.CostManagement.BudgetOperatorType.In,
///                         Values = new[]
///                         {
///                             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2",
///                             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1",
///                         },
///                     },
///                 },
///                 new AzureNative.CostManagement.Inputs.BudgetFilterPropertiesArgs
///                 {
///                     Tags = new AzureNative.CostManagement.Inputs.BudgetComparisonExpressionArgs
///                     {
///                         Name = "category",
///                         Operator = AzureNative.CostManagement.BudgetOperatorType.In,
///                         Values = new[]
///                         {
///                             "Dev",
///                             "Prod",
///                         },
///                     },
///                 },
///                 new AzureNative.CostManagement.Inputs.BudgetFilterPropertiesArgs
///                 {
///                     Tags = new AzureNative.CostManagement.Inputs.BudgetComparisonExpressionArgs
///                     {
///                         Name = "department",
///                         Operator = AzureNative.CostManagement.BudgetOperatorType.In,
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
///             { "Actual_GreaterThan_80_Percent", new AzureNative.CostManagement.Inputs.NotificationArgs
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
///                 Locale = AzureNative.CostManagement.CultureCode.En_us,
///                 Operator = AzureNative.CostManagement.BudgetNotificationOperatorType.GreaterThan,
///                 Threshold = 80,
///                 ThresholdType = AzureNative.CostManagement.ThresholdType.Actual,
///             } },
///         },
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000",
///         TimeGrain = AzureNative.CostManagement.TimeGrainType.Monthly,
///         TimePeriod = new AzureNative.CostManagement.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2024-10-31T00:00:00Z",
///             StartDate = "2023-04-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewBudget(ctx, "budget", &costmanagement.BudgetArgs{
/// 			Amount:     pulumi.Float64(100.65),
/// 			BudgetName: pulumi.String("TestBudget"),
/// 			Category:   pulumi.String(costmanagement.CategoryTypeCost),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter: &costmanagement.BudgetFilterArgs{
/// 				And: costmanagement.BudgetFilterPropertiesArray{
/// 					&costmanagement.BudgetFilterPropertiesArgs{
/// 						Dimensions: &costmanagement.BudgetComparisonExpressionArgs{
/// 							Name:     pulumi.String("ResourceId"),
/// 							Operator: pulumi.String(costmanagement.BudgetOperatorTypeIn),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2"),
/// 								pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1"),
/// 							},
/// 						},
/// 					},
/// 					&costmanagement.BudgetFilterPropertiesArgs{
/// 						Tags: &costmanagement.BudgetComparisonExpressionArgs{
/// 							Name:     pulumi.String("category"),
/// 							Operator: pulumi.String(costmanagement.BudgetOperatorTypeIn),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("Dev"),
/// 								pulumi.String("Prod"),
/// 							},
/// 						},
/// 					},
/// 					&costmanagement.BudgetFilterPropertiesArgs{
/// 						Tags: &costmanagement.BudgetComparisonExpressionArgs{
/// 							Name:     pulumi.String("department"),
/// 							Operator: pulumi.String(costmanagement.BudgetOperatorTypeIn),
/// 							Values: pulumi.StringArray{
/// 								pulumi.String("engineering"),
/// 								pulumi.String("sales"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Notifications: costmanagement.NotificationMap{
/// 				"Actual_GreaterThan_80_Percent": &costmanagement.NotificationArgs{
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
/// 					Locale:        pulumi.String(costmanagement.CultureCode_En_Us),
/// 					Operator:      pulumi.String(costmanagement.BudgetNotificationOperatorTypeGreaterThan),
/// 					Threshold:     pulumi.Float64(80),
/// 					ThresholdType: pulumi.String(costmanagement.ThresholdTypeActual),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
/// 			TimeGrain: pulumi.String(costmanagement.TimeGrainTypeMonthly),
/// 			TimePeriod: &costmanagement.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2024-10-31T00:00:00Z"),
/// 				StartDate: pulumi.String("2023-04-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.Budget;
/// import com.pulumi.azurenative.costmanagement.BudgetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetTimePeriodArgs;
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
///                 .endDate("2024-10-31T00:00:00Z")
///                 .startDate("2023-04-01T00:00:00Z")
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
/// const budget = new azure_native.costmanagement.Budget("budget", {
///     amount: 100.65,
///     budgetName: "TestBudget",
///     category: azure_native.costmanagement.CategoryType.Cost,
///     eTag: "\"1d34d016a593709\"",
///     filter: {
///         and: [
///             {
///                 dimensions: {
///                     name: "ResourceId",
///                     operator: azure_native.costmanagement.BudgetOperatorType.In,
///                     values: [
///                         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2",
///                         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1",
///                     ],
///                 },
///             },
///             {
///                 tags: {
///                     name: "category",
///                     operator: azure_native.costmanagement.BudgetOperatorType.In,
///                     values: [
///                         "Dev",
///                         "Prod",
///                     ],
///                 },
///             },
///             {
///                 tags: {
///                     name: "department",
///                     operator: azure_native.costmanagement.BudgetOperatorType.In,
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
///             locale: azure_native.costmanagement.CultureCode.En_us,
///             operator: azure_native.costmanagement.BudgetNotificationOperatorType.GreaterThan,
///             threshold: 80,
///             thresholdType: azure_native.costmanagement.ThresholdType.Actual,
///         },
///     },
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000",
///     timeGrain: azure_native.costmanagement.TimeGrainType.Monthly,
///     timePeriod: {
///         endDate: "2024-10-31T00:00:00Z",
///         startDate: "2023-04-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.costmanagement.Budget("budget",
///     amount=100.65,
///     budget_name="TestBudget",
///     category=azure_native.costmanagement.CategoryType.COST,
///     e_tag="\"1d34d016a593709\"",
///     filter={
///         "and_": [
///             {
///                 "dimensions": {
///                     "name": "ResourceId",
///                     "operator": azure_native.costmanagement.BudgetOperatorType.IN_,
///                     "values": [
///                         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/MSVM2",
///                         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Compute/virtualMachines/platformcloudplatformGeneric1",
///                     ],
///                 },
///             },
///             {
///                 "tags": {
///                     "name": "category",
///                     "operator": azure_native.costmanagement.BudgetOperatorType.IN_,
///                     "values": [
///                         "Dev",
///                         "Prod",
///                     ],
///                 },
///             },
///             {
///                 "tags": {
///                     "name": "department",
///                     "operator": azure_native.costmanagement.BudgetOperatorType.IN_,
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
///             "locale": azure_native.costmanagement.CultureCode.EN_US,
///             "operator": azure_native.costmanagement.BudgetNotificationOperatorType.GREATER_THAN,
///             "threshold": 80,
///             "threshold_type": azure_native.costmanagement.ThresholdType.ACTUAL,
///         },
///     },
///     scope="subscriptions/00000000-0000-0000-0000-000000000000",
///     time_grain=azure_native.costmanagement.TimeGrainType.MONTHLY,
///     time_period={
///         "end_date": "2024-10-31T00:00:00Z",
///         "start_date": "2023-04-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:costmanagement:Budget
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
///         endDate: 2024-10-31T00:00:00Z
///         startDate: 2023-04-01T00:00:00Z
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate-ReservationUtilization-BillingAccountEA-AlertRule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.CostManagement.Budget("budget", new()
///     {
///         BudgetName = "TestAlertRule",
///         Category = AzureNative.CostManagement.CategoryType.ReservationUtilization,
///         ETag = "\"1d34d016a593709\"",
///         Filter = null,
///         Notifications =
///         {
///             { "Actual_LessThan_99_Percent", new AzureNative.CostManagement.Inputs.NotificationArgs
///             {
///                 ContactEmails = new[]
///                 {
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com",
///                 },
///                 Enabled = true,
///                 Frequency = AzureNative.CostManagement.Frequency.Weekly,
///                 Locale = AzureNative.CostManagement.CultureCode.En_us,
///                 Operator = AzureNative.CostManagement.BudgetNotificationOperatorType.LessThan,
///                 Threshold = 99,
///             } },
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/123456",
///         TimeGrain = AzureNative.CostManagement.TimeGrainType.Last7Days,
///         TimePeriod = new AzureNative.CostManagement.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2025-04-01T00:00:00Z",
///             StartDate = "2023-04-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewBudget(ctx, "budget", &costmanagement.BudgetArgs{
/// 			BudgetName: pulumi.String("TestAlertRule"),
/// 			Category:   pulumi.String(costmanagement.CategoryTypeReservationUtilization),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter:     &costmanagement.BudgetFilterArgs{},
/// 			Notifications: costmanagement.NotificationMap{
/// 				"Actual_LessThan_99_Percent": &costmanagement.NotificationArgs{
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("johndoe@contoso.com"),
/// 						pulumi.String("janesmith@contoso.com"),
/// 					},
/// 					Enabled:   pulumi.Bool(true),
/// 					Frequency: pulumi.String(costmanagement.FrequencyWeekly),
/// 					Locale:    pulumi.String(costmanagement.CultureCode_En_Us),
/// 					Operator:  pulumi.String(costmanagement.BudgetNotificationOperatorTypeLessThan),
/// 					Threshold: pulumi.Float64(99),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("providers/Microsoft.Billing/billingAccounts/123456"),
/// 			TimeGrain: pulumi.String(costmanagement.TimeGrainTypeLast7Days),
/// 			TimePeriod: &costmanagement.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2025-04-01T00:00:00Z"),
/// 				StartDate: pulumi.String("2023-04-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.Budget;
/// import com.pulumi.azurenative.costmanagement.BudgetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetTimePeriodArgs;
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
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .budgetName("TestAlertRule")
///             .category("ReservationUtilization")
///             .eTag("\"1d34d016a593709\"")
///             .filter(BudgetFilterArgs.builder()
///                 .build())
///             .notifications(Map.of("Actual_LessThan_99_Percent", NotificationArgs.builder()
///                 .contactEmails(
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com")
///                 .enabled(true)
///                 .frequency("Weekly")
///                 .locale("en-us")
///                 .operator("LessThan")
///                 .threshold(99.0)
///                 .build()))
///             .scope("providers/Microsoft.Billing/billingAccounts/123456")
///             .timeGrain("Last7Days")
///             .timePeriod(BudgetTimePeriodArgs.builder()
///                 .endDate("2025-04-01T00:00:00Z")
///                 .startDate("2023-04-01T00:00:00Z")
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
/// const budget = new azure_native.costmanagement.Budget("budget", {
///     budgetName: "TestAlertRule",
///     category: azure_native.costmanagement.CategoryType.ReservationUtilization,
///     eTag: "\"1d34d016a593709\"",
///     filter: {},
///     notifications: {
///         Actual_LessThan_99_Percent: {
///             contactEmails: [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             enabled: true,
///             frequency: azure_native.costmanagement.Frequency.Weekly,
///             locale: azure_native.costmanagement.CultureCode.En_us,
///             operator: azure_native.costmanagement.BudgetNotificationOperatorType.LessThan,
///             threshold: 99,
///         },
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/123456",
///     timeGrain: azure_native.costmanagement.TimeGrainType.Last7Days,
///     timePeriod: {
///         endDate: "2025-04-01T00:00:00Z",
///         startDate: "2023-04-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.costmanagement.Budget("budget",
///     budget_name="TestAlertRule",
///     category=azure_native.costmanagement.CategoryType.RESERVATION_UTILIZATION,
///     e_tag="\"1d34d016a593709\"",
///     filter={},
///     notifications={
///         "Actual_LessThan_99_Percent": {
///             "contact_emails": [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             "enabled": True,
///             "frequency": azure_native.costmanagement.Frequency.WEEKLY,
///             "locale": azure_native.costmanagement.CultureCode.EN_US,
///             "operator": azure_native.costmanagement.BudgetNotificationOperatorType.LESS_THAN,
///             "threshold": 99,
///         },
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/123456",
///     time_grain=azure_native.costmanagement.TimeGrainType.LAST7_DAYS,
///     time_period={
///         "end_date": "2025-04-01T00:00:00Z",
///         "start_date": "2023-04-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:costmanagement:Budget
///     properties:
///       budgetName: TestAlertRule
///       category: ReservationUtilization
///       eTag: '"1d34d016a593709"'
///       filter: {}
///       notifications:
///         Actual_LessThan_99_Percent:
///           contactEmails:
///             - johndoe@contoso.com
///             - janesmith@contoso.com
///           enabled: true
///           frequency: Weekly
///           locale: en-us
///           operator: LessThan
///           threshold: 99
///       scope: providers/Microsoft.Billing/billingAccounts/123456
///       timeGrain: Last7Days
///       timePeriod:
///         endDate: 2025-04-01T00:00:00Z
///         startDate: 2023-04-01T00:00:00Z
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate-ReservationUtilization-BillingAccountEA-AlertRule-ReservationIdFilter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.CostManagement.Budget("budget", new()
///     {
///         BudgetName = "TestAlertRule",
///         Category = AzureNative.CostManagement.CategoryType.ReservationUtilization,
///         ETag = "\"1d34d016a593709\"",
///         Filter = new AzureNative.CostManagement.Inputs.BudgetFilterArgs
///         {
///             Dimensions = new AzureNative.CostManagement.Inputs.BudgetComparisonExpressionArgs
///             {
///                 Name = "ReservationId",
///                 Operator = AzureNative.CostManagement.BudgetOperatorType.In,
///                 Values = new[]
///                 {
///                     "00000000-0000-0000-0000-000000000000",
///                     "00000000-0000-0000-0000-000000000001",
///                     "00000000-0000-0000-0000-000000000002",
///                 },
///             },
///         },
///         Notifications =
///         {
///             { "Actual_LessThan_99_Percent", new AzureNative.CostManagement.Inputs.NotificationArgs
///             {
///                 ContactEmails = new[]
///                 {
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com",
///                 },
///                 Enabled = true,
///                 Frequency = AzureNative.CostManagement.Frequency.Weekly,
///                 Locale = AzureNative.CostManagement.CultureCode.En_us,
///                 Operator = AzureNative.CostManagement.BudgetNotificationOperatorType.LessThan,
///                 Threshold = 99,
///             } },
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/123456",
///         TimeGrain = AzureNative.CostManagement.TimeGrainType.Last7Days,
///         TimePeriod = new AzureNative.CostManagement.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2025-04-01T00:00:00Z",
///             StartDate = "2023-04-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewBudget(ctx, "budget", &costmanagement.BudgetArgs{
/// 			BudgetName: pulumi.String("TestAlertRule"),
/// 			Category:   pulumi.String(costmanagement.CategoryTypeReservationUtilization),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter: &costmanagement.BudgetFilterArgs{
/// 				Dimensions: &costmanagement.BudgetComparisonExpressionArgs{
/// 					Name:     pulumi.String("ReservationId"),
/// 					Operator: pulumi.String(costmanagement.BudgetOperatorTypeIn),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 						pulumi.String("00000000-0000-0000-0000-000000000001"),
/// 						pulumi.String("00000000-0000-0000-0000-000000000002"),
/// 					},
/// 				},
/// 			},
/// 			Notifications: costmanagement.NotificationMap{
/// 				"Actual_LessThan_99_Percent": &costmanagement.NotificationArgs{
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("johndoe@contoso.com"),
/// 						pulumi.String("janesmith@contoso.com"),
/// 					},
/// 					Enabled:   pulumi.Bool(true),
/// 					Frequency: pulumi.String(costmanagement.FrequencyWeekly),
/// 					Locale:    pulumi.String(costmanagement.CultureCode_En_Us),
/// 					Operator:  pulumi.String(costmanagement.BudgetNotificationOperatorTypeLessThan),
/// 					Threshold: pulumi.Float64(99),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("providers/Microsoft.Billing/billingAccounts/123456"),
/// 			TimeGrain: pulumi.String(costmanagement.TimeGrainTypeLast7Days),
/// 			TimePeriod: &costmanagement.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2025-04-01T00:00:00Z"),
/// 				StartDate: pulumi.String("2023-04-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.Budget;
/// import com.pulumi.azurenative.costmanagement.BudgetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetComparisonExpressionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetTimePeriodArgs;
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
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .budgetName("TestAlertRule")
///             .category("ReservationUtilization")
///             .eTag("\"1d34d016a593709\"")
///             .filter(BudgetFilterArgs.builder()
///                 .dimensions(BudgetComparisonExpressionArgs.builder()
///                     .name("ReservationId")
///                     .operator("In")
///                     .values(
///                         "00000000-0000-0000-0000-000000000000",
///                         "00000000-0000-0000-0000-000000000001",
///                         "00000000-0000-0000-0000-000000000002")
///                     .build())
///                 .build())
///             .notifications(Map.of("Actual_LessThan_99_Percent", NotificationArgs.builder()
///                 .contactEmails(
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com")
///                 .enabled(true)
///                 .frequency("Weekly")
///                 .locale("en-us")
///                 .operator("LessThan")
///                 .threshold(99.0)
///                 .build()))
///             .scope("providers/Microsoft.Billing/billingAccounts/123456")
///             .timeGrain("Last7Days")
///             .timePeriod(BudgetTimePeriodArgs.builder()
///                 .endDate("2025-04-01T00:00:00Z")
///                 .startDate("2023-04-01T00:00:00Z")
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
/// const budget = new azure_native.costmanagement.Budget("budget", {
///     budgetName: "TestAlertRule",
///     category: azure_native.costmanagement.CategoryType.ReservationUtilization,
///     eTag: "\"1d34d016a593709\"",
///     filter: {
///         dimensions: {
///             name: "ReservationId",
///             operator: azure_native.costmanagement.BudgetOperatorType.In,
///             values: [
///                 "00000000-0000-0000-0000-000000000000",
///                 "00000000-0000-0000-0000-000000000001",
///                 "00000000-0000-0000-0000-000000000002",
///             ],
///         },
///     },
///     notifications: {
///         Actual_LessThan_99_Percent: {
///             contactEmails: [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             enabled: true,
///             frequency: azure_native.costmanagement.Frequency.Weekly,
///             locale: azure_native.costmanagement.CultureCode.En_us,
///             operator: azure_native.costmanagement.BudgetNotificationOperatorType.LessThan,
///             threshold: 99,
///         },
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/123456",
///     timeGrain: azure_native.costmanagement.TimeGrainType.Last7Days,
///     timePeriod: {
///         endDate: "2025-04-01T00:00:00Z",
///         startDate: "2023-04-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.costmanagement.Budget("budget",
///     budget_name="TestAlertRule",
///     category=azure_native.costmanagement.CategoryType.RESERVATION_UTILIZATION,
///     e_tag="\"1d34d016a593709\"",
///     filter={
///         "dimensions": {
///             "name": "ReservationId",
///             "operator": azure_native.costmanagement.BudgetOperatorType.IN_,
///             "values": [
///                 "00000000-0000-0000-0000-000000000000",
///                 "00000000-0000-0000-0000-000000000001",
///                 "00000000-0000-0000-0000-000000000002",
///             ],
///         },
///     },
///     notifications={
///         "Actual_LessThan_99_Percent": {
///             "contact_emails": [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             "enabled": True,
///             "frequency": azure_native.costmanagement.Frequency.WEEKLY,
///             "locale": azure_native.costmanagement.CultureCode.EN_US,
///             "operator": azure_native.costmanagement.BudgetNotificationOperatorType.LESS_THAN,
///             "threshold": 99,
///         },
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/123456",
///     time_grain=azure_native.costmanagement.TimeGrainType.LAST7_DAYS,
///     time_period={
///         "end_date": "2025-04-01T00:00:00Z",
///         "start_date": "2023-04-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:costmanagement:Budget
///     properties:
///       budgetName: TestAlertRule
///       category: ReservationUtilization
///       eTag: '"1d34d016a593709"'
///       filter:
///         dimensions:
///           name: ReservationId
///           operator: In
///           values:
///             - 00000000-0000-0000-0000-000000000000
///             - 00000000-0000-0000-0000-000000000001
///             - 00000000-0000-0000-0000-000000000002
///       notifications:
///         Actual_LessThan_99_Percent:
///           contactEmails:
///             - johndoe@contoso.com
///             - janesmith@contoso.com
///           enabled: true
///           frequency: Weekly
///           locale: en-us
///           operator: LessThan
///           threshold: 99
///       scope: providers/Microsoft.Billing/billingAccounts/123456
///       timeGrain: Last7Days
///       timePeriod:
///         endDate: 2025-04-01T00:00:00Z
///         startDate: 2023-04-01T00:00:00Z
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate-ReservationUtilization-BillingAccountEA-AlertRule-ReservedResourceTypeFilter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.CostManagement.Budget("budget", new()
///     {
///         BudgetName = "TestAlertRule",
///         Category = AzureNative.CostManagement.CategoryType.ReservationUtilization,
///         ETag = "\"1d34d016a593709\"",
///         Filter = new AzureNative.CostManagement.Inputs.BudgetFilterArgs
///         {
///             Dimensions = new AzureNative.CostManagement.Inputs.BudgetComparisonExpressionArgs
///             {
///                 Name = "ReservedResourceType",
///                 Operator = AzureNative.CostManagement.BudgetOperatorType.In,
///                 Values = new[]
///                 {
///                     "VirtualMachines",
///                     "SqlDatabases",
///                     "CosmosDb",
///                 },
///             },
///         },
///         Notifications =
///         {
///             { "Actual_LessThan_99_Percent", new AzureNative.CostManagement.Inputs.NotificationArgs
///             {
///                 ContactEmails = new[]
///                 {
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com",
///                 },
///                 Enabled = true,
///                 Frequency = AzureNative.CostManagement.Frequency.Weekly,
///                 Locale = AzureNative.CostManagement.CultureCode.En_us,
///                 Operator = AzureNative.CostManagement.BudgetNotificationOperatorType.LessThan,
///                 Threshold = 99,
///             } },
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/123456",
///         TimeGrain = AzureNative.CostManagement.TimeGrainType.Last7Days,
///         TimePeriod = new AzureNative.CostManagement.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2025-04-01T00:00:00Z",
///             StartDate = "2023-04-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewBudget(ctx, "budget", &costmanagement.BudgetArgs{
/// 			BudgetName: pulumi.String("TestAlertRule"),
/// 			Category:   pulumi.String(costmanagement.CategoryTypeReservationUtilization),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter: &costmanagement.BudgetFilterArgs{
/// 				Dimensions: &costmanagement.BudgetComparisonExpressionArgs{
/// 					Name:     pulumi.String("ReservedResourceType"),
/// 					Operator: pulumi.String(costmanagement.BudgetOperatorTypeIn),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("VirtualMachines"),
/// 						pulumi.String("SqlDatabases"),
/// 						pulumi.String("CosmosDb"),
/// 					},
/// 				},
/// 			},
/// 			Notifications: costmanagement.NotificationMap{
/// 				"Actual_LessThan_99_Percent": &costmanagement.NotificationArgs{
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("johndoe@contoso.com"),
/// 						pulumi.String("janesmith@contoso.com"),
/// 					},
/// 					Enabled:   pulumi.Bool(true),
/// 					Frequency: pulumi.String(costmanagement.FrequencyWeekly),
/// 					Locale:    pulumi.String(costmanagement.CultureCode_En_Us),
/// 					Operator:  pulumi.String(costmanagement.BudgetNotificationOperatorTypeLessThan),
/// 					Threshold: pulumi.Float64(99),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("providers/Microsoft.Billing/billingAccounts/123456"),
/// 			TimeGrain: pulumi.String(costmanagement.TimeGrainTypeLast7Days),
/// 			TimePeriod: &costmanagement.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2025-04-01T00:00:00Z"),
/// 				StartDate: pulumi.String("2023-04-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.Budget;
/// import com.pulumi.azurenative.costmanagement.BudgetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetComparisonExpressionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetTimePeriodArgs;
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
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .budgetName("TestAlertRule")
///             .category("ReservationUtilization")
///             .eTag("\"1d34d016a593709\"")
///             .filter(BudgetFilterArgs.builder()
///                 .dimensions(BudgetComparisonExpressionArgs.builder()
///                     .name("ReservedResourceType")
///                     .operator("In")
///                     .values(
///                         "VirtualMachines",
///                         "SqlDatabases",
///                         "CosmosDb")
///                     .build())
///                 .build())
///             .notifications(Map.of("Actual_LessThan_99_Percent", NotificationArgs.builder()
///                 .contactEmails(
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com")
///                 .enabled(true)
///                 .frequency("Weekly")
///                 .locale("en-us")
///                 .operator("LessThan")
///                 .threshold(99.0)
///                 .build()))
///             .scope("providers/Microsoft.Billing/billingAccounts/123456")
///             .timeGrain("Last7Days")
///             .timePeriod(BudgetTimePeriodArgs.builder()
///                 .endDate("2025-04-01T00:00:00Z")
///                 .startDate("2023-04-01T00:00:00Z")
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
/// const budget = new azure_native.costmanagement.Budget("budget", {
///     budgetName: "TestAlertRule",
///     category: azure_native.costmanagement.CategoryType.ReservationUtilization,
///     eTag: "\"1d34d016a593709\"",
///     filter: {
///         dimensions: {
///             name: "ReservedResourceType",
///             operator: azure_native.costmanagement.BudgetOperatorType.In,
///             values: [
///                 "VirtualMachines",
///                 "SqlDatabases",
///                 "CosmosDb",
///             ],
///         },
///     },
///     notifications: {
///         Actual_LessThan_99_Percent: {
///             contactEmails: [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             enabled: true,
///             frequency: azure_native.costmanagement.Frequency.Weekly,
///             locale: azure_native.costmanagement.CultureCode.En_us,
///             operator: azure_native.costmanagement.BudgetNotificationOperatorType.LessThan,
///             threshold: 99,
///         },
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/123456",
///     timeGrain: azure_native.costmanagement.TimeGrainType.Last7Days,
///     timePeriod: {
///         endDate: "2025-04-01T00:00:00Z",
///         startDate: "2023-04-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.costmanagement.Budget("budget",
///     budget_name="TestAlertRule",
///     category=azure_native.costmanagement.CategoryType.RESERVATION_UTILIZATION,
///     e_tag="\"1d34d016a593709\"",
///     filter={
///         "dimensions": {
///             "name": "ReservedResourceType",
///             "operator": azure_native.costmanagement.BudgetOperatorType.IN_,
///             "values": [
///                 "VirtualMachines",
///                 "SqlDatabases",
///                 "CosmosDb",
///             ],
///         },
///     },
///     notifications={
///         "Actual_LessThan_99_Percent": {
///             "contact_emails": [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             "enabled": True,
///             "frequency": azure_native.costmanagement.Frequency.WEEKLY,
///             "locale": azure_native.costmanagement.CultureCode.EN_US,
///             "operator": azure_native.costmanagement.BudgetNotificationOperatorType.LESS_THAN,
///             "threshold": 99,
///         },
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/123456",
///     time_grain=azure_native.costmanagement.TimeGrainType.LAST7_DAYS,
///     time_period={
///         "end_date": "2025-04-01T00:00:00Z",
///         "start_date": "2023-04-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:costmanagement:Budget
///     properties:
///       budgetName: TestAlertRule
///       category: ReservationUtilization
///       eTag: '"1d34d016a593709"'
///       filter:
///         dimensions:
///           name: ReservedResourceType
///           operator: In
///           values:
///             - VirtualMachines
///             - SqlDatabases
///             - CosmosDb
///       notifications:
///         Actual_LessThan_99_Percent:
///           contactEmails:
///             - johndoe@contoso.com
///             - janesmith@contoso.com
///           enabled: true
///           frequency: Weekly
///           locale: en-us
///           operator: LessThan
///           threshold: 99
///       scope: providers/Microsoft.Billing/billingAccounts/123456
///       timeGrain: Last7Days
///       timePeriod:
///         endDate: 2025-04-01T00:00:00Z
///         startDate: 2023-04-01T00:00:00Z
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate-ReservationUtilization-BillingProfileMCA-AlertRule-ReservationIdFilter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.CostManagement.Budget("budget", new()
///     {
///         BudgetName = "TestAlertRule",
///         Category = AzureNative.CostManagement.CategoryType.ReservationUtilization,
///         ETag = "\"1d34d016a593709\"",
///         Filter = new AzureNative.CostManagement.Inputs.BudgetFilterArgs
///         {
///             Dimensions = new AzureNative.CostManagement.Inputs.BudgetComparisonExpressionArgs
///             {
///                 Name = "ReservationId",
///                 Operator = AzureNative.CostManagement.BudgetOperatorType.In,
///                 Values = new[]
///                 {
///                     "00000000-0000-0000-0000-000000000000",
///                     "00000000-0000-0000-0000-000000000001",
///                     "00000000-0000-0000-0000-000000000002",
///                 },
///             },
///         },
///         Notifications =
///         {
///             { "Actual_LessThan_99_Percent", new AzureNative.CostManagement.Inputs.NotificationArgs
///             {
///                 ContactEmails = new[]
///                 {
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com",
///                 },
///                 Enabled = true,
///                 Frequency = AzureNative.CostManagement.Frequency.Daily,
///                 Locale = AzureNative.CostManagement.CultureCode.En_us,
///                 Operator = AzureNative.CostManagement.BudgetNotificationOperatorType.LessThan,
///                 Threshold = 99,
///             } },
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN",
///         TimeGrain = AzureNative.CostManagement.TimeGrainType.Last30Days,
///         TimePeriod = new AzureNative.CostManagement.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2025-04-01T00:00:00Z",
///             StartDate = "2023-04-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewBudget(ctx, "budget", &costmanagement.BudgetArgs{
/// 			BudgetName: pulumi.String("TestAlertRule"),
/// 			Category:   pulumi.String(costmanagement.CategoryTypeReservationUtilization),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter: &costmanagement.BudgetFilterArgs{
/// 				Dimensions: &costmanagement.BudgetComparisonExpressionArgs{
/// 					Name:     pulumi.String("ReservationId"),
/// 					Operator: pulumi.String(costmanagement.BudgetOperatorTypeIn),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 						pulumi.String("00000000-0000-0000-0000-000000000001"),
/// 						pulumi.String("00000000-0000-0000-0000-000000000002"),
/// 					},
/// 				},
/// 			},
/// 			Notifications: costmanagement.NotificationMap{
/// 				"Actual_LessThan_99_Percent": &costmanagement.NotificationArgs{
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("johndoe@contoso.com"),
/// 						pulumi.String("janesmith@contoso.com"),
/// 					},
/// 					Enabled:   pulumi.Bool(true),
/// 					Frequency: pulumi.String(costmanagement.FrequencyDaily),
/// 					Locale:    pulumi.String(costmanagement.CultureCode_En_Us),
/// 					Operator:  pulumi.String(costmanagement.BudgetNotificationOperatorTypeLessThan),
/// 					Threshold: pulumi.Float64(99),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN"),
/// 			TimeGrain: pulumi.String(costmanagement.TimeGrainTypeLast30Days),
/// 			TimePeriod: &costmanagement.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2025-04-01T00:00:00Z"),
/// 				StartDate: pulumi.String("2023-04-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.Budget;
/// import com.pulumi.azurenative.costmanagement.BudgetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetComparisonExpressionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetTimePeriodArgs;
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
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .budgetName("TestAlertRule")
///             .category("ReservationUtilization")
///             .eTag("\"1d34d016a593709\"")
///             .filter(BudgetFilterArgs.builder()
///                 .dimensions(BudgetComparisonExpressionArgs.builder()
///                     .name("ReservationId")
///                     .operator("In")
///                     .values(
///                         "00000000-0000-0000-0000-000000000000",
///                         "00000000-0000-0000-0000-000000000001",
///                         "00000000-0000-0000-0000-000000000002")
///                     .build())
///                 .build())
///             .notifications(Map.of("Actual_LessThan_99_Percent", NotificationArgs.builder()
///                 .contactEmails(
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com")
///                 .enabled(true)
///                 .frequency("Daily")
///                 .locale("en-us")
///                 .operator("LessThan")
///                 .threshold(99.0)
///                 .build()))
///             .scope("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN")
///             .timeGrain("Last30Days")
///             .timePeriod(BudgetTimePeriodArgs.builder()
///                 .endDate("2025-04-01T00:00:00Z")
///                 .startDate("2023-04-01T00:00:00Z")
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
/// const budget = new azure_native.costmanagement.Budget("budget", {
///     budgetName: "TestAlertRule",
///     category: azure_native.costmanagement.CategoryType.ReservationUtilization,
///     eTag: "\"1d34d016a593709\"",
///     filter: {
///         dimensions: {
///             name: "ReservationId",
///             operator: azure_native.costmanagement.BudgetOperatorType.In,
///             values: [
///                 "00000000-0000-0000-0000-000000000000",
///                 "00000000-0000-0000-0000-000000000001",
///                 "00000000-0000-0000-0000-000000000002",
///             ],
///         },
///     },
///     notifications: {
///         Actual_LessThan_99_Percent: {
///             contactEmails: [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             enabled: true,
///             frequency: azure_native.costmanagement.Frequency.Daily,
///             locale: azure_native.costmanagement.CultureCode.En_us,
///             operator: azure_native.costmanagement.BudgetNotificationOperatorType.LessThan,
///             threshold: 99,
///         },
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN",
///     timeGrain: azure_native.costmanagement.TimeGrainType.Last30Days,
///     timePeriod: {
///         endDate: "2025-04-01T00:00:00Z",
///         startDate: "2023-04-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.costmanagement.Budget("budget",
///     budget_name="TestAlertRule",
///     category=azure_native.costmanagement.CategoryType.RESERVATION_UTILIZATION,
///     e_tag="\"1d34d016a593709\"",
///     filter={
///         "dimensions": {
///             "name": "ReservationId",
///             "operator": azure_native.costmanagement.BudgetOperatorType.IN_,
///             "values": [
///                 "00000000-0000-0000-0000-000000000000",
///                 "00000000-0000-0000-0000-000000000001",
///                 "00000000-0000-0000-0000-000000000002",
///             ],
///         },
///     },
///     notifications={
///         "Actual_LessThan_99_Percent": {
///             "contact_emails": [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             "enabled": True,
///             "frequency": azure_native.costmanagement.Frequency.DAILY,
///             "locale": azure_native.costmanagement.CultureCode.EN_US,
///             "operator": azure_native.costmanagement.BudgetNotificationOperatorType.LESS_THAN,
///             "threshold": 99,
///         },
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN",
///     time_grain=azure_native.costmanagement.TimeGrainType.LAST30_DAYS,
///     time_period={
///         "end_date": "2025-04-01T00:00:00Z",
///         "start_date": "2023-04-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:costmanagement:Budget
///     properties:
///       budgetName: TestAlertRule
///       category: ReservationUtilization
///       eTag: '"1d34d016a593709"'
///       filter:
///         dimensions:
///           name: ReservationId
///           operator: In
///           values:
///             - 00000000-0000-0000-0000-000000000000
///             - 00000000-0000-0000-0000-000000000001
///             - 00000000-0000-0000-0000-000000000002
///       notifications:
///         Actual_LessThan_99_Percent:
///           contactEmails:
///             - johndoe@contoso.com
///             - janesmith@contoso.com
///           enabled: true
///           frequency: Daily
///           locale: en-us
///           operator: LessThan
///           threshold: 99
///       scope: providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN
///       timeGrain: Last30Days
///       timePeriod:
///         endDate: 2025-04-01T00:00:00Z
///         startDate: 2023-04-01T00:00:00Z
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate-ReservationUtilization-BillingProfileMCA-AlertRule-ReservedResourceTypeFilter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.CostManagement.Budget("budget", new()
///     {
///         BudgetName = "TestAlertRule",
///         Category = AzureNative.CostManagement.CategoryType.ReservationUtilization,
///         ETag = "\"1d34d016a593709\"",
///         Filter = new AzureNative.CostManagement.Inputs.BudgetFilterArgs
///         {
///             Dimensions = new AzureNative.CostManagement.Inputs.BudgetComparisonExpressionArgs
///             {
///                 Name = "ReservedResourceType",
///                 Operator = AzureNative.CostManagement.BudgetOperatorType.In,
///                 Values = new[]
///                 {
///                     "VirtualMachines",
///                     "SqlDatabases",
///                     "CosmosDb",
///                 },
///             },
///         },
///         Notifications =
///         {
///             { "Actual_LessThan_99_Percent", new AzureNative.CostManagement.Inputs.NotificationArgs
///             {
///                 ContactEmails = new[]
///                 {
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com",
///                 },
///                 Enabled = true,
///                 Frequency = AzureNative.CostManagement.Frequency.Daily,
///                 Locale = AzureNative.CostManagement.CultureCode.En_us,
///                 Operator = AzureNative.CostManagement.BudgetNotificationOperatorType.LessThan,
///                 Threshold = 99,
///             } },
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN",
///         TimeGrain = AzureNative.CostManagement.TimeGrainType.Last30Days,
///         TimePeriod = new AzureNative.CostManagement.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2025-04-01T00:00:00Z",
///             StartDate = "2023-04-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewBudget(ctx, "budget", &costmanagement.BudgetArgs{
/// 			BudgetName: pulumi.String("TestAlertRule"),
/// 			Category:   pulumi.String(costmanagement.CategoryTypeReservationUtilization),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter: &costmanagement.BudgetFilterArgs{
/// 				Dimensions: &costmanagement.BudgetComparisonExpressionArgs{
/// 					Name:     pulumi.String("ReservedResourceType"),
/// 					Operator: pulumi.String(costmanagement.BudgetOperatorTypeIn),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("VirtualMachines"),
/// 						pulumi.String("SqlDatabases"),
/// 						pulumi.String("CosmosDb"),
/// 					},
/// 				},
/// 			},
/// 			Notifications: costmanagement.NotificationMap{
/// 				"Actual_LessThan_99_Percent": &costmanagement.NotificationArgs{
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("johndoe@contoso.com"),
/// 						pulumi.String("janesmith@contoso.com"),
/// 					},
/// 					Enabled:   pulumi.Bool(true),
/// 					Frequency: pulumi.String(costmanagement.FrequencyDaily),
/// 					Locale:    pulumi.String(costmanagement.CultureCode_En_Us),
/// 					Operator:  pulumi.String(costmanagement.BudgetNotificationOperatorTypeLessThan),
/// 					Threshold: pulumi.Float64(99),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN"),
/// 			TimeGrain: pulumi.String(costmanagement.TimeGrainTypeLast30Days),
/// 			TimePeriod: &costmanagement.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2025-04-01T00:00:00Z"),
/// 				StartDate: pulumi.String("2023-04-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.Budget;
/// import com.pulumi.azurenative.costmanagement.BudgetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetComparisonExpressionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetTimePeriodArgs;
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
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .budgetName("TestAlertRule")
///             .category("ReservationUtilization")
///             .eTag("\"1d34d016a593709\"")
///             .filter(BudgetFilterArgs.builder()
///                 .dimensions(BudgetComparisonExpressionArgs.builder()
///                     .name("ReservedResourceType")
///                     .operator("In")
///                     .values(
///                         "VirtualMachines",
///                         "SqlDatabases",
///                         "CosmosDb")
///                     .build())
///                 .build())
///             .notifications(Map.of("Actual_LessThan_99_Percent", NotificationArgs.builder()
///                 .contactEmails(
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com")
///                 .enabled(true)
///                 .frequency("Daily")
///                 .locale("en-us")
///                 .operator("LessThan")
///                 .threshold(99.0)
///                 .build()))
///             .scope("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN")
///             .timeGrain("Last30Days")
///             .timePeriod(BudgetTimePeriodArgs.builder()
///                 .endDate("2025-04-01T00:00:00Z")
///                 .startDate("2023-04-01T00:00:00Z")
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
/// const budget = new azure_native.costmanagement.Budget("budget", {
///     budgetName: "TestAlertRule",
///     category: azure_native.costmanagement.CategoryType.ReservationUtilization,
///     eTag: "\"1d34d016a593709\"",
///     filter: {
///         dimensions: {
///             name: "ReservedResourceType",
///             operator: azure_native.costmanagement.BudgetOperatorType.In,
///             values: [
///                 "VirtualMachines",
///                 "SqlDatabases",
///                 "CosmosDb",
///             ],
///         },
///     },
///     notifications: {
///         Actual_LessThan_99_Percent: {
///             contactEmails: [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             enabled: true,
///             frequency: azure_native.costmanagement.Frequency.Daily,
///             locale: azure_native.costmanagement.CultureCode.En_us,
///             operator: azure_native.costmanagement.BudgetNotificationOperatorType.LessThan,
///             threshold: 99,
///         },
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN",
///     timeGrain: azure_native.costmanagement.TimeGrainType.Last30Days,
///     timePeriod: {
///         endDate: "2025-04-01T00:00:00Z",
///         startDate: "2023-04-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.costmanagement.Budget("budget",
///     budget_name="TestAlertRule",
///     category=azure_native.costmanagement.CategoryType.RESERVATION_UTILIZATION,
///     e_tag="\"1d34d016a593709\"",
///     filter={
///         "dimensions": {
///             "name": "ReservedResourceType",
///             "operator": azure_native.costmanagement.BudgetOperatorType.IN_,
///             "values": [
///                 "VirtualMachines",
///                 "SqlDatabases",
///                 "CosmosDb",
///             ],
///         },
///     },
///     notifications={
///         "Actual_LessThan_99_Percent": {
///             "contact_emails": [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             "enabled": True,
///             "frequency": azure_native.costmanagement.Frequency.DAILY,
///             "locale": azure_native.costmanagement.CultureCode.EN_US,
///             "operator": azure_native.costmanagement.BudgetNotificationOperatorType.LESS_THAN,
///             "threshold": 99,
///         },
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN",
///     time_grain=azure_native.costmanagement.TimeGrainType.LAST30_DAYS,
///     time_period={
///         "end_date": "2025-04-01T00:00:00Z",
///         "start_date": "2023-04-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:costmanagement:Budget
///     properties:
///       budgetName: TestAlertRule
///       category: ReservationUtilization
///       eTag: '"1d34d016a593709"'
///       filter:
///         dimensions:
///           name: ReservedResourceType
///           operator: In
///           values:
///             - VirtualMachines
///             - SqlDatabases
///             - CosmosDb
///       notifications:
///         Actual_LessThan_99_Percent:
///           contactEmails:
///             - johndoe@contoso.com
///             - janesmith@contoso.com
///           enabled: true
///           frequency: Daily
///           locale: en-us
///           operator: LessThan
///           threshold: 99
///       scope: providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN
///       timeGrain: Last30Days
///       timePeriod:
///         endDate: 2025-04-01T00:00:00Z
///         startDate: 2023-04-01T00:00:00Z
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate-ReservationUtilization-BillingProfileMCA-AlertRule.json
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.CostManagement.Budget("budget", new()
///     {
///         BudgetName = "TestAlertRule",
///         Category = AzureNative.CostManagement.CategoryType.ReservationUtilization,
///         ETag = "\"1d34d016a593709\"",
///         Filter = null,
///         Notifications =
///         {
///             { "Actual_LessThan_99_Percent", new AzureNative.CostManagement.Inputs.NotificationArgs
///             {
///                 ContactEmails = new[]
///                 {
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com",
///                 },
///                 Enabled = true,
///                 Frequency = AzureNative.CostManagement.Frequency.Daily,
///                 Locale = AzureNative.CostManagement.CultureCode.En_us,
///                 Operator = AzureNative.CostManagement.BudgetNotificationOperatorType.LessThan,
///                 Threshold = 99,
///             } },
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN",
///         TimeGrain = AzureNative.CostManagement.TimeGrainType.Last30Days,
///         TimePeriod = new AzureNative.CostManagement.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2025-04-01T00:00:00Z",
///             StartDate = "2023-04-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewBudget(ctx, "budget", &costmanagement.BudgetArgs{
/// 			BudgetName: pulumi.String("TestAlertRule"),
/// 			Category:   pulumi.String(costmanagement.CategoryTypeReservationUtilization),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter:     &costmanagement.BudgetFilterArgs{},
/// 			Notifications: costmanagement.NotificationMap{
/// 				"Actual_LessThan_99_Percent": &costmanagement.NotificationArgs{
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("johndoe@contoso.com"),
/// 						pulumi.String("janesmith@contoso.com"),
/// 					},
/// 					Enabled:   pulumi.Bool(true),
/// 					Frequency: pulumi.String(costmanagement.FrequencyDaily),
/// 					Locale:    pulumi.String(costmanagement.CultureCode_En_Us),
/// 					Operator:  pulumi.String(costmanagement.BudgetNotificationOperatorTypeLessThan),
/// 					Threshold: pulumi.Float64(99),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN"),
/// 			TimeGrain: pulumi.String(costmanagement.TimeGrainTypeLast30Days),
/// 			TimePeriod: &costmanagement.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2025-04-01T00:00:00Z"),
/// 				StartDate: pulumi.String("2023-04-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.Budget;
/// import com.pulumi.azurenative.costmanagement.BudgetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetTimePeriodArgs;
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
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .budgetName("TestAlertRule")
///             .category("ReservationUtilization")
///             .eTag("\"1d34d016a593709\"")
///             .filter(BudgetFilterArgs.builder()
///                 .build())
///             .notifications(Map.of("Actual_LessThan_99_Percent", NotificationArgs.builder()
///                 .contactEmails(
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com")
///                 .enabled(true)
///                 .frequency("Daily")
///                 .locale("en-us")
///                 .operator("LessThan")
///                 .threshold(99.0)
///                 .build()))
///             .scope("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN")
///             .timeGrain("Last30Days")
///             .timePeriod(BudgetTimePeriodArgs.builder()
///                 .endDate("2025-04-01T00:00:00Z")
///                 .startDate("2023-04-01T00:00:00Z")
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
/// const budget = new azure_native.costmanagement.Budget("budget", {
///     budgetName: "TestAlertRule",
///     category: azure_native.costmanagement.CategoryType.ReservationUtilization,
///     eTag: "\"1d34d016a593709\"",
///     filter: {},
///     notifications: {
///         Actual_LessThan_99_Percent: {
///             contactEmails: [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             enabled: true,
///             frequency: azure_native.costmanagement.Frequency.Daily,
///             locale: azure_native.costmanagement.CultureCode.En_us,
///             operator: azure_native.costmanagement.BudgetNotificationOperatorType.LessThan,
///             threshold: 99,
///         },
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN",
///     timeGrain: azure_native.costmanagement.TimeGrainType.Last30Days,
///     timePeriod: {
///         endDate: "2025-04-01T00:00:00Z",
///         startDate: "2023-04-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.costmanagement.Budget("budget",
///     budget_name="TestAlertRule",
///     category=azure_native.costmanagement.CategoryType.RESERVATION_UTILIZATION,
///     e_tag="\"1d34d016a593709\"",
///     filter={},
///     notifications={
///         "Actual_LessThan_99_Percent": {
///             "contact_emails": [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             "enabled": True,
///             "frequency": azure_native.costmanagement.Frequency.DAILY,
///             "locale": azure_native.costmanagement.CultureCode.EN_US,
///             "operator": azure_native.costmanagement.BudgetNotificationOperatorType.LESS_THAN,
///             "threshold": 99,
///         },
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN",
///     time_grain=azure_native.costmanagement.TimeGrainType.LAST30_DAYS,
///     time_period={
///         "end_date": "2025-04-01T00:00:00Z",
///         "start_date": "2023-04-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:costmanagement:Budget
///     properties:
///       budgetName: TestAlertRule
///       category: ReservationUtilization
///       eTag: '"1d34d016a593709"'
///       filter: {}
///       notifications:
///         Actual_LessThan_99_Percent:
///           contactEmails:
///             - johndoe@contoso.com
///             - janesmith@contoso.com
///           enabled: true
///           frequency: Daily
///           locale: en-us
///           operator: LessThan
///           threshold: 99
///       scope: providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/billingProfiles/KKKK-LLLL-MMM-NNN
///       timeGrain: Last30Days
///       timePeriod:
///         endDate: 2025-04-01T00:00:00Z
///         startDate: 2023-04-01T00:00:00Z
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate-ReservationUtilization-CustomerCSP-AlertRule-ReservationIdFilter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.CostManagement.Budget("budget", new()
///     {
///         BudgetName = "TestAlertRule",
///         Category = AzureNative.CostManagement.CategoryType.ReservationUtilization,
///         ETag = "\"1d34d016a593709\"",
///         Filter = new AzureNative.CostManagement.Inputs.BudgetFilterArgs
///         {
///             Dimensions = new AzureNative.CostManagement.Inputs.BudgetComparisonExpressionArgs
///             {
///                 Name = "ReservationId",
///                 Operator = AzureNative.CostManagement.BudgetOperatorType.In,
///                 Values = new[]
///                 {
///                     "00000000-0000-0000-0000-000000000000",
///                     "00000000-0000-0000-0000-000000000001",
///                     "00000000-0000-0000-0000-000000000002",
///                 },
///             },
///         },
///         Notifications =
///         {
///             { "Actual_LessThan_99_Percent", new AzureNative.CostManagement.Inputs.NotificationArgs
///             {
///                 ContactEmails = new[]
///                 {
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com",
///                 },
///                 Enabled = true,
///                 Frequency = AzureNative.CostManagement.Frequency.Daily,
///                 Locale = AzureNative.CostManagement.CultureCode.En_us,
///                 Operator = AzureNative.CostManagement.BudgetNotificationOperatorType.LessThan,
///                 Threshold = 99,
///             } },
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444",
///         TimeGrain = AzureNative.CostManagement.TimeGrainType.Last30Days,
///         TimePeriod = new AzureNative.CostManagement.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2025-04-01T00:00:00Z",
///             StartDate = "2023-04-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewBudget(ctx, "budget", &costmanagement.BudgetArgs{
/// 			BudgetName: pulumi.String("TestAlertRule"),
/// 			Category:   pulumi.String(costmanagement.CategoryTypeReservationUtilization),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter: &costmanagement.BudgetFilterArgs{
/// 				Dimensions: &costmanagement.BudgetComparisonExpressionArgs{
/// 					Name:     pulumi.String("ReservationId"),
/// 					Operator: pulumi.String(costmanagement.BudgetOperatorTypeIn),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 						pulumi.String("00000000-0000-0000-0000-000000000001"),
/// 						pulumi.String("00000000-0000-0000-0000-000000000002"),
/// 					},
/// 				},
/// 			},
/// 			Notifications: costmanagement.NotificationMap{
/// 				"Actual_LessThan_99_Percent": &costmanagement.NotificationArgs{
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("johndoe@contoso.com"),
/// 						pulumi.String("janesmith@contoso.com"),
/// 					},
/// 					Enabled:   pulumi.Bool(true),
/// 					Frequency: pulumi.String(costmanagement.FrequencyDaily),
/// 					Locale:    pulumi.String(costmanagement.CultureCode_En_Us),
/// 					Operator:  pulumi.String(costmanagement.BudgetNotificationOperatorTypeLessThan),
/// 					Threshold: pulumi.Float64(99),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444"),
/// 			TimeGrain: pulumi.String(costmanagement.TimeGrainTypeLast30Days),
/// 			TimePeriod: &costmanagement.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2025-04-01T00:00:00Z"),
/// 				StartDate: pulumi.String("2023-04-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.Budget;
/// import com.pulumi.azurenative.costmanagement.BudgetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetComparisonExpressionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetTimePeriodArgs;
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
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .budgetName("TestAlertRule")
///             .category("ReservationUtilization")
///             .eTag("\"1d34d016a593709\"")
///             .filter(BudgetFilterArgs.builder()
///                 .dimensions(BudgetComparisonExpressionArgs.builder()
///                     .name("ReservationId")
///                     .operator("In")
///                     .values(
///                         "00000000-0000-0000-0000-000000000000",
///                         "00000000-0000-0000-0000-000000000001",
///                         "00000000-0000-0000-0000-000000000002")
///                     .build())
///                 .build())
///             .notifications(Map.of("Actual_LessThan_99_Percent", NotificationArgs.builder()
///                 .contactEmails(
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com")
///                 .enabled(true)
///                 .frequency("Daily")
///                 .locale("en-us")
///                 .operator("LessThan")
///                 .threshold(99.0)
///                 .build()))
///             .scope("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444")
///             .timeGrain("Last30Days")
///             .timePeriod(BudgetTimePeriodArgs.builder()
///                 .endDate("2025-04-01T00:00:00Z")
///                 .startDate("2023-04-01T00:00:00Z")
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
/// const budget = new azure_native.costmanagement.Budget("budget", {
///     budgetName: "TestAlertRule",
///     category: azure_native.costmanagement.CategoryType.ReservationUtilization,
///     eTag: "\"1d34d016a593709\"",
///     filter: {
///         dimensions: {
///             name: "ReservationId",
///             operator: azure_native.costmanagement.BudgetOperatorType.In,
///             values: [
///                 "00000000-0000-0000-0000-000000000000",
///                 "00000000-0000-0000-0000-000000000001",
///                 "00000000-0000-0000-0000-000000000002",
///             ],
///         },
///     },
///     notifications: {
///         Actual_LessThan_99_Percent: {
///             contactEmails: [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             enabled: true,
///             frequency: azure_native.costmanagement.Frequency.Daily,
///             locale: azure_native.costmanagement.CultureCode.En_us,
///             operator: azure_native.costmanagement.BudgetNotificationOperatorType.LessThan,
///             threshold: 99,
///         },
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444",
///     timeGrain: azure_native.costmanagement.TimeGrainType.Last30Days,
///     timePeriod: {
///         endDate: "2025-04-01T00:00:00Z",
///         startDate: "2023-04-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.costmanagement.Budget("budget",
///     budget_name="TestAlertRule",
///     category=azure_native.costmanagement.CategoryType.RESERVATION_UTILIZATION,
///     e_tag="\"1d34d016a593709\"",
///     filter={
///         "dimensions": {
///             "name": "ReservationId",
///             "operator": azure_native.costmanagement.BudgetOperatorType.IN_,
///             "values": [
///                 "00000000-0000-0000-0000-000000000000",
///                 "00000000-0000-0000-0000-000000000001",
///                 "00000000-0000-0000-0000-000000000002",
///             ],
///         },
///     },
///     notifications={
///         "Actual_LessThan_99_Percent": {
///             "contact_emails": [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             "enabled": True,
///             "frequency": azure_native.costmanagement.Frequency.DAILY,
///             "locale": azure_native.costmanagement.CultureCode.EN_US,
///             "operator": azure_native.costmanagement.BudgetNotificationOperatorType.LESS_THAN,
///             "threshold": 99,
///         },
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444",
///     time_grain=azure_native.costmanagement.TimeGrainType.LAST30_DAYS,
///     time_period={
///         "end_date": "2025-04-01T00:00:00Z",
///         "start_date": "2023-04-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:costmanagement:Budget
///     properties:
///       budgetName: TestAlertRule
///       category: ReservationUtilization
///       eTag: '"1d34d016a593709"'
///       filter:
///         dimensions:
///           name: ReservationId
///           operator: In
///           values:
///             - 00000000-0000-0000-0000-000000000000
///             - 00000000-0000-0000-0000-000000000001
///             - 00000000-0000-0000-0000-000000000002
///       notifications:
///         Actual_LessThan_99_Percent:
///           contactEmails:
///             - johndoe@contoso.com
///             - janesmith@contoso.com
///           enabled: true
///           frequency: Daily
///           locale: en-us
///           operator: LessThan
///           threshold: 99
///       scope: providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444
///       timeGrain: Last30Days
///       timePeriod:
///         endDate: 2025-04-01T00:00:00Z
///         startDate: 2023-04-01T00:00:00Z
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate-ReservationUtilization-CustomerCSP-AlertRule-ReservedResourceTypeFilter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.CostManagement.Budget("budget", new()
///     {
///         BudgetName = "TestAlertRule",
///         Category = AzureNative.CostManagement.CategoryType.ReservationUtilization,
///         ETag = "\"1d34d016a593709\"",
///         Filter = new AzureNative.CostManagement.Inputs.BudgetFilterArgs
///         {
///             Dimensions = new AzureNative.CostManagement.Inputs.BudgetComparisonExpressionArgs
///             {
///                 Name = "ReservedResourceType",
///                 Operator = AzureNative.CostManagement.BudgetOperatorType.In,
///                 Values = new[]
///                 {
///                     "VirtualMachines",
///                     "SqlDatabases",
///                     "CosmosDb",
///                 },
///             },
///         },
///         Notifications =
///         {
///             { "Actual_LessThan_99_Percent", new AzureNative.CostManagement.Inputs.NotificationArgs
///             {
///                 ContactEmails = new[]
///                 {
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com",
///                 },
///                 Enabled = true,
///                 Frequency = AzureNative.CostManagement.Frequency.Daily,
///                 Locale = AzureNative.CostManagement.CultureCode.En_us,
///                 Operator = AzureNative.CostManagement.BudgetNotificationOperatorType.LessThan,
///                 Threshold = 99,
///             } },
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444",
///         TimeGrain = AzureNative.CostManagement.TimeGrainType.Last30Days,
///         TimePeriod = new AzureNative.CostManagement.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2025-04-01T00:00:00Z",
///             StartDate = "2023-04-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewBudget(ctx, "budget", &costmanagement.BudgetArgs{
/// 			BudgetName: pulumi.String("TestAlertRule"),
/// 			Category:   pulumi.String(costmanagement.CategoryTypeReservationUtilization),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter: &costmanagement.BudgetFilterArgs{
/// 				Dimensions: &costmanagement.BudgetComparisonExpressionArgs{
/// 					Name:     pulumi.String("ReservedResourceType"),
/// 					Operator: pulumi.String(costmanagement.BudgetOperatorTypeIn),
/// 					Values: pulumi.StringArray{
/// 						pulumi.String("VirtualMachines"),
/// 						pulumi.String("SqlDatabases"),
/// 						pulumi.String("CosmosDb"),
/// 					},
/// 				},
/// 			},
/// 			Notifications: costmanagement.NotificationMap{
/// 				"Actual_LessThan_99_Percent": &costmanagement.NotificationArgs{
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("johndoe@contoso.com"),
/// 						pulumi.String("janesmith@contoso.com"),
/// 					},
/// 					Enabled:   pulumi.Bool(true),
/// 					Frequency: pulumi.String(costmanagement.FrequencyDaily),
/// 					Locale:    pulumi.String(costmanagement.CultureCode_En_Us),
/// 					Operator:  pulumi.String(costmanagement.BudgetNotificationOperatorTypeLessThan),
/// 					Threshold: pulumi.Float64(99),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444"),
/// 			TimeGrain: pulumi.String(costmanagement.TimeGrainTypeLast30Days),
/// 			TimePeriod: &costmanagement.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2025-04-01T00:00:00Z"),
/// 				StartDate: pulumi.String("2023-04-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.Budget;
/// import com.pulumi.azurenative.costmanagement.BudgetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetComparisonExpressionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetTimePeriodArgs;
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
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .budgetName("TestAlertRule")
///             .category("ReservationUtilization")
///             .eTag("\"1d34d016a593709\"")
///             .filter(BudgetFilterArgs.builder()
///                 .dimensions(BudgetComparisonExpressionArgs.builder()
///                     .name("ReservedResourceType")
///                     .operator("In")
///                     .values(
///                         "VirtualMachines",
///                         "SqlDatabases",
///                         "CosmosDb")
///                     .build())
///                 .build())
///             .notifications(Map.of("Actual_LessThan_99_Percent", NotificationArgs.builder()
///                 .contactEmails(
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com")
///                 .enabled(true)
///                 .frequency("Daily")
///                 .locale("en-us")
///                 .operator("LessThan")
///                 .threshold(99.0)
///                 .build()))
///             .scope("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444")
///             .timeGrain("Last30Days")
///             .timePeriod(BudgetTimePeriodArgs.builder()
///                 .endDate("2025-04-01T00:00:00Z")
///                 .startDate("2023-04-01T00:00:00Z")
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
/// const budget = new azure_native.costmanagement.Budget("budget", {
///     budgetName: "TestAlertRule",
///     category: azure_native.costmanagement.CategoryType.ReservationUtilization,
///     eTag: "\"1d34d016a593709\"",
///     filter: {
///         dimensions: {
///             name: "ReservedResourceType",
///             operator: azure_native.costmanagement.BudgetOperatorType.In,
///             values: [
///                 "VirtualMachines",
///                 "SqlDatabases",
///                 "CosmosDb",
///             ],
///         },
///     },
///     notifications: {
///         Actual_LessThan_99_Percent: {
///             contactEmails: [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             enabled: true,
///             frequency: azure_native.costmanagement.Frequency.Daily,
///             locale: azure_native.costmanagement.CultureCode.En_us,
///             operator: azure_native.costmanagement.BudgetNotificationOperatorType.LessThan,
///             threshold: 99,
///         },
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444",
///     timeGrain: azure_native.costmanagement.TimeGrainType.Last30Days,
///     timePeriod: {
///         endDate: "2025-04-01T00:00:00Z",
///         startDate: "2023-04-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.costmanagement.Budget("budget",
///     budget_name="TestAlertRule",
///     category=azure_native.costmanagement.CategoryType.RESERVATION_UTILIZATION,
///     e_tag="\"1d34d016a593709\"",
///     filter={
///         "dimensions": {
///             "name": "ReservedResourceType",
///             "operator": azure_native.costmanagement.BudgetOperatorType.IN_,
///             "values": [
///                 "VirtualMachines",
///                 "SqlDatabases",
///                 "CosmosDb",
///             ],
///         },
///     },
///     notifications={
///         "Actual_LessThan_99_Percent": {
///             "contact_emails": [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             "enabled": True,
///             "frequency": azure_native.costmanagement.Frequency.DAILY,
///             "locale": azure_native.costmanagement.CultureCode.EN_US,
///             "operator": azure_native.costmanagement.BudgetNotificationOperatorType.LESS_THAN,
///             "threshold": 99,
///         },
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444",
///     time_grain=azure_native.costmanagement.TimeGrainType.LAST30_DAYS,
///     time_period={
///         "end_date": "2025-04-01T00:00:00Z",
///         "start_date": "2023-04-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:costmanagement:Budget
///     properties:
///       budgetName: TestAlertRule
///       category: ReservationUtilization
///       eTag: '"1d34d016a593709"'
///       filter:
///         dimensions:
///           name: ReservedResourceType
///           operator: In
///           values:
///             - VirtualMachines
///             - SqlDatabases
///             - CosmosDb
///       notifications:
///         Actual_LessThan_99_Percent:
///           contactEmails:
///             - johndoe@contoso.com
///             - janesmith@contoso.com
///           enabled: true
///           frequency: Daily
///           locale: en-us
///           operator: LessThan
///           threshold: 99
///       scope: providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444
///       timeGrain: Last30Days
///       timePeriod:
///         endDate: 2025-04-01T00:00:00Z
///         startDate: 2023-04-01T00:00:00Z
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate-ReservationUtilization-CustomerCSP-AlertRule.json
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var budget = new AzureNative.CostManagement.Budget("budget", new()
///     {
///         BudgetName = "TestAlertRule",
///         Category = AzureNative.CostManagement.CategoryType.ReservationUtilization,
///         ETag = "\"1d34d016a593709\"",
///         Filter = null,
///         Notifications =
///         {
///             { "Actual_LessThan_99_Percent", new AzureNative.CostManagement.Inputs.NotificationArgs
///             {
///                 ContactEmails = new[]
///                 {
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com",
///                 },
///                 Enabled = true,
///                 Frequency = AzureNative.CostManagement.Frequency.Daily,
///                 Locale = AzureNative.CostManagement.CultureCode.En_us,
///                 Operator = AzureNative.CostManagement.BudgetNotificationOperatorType.LessThan,
///                 Threshold = 99,
///             } },
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444",
///         TimeGrain = AzureNative.CostManagement.TimeGrainType.Last30Days,
///         TimePeriod = new AzureNative.CostManagement.Inputs.BudgetTimePeriodArgs
///         {
///             EndDate = "2025-04-01T00:00:00Z",
///             StartDate = "2023-04-01T00:00:00Z",
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
/// 	costmanagement "github.com/pulumi/pulumi-azure-native-sdk/costmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := costmanagement.NewBudget(ctx, "budget", &costmanagement.BudgetArgs{
/// 			BudgetName: pulumi.String("TestAlertRule"),
/// 			Category:   pulumi.String(costmanagement.CategoryTypeReservationUtilization),
/// 			ETag:       pulumi.String("\"1d34d016a593709\""),
/// 			Filter:     &costmanagement.BudgetFilterArgs{},
/// 			Notifications: costmanagement.NotificationMap{
/// 				"Actual_LessThan_99_Percent": &costmanagement.NotificationArgs{
/// 					ContactEmails: pulumi.StringArray{
/// 						pulumi.String("johndoe@contoso.com"),
/// 						pulumi.String("janesmith@contoso.com"),
/// 					},
/// 					Enabled:   pulumi.Bool(true),
/// 					Frequency: pulumi.String(costmanagement.FrequencyDaily),
/// 					Locale:    pulumi.String(costmanagement.CultureCode_En_Us),
/// 					Operator:  pulumi.String(costmanagement.BudgetNotificationOperatorTypeLessThan),
/// 					Threshold: pulumi.Float64(99),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444"),
/// 			TimeGrain: pulumi.String(costmanagement.TimeGrainTypeLast30Days),
/// 			TimePeriod: &costmanagement.BudgetTimePeriodArgs{
/// 				EndDate:   pulumi.String("2025-04-01T00:00:00Z"),
/// 				StartDate: pulumi.String("2023-04-01T00:00:00Z"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.costmanagement.Budget;
/// import com.pulumi.azurenative.costmanagement.BudgetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.BudgetTimePeriodArgs;
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
///         var budget = new Budget("budget", BudgetArgs.builder()
///             .budgetName("TestAlertRule")
///             .category("ReservationUtilization")
///             .eTag("\"1d34d016a593709\"")
///             .filter(BudgetFilterArgs.builder()
///                 .build())
///             .notifications(Map.of("Actual_LessThan_99_Percent", NotificationArgs.builder()
///                 .contactEmails(
///                     "johndoe@contoso.com",
///                     "janesmith@contoso.com")
///                 .enabled(true)
///                 .frequency("Daily")
///                 .locale("en-us")
///                 .operator("LessThan")
///                 .threshold(99.0)
///                 .build()))
///             .scope("providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444")
///             .timeGrain("Last30Days")
///             .timePeriod(BudgetTimePeriodArgs.builder()
///                 .endDate("2025-04-01T00:00:00Z")
///                 .startDate("2023-04-01T00:00:00Z")
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
/// const budget = new azure_native.costmanagement.Budget("budget", {
///     budgetName: "TestAlertRule",
///     category: azure_native.costmanagement.CategoryType.ReservationUtilization,
///     eTag: "\"1d34d016a593709\"",
///     filter: {},
///     notifications: {
///         Actual_LessThan_99_Percent: {
///             contactEmails: [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             enabled: true,
///             frequency: azure_native.costmanagement.Frequency.Daily,
///             locale: azure_native.costmanagement.CultureCode.En_us,
///             operator: azure_native.costmanagement.BudgetNotificationOperatorType.LessThan,
///             threshold: 99,
///         },
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444",
///     timeGrain: azure_native.costmanagement.TimeGrainType.Last30Days,
///     timePeriod: {
///         endDate: "2025-04-01T00:00:00Z",
///         startDate: "2023-04-01T00:00:00Z",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// budget = azure_native.costmanagement.Budget("budget",
///     budget_name="TestAlertRule",
///     category=azure_native.costmanagement.CategoryType.RESERVATION_UTILIZATION,
///     e_tag="\"1d34d016a593709\"",
///     filter={},
///     notifications={
///         "Actual_LessThan_99_Percent": {
///             "contact_emails": [
///                 "johndoe@contoso.com",
///                 "janesmith@contoso.com",
///             ],
///             "enabled": True,
///             "frequency": azure_native.costmanagement.Frequency.DAILY,
///             "locale": azure_native.costmanagement.CultureCode.EN_US,
///             "operator": azure_native.costmanagement.BudgetNotificationOperatorType.LESS_THAN,
///             "threshold": 99,
///         },
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444",
///     time_grain=azure_native.costmanagement.TimeGrainType.LAST30_DAYS,
///     time_period={
///         "end_date": "2025-04-01T00:00:00Z",
///         "start_date": "2023-04-01T00:00:00Z",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   budget:
///     type: azure-native:costmanagement:Budget
///     properties:
///       budgetName: TestAlertRule
///       category: ReservationUtilization
///       eTag: '"1d34d016a593709"'
///       filter: {}
///       notifications:
///         Actual_LessThan_99_Percent:
///           contactEmails:
///             - johndoe@contoso.com
///             - janesmith@contoso.com
///           enabled: true
///           frequency: Daily
///           locale: en-us
///           operator: LessThan
///           threshold: 99
///       scope: providers/Microsoft.Billing/billingAccounts/aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee:ffffffff-gggg-hhhh-iiii-jjjjjjjjjjjj_2023-04-01/customers/000000-1111-2222-3333-444444444444
///       timeGrain: Last30Days
///       timePeriod:
///         endDate: 2025-04-01T00:00:00Z
///         startDate: 2023-04-01T00:00:00Z
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
/// $ pulumi import azure-native:costmanagement:Budget TestAlertRule /{scope}/providers/Microsoft.CostManagement/budgets/{budgetName}
/// ```
class Budget extends pulumi.CustomResource {
  /// The total amount of cost to track with the budget.
  ///
  /// Supported for CategoryType(s): Cost.
  ///
  /// Required for CategoryType(s): Cost.
  late final pulumi.Output<double?> amount;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The category of the budget.
  /// - 'Cost' defines a Budget.
  /// - 'ReservationUtilization' defines a Reservation Utilization Alert Rule.
  late final pulumi.Output<String> category;
  /// The current amount of cost which is being tracked for a budget.
  ///
  /// Supported for CategoryType(s): Cost.
  late final pulumi.Output<CurrentSpendResponse> currentSpend;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  late final pulumi.Output<String?> eTag;
  /// May be used to filter budgets by user-specified dimensions and/or tags.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  late final pulumi.Output<BudgetFilterResponse?> filter;
  /// The forecasted cost which is being tracked for a budget.
  ///
  /// Supported for CategoryType(s): Cost.
  late final pulumi.Output<ForecastSpendResponse> forecastSpend;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Dictionary of notifications associated with the budget.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// - Constraints for **CategoryType: Cost** - Budget can have up to 5 notifications with thresholdType: Actual and 5 notifications with thresholdType: Forecasted.
  /// - Constraints for **CategoryType: ReservationUtilization** - Only one notification allowed. thresholdType is not applicable.
  late final pulumi.Output<Map<String, NotificationResponse>?> notifications;
  /// The time covered by a budget. Tracking of the amount will be reset based on the time grain.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// Supported timeGrainTypes for **CategoryType: Cost**
  ///
  /// - Monthly
  /// - Quarterly
  /// - Annually
  /// - BillingMonth*
  /// - BillingQuarter*
  /// - BillingAnnual*
  ///
  /// *only supported for Web Direct customers.
  ///
  /// Supported timeGrainTypes for **CategoryType: ReservationUtilization**
  /// - Last7Days
  /// - Last30Days
  ///
  /// Required for CategoryType(s): Cost, ReservationUtilization.
  late final pulumi.Output<String> timeGrain;
  /// The time period that defines the active period of the budget. The budget will evaluate data on or after the startDate and will expire on the endDate.
  ///
  /// Supported for CategoryType(s): Cost, ReservationUtilization.
  ///
  /// Required for CategoryType(s): Cost, ReservationUtilization.
  late final pulumi.Output<BudgetTimePeriodResponse> timePeriod;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Budget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Budget]. {@macro pulumi_costmanagement_budget_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Budget(
    String name, {
    BudgetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:costmanagement:Budget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    amount = registerOutput<double?>('amount');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    category = registerOutput<String>('category');
    currentSpend = registerOutput<CurrentSpendResponse>('currentSpend', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CurrentSpendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eTag = registerOutput<String?>('eTag');
    filter = registerOutput<BudgetFilterResponse?>('filter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    forecastSpend = registerOutput<ForecastSpendResponse>('forecastSpend', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ForecastSpendResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    notifications = registerOutput<Map<String, NotificationResponse>?>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<NotificationResponse>(guardedValue, (value) => NotificationResponse.fromMap((value as Map).cast<String, dynamic>())); });
    timeGrain = registerOutput<String>('timeGrain');
    timePeriod = registerOutput<BudgetTimePeriodResponse>('timePeriod', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BudgetTimePeriodResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
