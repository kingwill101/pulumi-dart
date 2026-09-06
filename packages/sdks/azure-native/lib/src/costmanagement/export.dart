import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_args.dart';
import 'export_definition_response.dart';
import 'export_delivery_info_response.dart';
import 'export_execution_list_result_response.dart';
import 'export_schedule_response.dart';
import 'system_assigned_service_identity_response.dart';

/// An export resource.
///
/// Uses Azure REST API version 2024-08-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2019-01-01, 2019-09-01, 2019-10-01, 2019-11-01, 2020-06-01, 2020-12-01-preview, 2021-01-01, 2021-10-01, 2022-10-01, 2023-03-01, 2023-04-01-preview, 2023-07-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ExportCreateOrUpdateByBillingAccount
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var export = new AzureNative.CostManagement.Export("export", new()
///     {
///         Definition = new AzureNative.CostManagement.Inputs.ExportDefinitionArgs
///         {
///             DataSet = new AzureNative.CostManagement.Inputs.ExportDatasetArgs
///             {
///                 Configuration = new AzureNative.CostManagement.Inputs.ExportDatasetConfigurationArgs
///                 {
///                     Columns = new[]
///                     {
///                         "Date",
///                         "MeterId",
///                         "ResourceId",
///                         "ResourceLocation",
///                         "Quantity",
///                     },
///                 },
///                 Granularity = AzureNative.CostManagement.GranularityType.Daily,
///             },
///             Timeframe = AzureNative.CostManagement.TimeframeType.MonthToDate,
///             Type = AzureNative.CostManagement.ExportType.ActualCost,
///         },
///         DeliveryInfo = new AzureNative.CostManagement.Inputs.ExportDeliveryInfoArgs
///         {
///             Destination = new AzureNative.CostManagement.Inputs.ExportDeliveryDestinationArgs
///             {
///                 Container = "exports",
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///                 RootFolderPath = "ad-hoc",
///             },
///         },
///         ExportName = "TestExport",
///         Format = AzureNative.CostManagement.FormatType.Csv,
///         Identity = new AzureNative.CostManagement.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.CostManagement.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         Location = "centralus",
///         Schedule = new AzureNative.CostManagement.Inputs.ExportScheduleArgs
///         {
///             Recurrence = AzureNative.CostManagement.RecurrenceType.Weekly,
///             RecurrencePeriod = new AzureNative.CostManagement.Inputs.ExportRecurrencePeriodArgs
///             {
///                 From = "2020-06-01T00:00:00Z",
///                 To = "2020-10-31T00:00:00Z",
///             },
///             Status = AzureNative.CostManagement.StatusType.Active,
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/123456",
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
/// 		_, err := costmanagement.NewExport(ctx, "export", &costmanagement.ExportArgs{
/// 			Definition: &costmanagement.ExportDefinitionArgs{
/// 				DataSet: &costmanagement.ExportDatasetArgs{
/// 					Configuration: &costmanagement.ExportDatasetConfigurationArgs{
/// 						Columns: pulumi.StringArray{
/// 							pulumi.String("Date"),
/// 							pulumi.String("MeterId"),
/// 							pulumi.String("ResourceId"),
/// 							pulumi.String("ResourceLocation"),
/// 							pulumi.String("Quantity"),
/// 						},
/// 					},
/// 					Granularity: pulumi.String(costmanagement.GranularityTypeDaily),
/// 				},
/// 				Timeframe: pulumi.String(costmanagement.TimeframeTypeMonthToDate),
/// 				Type:      pulumi.String(costmanagement.ExportTypeActualCost),
/// 			},
/// 			DeliveryInfo: &costmanagement.ExportDeliveryInfoArgs{
/// 				Destination: &costmanagement.ExportDeliveryDestinationArgs{
/// 					Container:      pulumi.String("exports"),
/// 					ResourceId:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"),
/// 					RootFolderPath: pulumi.String("ad-hoc"),
/// 				},
/// 			},
/// 			ExportName: pulumi.String("TestExport"),
/// 			Format:     pulumi.String(costmanagement.FormatTypeCsv),
/// 			Identity: &costmanagement.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(costmanagement.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("centralus"),
/// 			Schedule: &costmanagement.ExportScheduleArgs{
/// 				Recurrence: pulumi.String(costmanagement.RecurrenceTypeWeekly),
/// 				RecurrencePeriod: &costmanagement.ExportRecurrencePeriodArgs{
/// 					From: pulumi.String("2020-06-01T00:00:00Z"),
/// 					To:   pulumi.String("2020-10-31T00:00:00Z"),
/// 				},
/// 				Status: pulumi.String(costmanagement.StatusTypeActive),
/// 			},
/// 			Scope: pulumi.String("providers/Microsoft.Billing/billingAccounts/123456"),
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
/// resource "azure-native_costmanagement_export" "export" {
///   definition = {
///     data_set = {
///       configuration = {
///         columns = ["Date", "MeterId", "ResourceId", "ResourceLocation", "Quantity"]
///       }
///       granularity = "Daily"
///     }
///     timeframe = "MonthToDate"
///     type      = "ActualCost"
///   }
///   delivery_info = {
///     destination = {
///       container        = "exports"
///       resource_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"
///       root_folder_path = "ad-hoc"
///     }
///   }
///   export_name = "TestExport"
///   format      = "Csv"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location = "centralus"
///   schedule = {
///     recurrence = "Weekly"
///     recurrence_period = {
///       from = "2020-06-01T00:00:00Z"
///       to   = "2020-10-31T00:00:00Z"
///     }
///     status = "Active"
///   }
///   scope = "providers/Microsoft.Billing/billingAccounts/123456"
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
/// import com.pulumi.azurenative.costmanagement.Export;
/// import com.pulumi.azurenative.costmanagement.ExportArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDefinitionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetConfigurationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryInfoArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryDestinationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.SystemAssignedServiceIdentityArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportScheduleArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportRecurrencePeriodArgs;
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
///         var export = new Export("export", ExportArgs.builder()
///             .definition(ExportDefinitionArgs.builder()
///                 .dataSet(ExportDatasetArgs.builder()
///                     .configuration(ExportDatasetConfigurationArgs.builder()
///                         .columns(
///                             "Date",
///                             "MeterId",
///                             "ResourceId",
///                             "ResourceLocation",
///                             "Quantity")
///                         .build())
///                     .granularity("Daily")
///                     .build())
///                 .timeframe("MonthToDate")
///                 .type("ActualCost")
///                 .build())
///             .deliveryInfo(ExportDeliveryInfoArgs.builder()
///                 .destination(ExportDeliveryDestinationArgs.builder()
///                     .container("exports")
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182")
///                     .rootFolderPath("ad-hoc")
///                     .build())
///                 .build())
///             .exportName("TestExport")
///             .format("Csv")
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("centralus")
///             .schedule(ExportScheduleArgs.builder()
///                 .recurrence("Weekly")
///                 .recurrencePeriod(ExportRecurrencePeriodArgs.builder()
///                     .from("2020-06-01T00:00:00Z")
///                     .to("2020-10-31T00:00:00Z")
///                     .build())
///                 .status("Active")
///                 .build())
///             .scope("providers/Microsoft.Billing/billingAccounts/123456")
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
/// const _export = new azure_native.costmanagement.Export("export", {
///     definition: {
///         dataSet: {
///             configuration: {
///                 columns: [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             granularity: azure_native.costmanagement.GranularityType.Daily,
///         },
///         timeframe: azure_native.costmanagement.TimeframeType.MonthToDate,
///         type: azure_native.costmanagement.ExportType.ActualCost,
///     },
///     deliveryInfo: {
///         destination: {
///             container: "exports",
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             rootFolderPath: "ad-hoc",
///         },
///     },
///     exportName: "TestExport",
///     format: azure_native.costmanagement.FormatType.Csv,
///     identity: {
///         type: azure_native.costmanagement.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     location: "centralus",
///     schedule: {
///         recurrence: azure_native.costmanagement.RecurrenceType.Weekly,
///         recurrencePeriod: {
///             from: "2020-06-01T00:00:00Z",
///             to: "2020-10-31T00:00:00Z",
///         },
///         status: azure_native.costmanagement.StatusType.Active,
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/123456",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// export = azure_native.costmanagement.Export("export",
///     definition={
///         "data_set": {
///             "configuration": {
///                 "columns": [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             "granularity": azure_native.costmanagement.GranularityType.DAILY,
///         },
///         "timeframe": azure_native.costmanagement.TimeframeType.MONTH_TO_DATE,
///         "type": azure_native.costmanagement.ExportType.ACTUAL_COST,
///     },
///     delivery_info={
///         "destination": {
///             "container": "exports",
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             "root_folder_path": "ad-hoc",
///         },
///     },
///     export_name="TestExport",
///     format=azure_native.costmanagement.FormatType.CSV,
///     identity={
///         "type": azure_native.costmanagement.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="centralus",
///     schedule={
///         "recurrence": azure_native.costmanagement.RecurrenceType.WEEKLY,
///         "recurrence_period": {
///             "from_": "2020-06-01T00:00:00Z",
///             "to": "2020-10-31T00:00:00Z",
///         },
///         "status": azure_native.costmanagement.StatusType.ACTIVE,
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/123456")
///
/// ```
///
/// ```yaml
/// resources:
///   export:
///     type: azure-native:costmanagement:Export
///     properties:
///       definition:
///         dataSet:
///           configuration:
///             columns:
///               - Date
///               - MeterId
///               - ResourceId
///               - ResourceLocation
///               - Quantity
///           granularity: Daily
///         timeframe: MonthToDate
///         type: ActualCost
///       deliveryInfo:
///         destination:
///           container: exports
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182
///           rootFolderPath: ad-hoc
///       exportName: TestExport
///       format: Csv
///       identity:
///         type: SystemAssigned
///       location: centralus
///       schedule:
///         recurrence: Weekly
///         recurrencePeriod:
///           from: 2020-06-01T00:00:00Z
///           to: 2020-10-31T00:00:00Z
///         status: Active
///       scope: providers/Microsoft.Billing/billingAccounts/123456
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ExportCreateOrUpdateByDepartment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var export = new AzureNative.CostManagement.Export("export", new()
///     {
///         Definition = new AzureNative.CostManagement.Inputs.ExportDefinitionArgs
///         {
///             DataSet = new AzureNative.CostManagement.Inputs.ExportDatasetArgs
///             {
///                 Configuration = new AzureNative.CostManagement.Inputs.ExportDatasetConfigurationArgs
///                 {
///                     Columns = new[]
///                     {
///                         "Date",
///                         "MeterId",
///                         "ResourceId",
///                         "ResourceLocation",
///                         "Quantity",
///                     },
///                 },
///                 Granularity = AzureNative.CostManagement.GranularityType.Daily,
///             },
///             Timeframe = AzureNative.CostManagement.TimeframeType.MonthToDate,
///             Type = AzureNative.CostManagement.ExportType.ActualCost,
///         },
///         DeliveryInfo = new AzureNative.CostManagement.Inputs.ExportDeliveryInfoArgs
///         {
///             Destination = new AzureNative.CostManagement.Inputs.ExportDeliveryDestinationArgs
///             {
///                 Container = "exports",
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///                 RootFolderPath = "ad-hoc",
///             },
///         },
///         ExportName = "TestExport",
///         Format = AzureNative.CostManagement.FormatType.Csv,
///         Identity = new AzureNative.CostManagement.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.CostManagement.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         Location = "centralus",
///         Schedule = new AzureNative.CostManagement.Inputs.ExportScheduleArgs
///         {
///             Recurrence = AzureNative.CostManagement.RecurrenceType.Weekly,
///             RecurrencePeriod = new AzureNative.CostManagement.Inputs.ExportRecurrencePeriodArgs
///             {
///                 From = "2020-06-01T00:00:00Z",
///                 To = "2020-10-31T00:00:00Z",
///             },
///             Status = AzureNative.CostManagement.StatusType.Active,
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/12/departments/1234",
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
/// 		_, err := costmanagement.NewExport(ctx, "export", &costmanagement.ExportArgs{
/// 			Definition: &costmanagement.ExportDefinitionArgs{
/// 				DataSet: &costmanagement.ExportDatasetArgs{
/// 					Configuration: &costmanagement.ExportDatasetConfigurationArgs{
/// 						Columns: pulumi.StringArray{
/// 							pulumi.String("Date"),
/// 							pulumi.String("MeterId"),
/// 							pulumi.String("ResourceId"),
/// 							pulumi.String("ResourceLocation"),
/// 							pulumi.String("Quantity"),
/// 						},
/// 					},
/// 					Granularity: pulumi.String(costmanagement.GranularityTypeDaily),
/// 				},
/// 				Timeframe: pulumi.String(costmanagement.TimeframeTypeMonthToDate),
/// 				Type:      pulumi.String(costmanagement.ExportTypeActualCost),
/// 			},
/// 			DeliveryInfo: &costmanagement.ExportDeliveryInfoArgs{
/// 				Destination: &costmanagement.ExportDeliveryDestinationArgs{
/// 					Container:      pulumi.String("exports"),
/// 					ResourceId:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"),
/// 					RootFolderPath: pulumi.String("ad-hoc"),
/// 				},
/// 			},
/// 			ExportName: pulumi.String("TestExport"),
/// 			Format:     pulumi.String(costmanagement.FormatTypeCsv),
/// 			Identity: &costmanagement.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(costmanagement.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("centralus"),
/// 			Schedule: &costmanagement.ExportScheduleArgs{
/// 				Recurrence: pulumi.String(costmanagement.RecurrenceTypeWeekly),
/// 				RecurrencePeriod: &costmanagement.ExportRecurrencePeriodArgs{
/// 					From: pulumi.String("2020-06-01T00:00:00Z"),
/// 					To:   pulumi.String("2020-10-31T00:00:00Z"),
/// 				},
/// 				Status: pulumi.String(costmanagement.StatusTypeActive),
/// 			},
/// 			Scope: pulumi.String("providers/Microsoft.Billing/billingAccounts/12/departments/1234"),
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
/// resource "azure-native_costmanagement_export" "export" {
///   definition = {
///     data_set = {
///       configuration = {
///         columns = ["Date", "MeterId", "ResourceId", "ResourceLocation", "Quantity"]
///       }
///       granularity = "Daily"
///     }
///     timeframe = "MonthToDate"
///     type      = "ActualCost"
///   }
///   delivery_info = {
///     destination = {
///       container        = "exports"
///       resource_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"
///       root_folder_path = "ad-hoc"
///     }
///   }
///   export_name = "TestExport"
///   format      = "Csv"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location = "centralus"
///   schedule = {
///     recurrence = "Weekly"
///     recurrence_period = {
///       from = "2020-06-01T00:00:00Z"
///       to   = "2020-10-31T00:00:00Z"
///     }
///     status = "Active"
///   }
///   scope = "providers/Microsoft.Billing/billingAccounts/12/departments/1234"
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
/// import com.pulumi.azurenative.costmanagement.Export;
/// import com.pulumi.azurenative.costmanagement.ExportArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDefinitionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetConfigurationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryInfoArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryDestinationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.SystemAssignedServiceIdentityArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportScheduleArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportRecurrencePeriodArgs;
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
///         var export = new Export("export", ExportArgs.builder()
///             .definition(ExportDefinitionArgs.builder()
///                 .dataSet(ExportDatasetArgs.builder()
///                     .configuration(ExportDatasetConfigurationArgs.builder()
///                         .columns(
///                             "Date",
///                             "MeterId",
///                             "ResourceId",
///                             "ResourceLocation",
///                             "Quantity")
///                         .build())
///                     .granularity("Daily")
///                     .build())
///                 .timeframe("MonthToDate")
///                 .type("ActualCost")
///                 .build())
///             .deliveryInfo(ExportDeliveryInfoArgs.builder()
///                 .destination(ExportDeliveryDestinationArgs.builder()
///                     .container("exports")
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182")
///                     .rootFolderPath("ad-hoc")
///                     .build())
///                 .build())
///             .exportName("TestExport")
///             .format("Csv")
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("centralus")
///             .schedule(ExportScheduleArgs.builder()
///                 .recurrence("Weekly")
///                 .recurrencePeriod(ExportRecurrencePeriodArgs.builder()
///                     .from("2020-06-01T00:00:00Z")
///                     .to("2020-10-31T00:00:00Z")
///                     .build())
///                 .status("Active")
///                 .build())
///             .scope("providers/Microsoft.Billing/billingAccounts/12/departments/1234")
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
/// const _export = new azure_native.costmanagement.Export("export", {
///     definition: {
///         dataSet: {
///             configuration: {
///                 columns: [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             granularity: azure_native.costmanagement.GranularityType.Daily,
///         },
///         timeframe: azure_native.costmanagement.TimeframeType.MonthToDate,
///         type: azure_native.costmanagement.ExportType.ActualCost,
///     },
///     deliveryInfo: {
///         destination: {
///             container: "exports",
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             rootFolderPath: "ad-hoc",
///         },
///     },
///     exportName: "TestExport",
///     format: azure_native.costmanagement.FormatType.Csv,
///     identity: {
///         type: azure_native.costmanagement.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     location: "centralus",
///     schedule: {
///         recurrence: azure_native.costmanagement.RecurrenceType.Weekly,
///         recurrencePeriod: {
///             from: "2020-06-01T00:00:00Z",
///             to: "2020-10-31T00:00:00Z",
///         },
///         status: azure_native.costmanagement.StatusType.Active,
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/12/departments/1234",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// export = azure_native.costmanagement.Export("export",
///     definition={
///         "data_set": {
///             "configuration": {
///                 "columns": [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             "granularity": azure_native.costmanagement.GranularityType.DAILY,
///         },
///         "timeframe": azure_native.costmanagement.TimeframeType.MONTH_TO_DATE,
///         "type": azure_native.costmanagement.ExportType.ACTUAL_COST,
///     },
///     delivery_info={
///         "destination": {
///             "container": "exports",
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             "root_folder_path": "ad-hoc",
///         },
///     },
///     export_name="TestExport",
///     format=azure_native.costmanagement.FormatType.CSV,
///     identity={
///         "type": azure_native.costmanagement.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="centralus",
///     schedule={
///         "recurrence": azure_native.costmanagement.RecurrenceType.WEEKLY,
///         "recurrence_period": {
///             "from_": "2020-06-01T00:00:00Z",
///             "to": "2020-10-31T00:00:00Z",
///         },
///         "status": azure_native.costmanagement.StatusType.ACTIVE,
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/12/departments/1234")
///
/// ```
///
/// ```yaml
/// resources:
///   export:
///     type: azure-native:costmanagement:Export
///     properties:
///       definition:
///         dataSet:
///           configuration:
///             columns:
///               - Date
///               - MeterId
///               - ResourceId
///               - ResourceLocation
///               - Quantity
///           granularity: Daily
///         timeframe: MonthToDate
///         type: ActualCost
///       deliveryInfo:
///         destination:
///           container: exports
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182
///           rootFolderPath: ad-hoc
///       exportName: TestExport
///       format: Csv
///       identity:
///         type: SystemAssigned
///       location: centralus
///       schedule:
///         recurrence: Weekly
///         recurrencePeriod:
///           from: 2020-06-01T00:00:00Z
///           to: 2020-10-31T00:00:00Z
///         status: Active
///       scope: providers/Microsoft.Billing/billingAccounts/12/departments/1234
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ExportCreateOrUpdateByEnrollmentAccount
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var export = new AzureNative.CostManagement.Export("export", new()
///     {
///         Definition = new AzureNative.CostManagement.Inputs.ExportDefinitionArgs
///         {
///             DataSet = new AzureNative.CostManagement.Inputs.ExportDatasetArgs
///             {
///                 Configuration = new AzureNative.CostManagement.Inputs.ExportDatasetConfigurationArgs
///                 {
///                     Columns = new[]
///                     {
///                         "Date",
///                         "MeterId",
///                         "ResourceId",
///                         "ResourceLocation",
///                         "Quantity",
///                     },
///                 },
///                 Granularity = AzureNative.CostManagement.GranularityType.Daily,
///             },
///             Timeframe = AzureNative.CostManagement.TimeframeType.MonthToDate,
///             Type = AzureNative.CostManagement.ExportType.ActualCost,
///         },
///         DeliveryInfo = new AzureNative.CostManagement.Inputs.ExportDeliveryInfoArgs
///         {
///             Destination = new AzureNative.CostManagement.Inputs.ExportDeliveryDestinationArgs
///             {
///                 Container = "exports",
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///                 RootFolderPath = "ad-hoc",
///             },
///         },
///         ExportName = "TestExport",
///         Format = AzureNative.CostManagement.FormatType.Csv,
///         Identity = new AzureNative.CostManagement.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.CostManagement.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         Location = "centralus",
///         Schedule = new AzureNative.CostManagement.Inputs.ExportScheduleArgs
///         {
///             Recurrence = AzureNative.CostManagement.RecurrenceType.Weekly,
///             RecurrencePeriod = new AzureNative.CostManagement.Inputs.ExportRecurrencePeriodArgs
///             {
///                 From = "2020-06-01T00:00:00Z",
///                 To = "2020-10-31T00:00:00Z",
///             },
///             Status = AzureNative.CostManagement.StatusType.Active,
///         },
///         Scope = "providers/Microsoft.Billing/billingAccounts/100/enrollmentAccounts/456",
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
/// 		_, err := costmanagement.NewExport(ctx, "export", &costmanagement.ExportArgs{
/// 			Definition: &costmanagement.ExportDefinitionArgs{
/// 				DataSet: &costmanagement.ExportDatasetArgs{
/// 					Configuration: &costmanagement.ExportDatasetConfigurationArgs{
/// 						Columns: pulumi.StringArray{
/// 							pulumi.String("Date"),
/// 							pulumi.String("MeterId"),
/// 							pulumi.String("ResourceId"),
/// 							pulumi.String("ResourceLocation"),
/// 							pulumi.String("Quantity"),
/// 						},
/// 					},
/// 					Granularity: pulumi.String(costmanagement.GranularityTypeDaily),
/// 				},
/// 				Timeframe: pulumi.String(costmanagement.TimeframeTypeMonthToDate),
/// 				Type:      pulumi.String(costmanagement.ExportTypeActualCost),
/// 			},
/// 			DeliveryInfo: &costmanagement.ExportDeliveryInfoArgs{
/// 				Destination: &costmanagement.ExportDeliveryDestinationArgs{
/// 					Container:      pulumi.String("exports"),
/// 					ResourceId:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"),
/// 					RootFolderPath: pulumi.String("ad-hoc"),
/// 				},
/// 			},
/// 			ExportName: pulumi.String("TestExport"),
/// 			Format:     pulumi.String(costmanagement.FormatTypeCsv),
/// 			Identity: &costmanagement.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(costmanagement.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("centralus"),
/// 			Schedule: &costmanagement.ExportScheduleArgs{
/// 				Recurrence: pulumi.String(costmanagement.RecurrenceTypeWeekly),
/// 				RecurrencePeriod: &costmanagement.ExportRecurrencePeriodArgs{
/// 					From: pulumi.String("2020-06-01T00:00:00Z"),
/// 					To:   pulumi.String("2020-10-31T00:00:00Z"),
/// 				},
/// 				Status: pulumi.String(costmanagement.StatusTypeActive),
/// 			},
/// 			Scope: pulumi.String("providers/Microsoft.Billing/billingAccounts/100/enrollmentAccounts/456"),
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
/// resource "azure-native_costmanagement_export" "export" {
///   definition = {
///     data_set = {
///       configuration = {
///         columns = ["Date", "MeterId", "ResourceId", "ResourceLocation", "Quantity"]
///       }
///       granularity = "Daily"
///     }
///     timeframe = "MonthToDate"
///     type      = "ActualCost"
///   }
///   delivery_info = {
///     destination = {
///       container        = "exports"
///       resource_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"
///       root_folder_path = "ad-hoc"
///     }
///   }
///   export_name = "TestExport"
///   format      = "Csv"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location = "centralus"
///   schedule = {
///     recurrence = "Weekly"
///     recurrence_period = {
///       from = "2020-06-01T00:00:00Z"
///       to   = "2020-10-31T00:00:00Z"
///     }
///     status = "Active"
///   }
///   scope = "providers/Microsoft.Billing/billingAccounts/100/enrollmentAccounts/456"
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
/// import com.pulumi.azurenative.costmanagement.Export;
/// import com.pulumi.azurenative.costmanagement.ExportArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDefinitionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetConfigurationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryInfoArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryDestinationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.SystemAssignedServiceIdentityArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportScheduleArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportRecurrencePeriodArgs;
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
///         var export = new Export("export", ExportArgs.builder()
///             .definition(ExportDefinitionArgs.builder()
///                 .dataSet(ExportDatasetArgs.builder()
///                     .configuration(ExportDatasetConfigurationArgs.builder()
///                         .columns(
///                             "Date",
///                             "MeterId",
///                             "ResourceId",
///                             "ResourceLocation",
///                             "Quantity")
///                         .build())
///                     .granularity("Daily")
///                     .build())
///                 .timeframe("MonthToDate")
///                 .type("ActualCost")
///                 .build())
///             .deliveryInfo(ExportDeliveryInfoArgs.builder()
///                 .destination(ExportDeliveryDestinationArgs.builder()
///                     .container("exports")
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182")
///                     .rootFolderPath("ad-hoc")
///                     .build())
///                 .build())
///             .exportName("TestExport")
///             .format("Csv")
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("centralus")
///             .schedule(ExportScheduleArgs.builder()
///                 .recurrence("Weekly")
///                 .recurrencePeriod(ExportRecurrencePeriodArgs.builder()
///                     .from("2020-06-01T00:00:00Z")
///                     .to("2020-10-31T00:00:00Z")
///                     .build())
///                 .status("Active")
///                 .build())
///             .scope("providers/Microsoft.Billing/billingAccounts/100/enrollmentAccounts/456")
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
/// const _export = new azure_native.costmanagement.Export("export", {
///     definition: {
///         dataSet: {
///             configuration: {
///                 columns: [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             granularity: azure_native.costmanagement.GranularityType.Daily,
///         },
///         timeframe: azure_native.costmanagement.TimeframeType.MonthToDate,
///         type: azure_native.costmanagement.ExportType.ActualCost,
///     },
///     deliveryInfo: {
///         destination: {
///             container: "exports",
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             rootFolderPath: "ad-hoc",
///         },
///     },
///     exportName: "TestExport",
///     format: azure_native.costmanagement.FormatType.Csv,
///     identity: {
///         type: azure_native.costmanagement.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     location: "centralus",
///     schedule: {
///         recurrence: azure_native.costmanagement.RecurrenceType.Weekly,
///         recurrencePeriod: {
///             from: "2020-06-01T00:00:00Z",
///             to: "2020-10-31T00:00:00Z",
///         },
///         status: azure_native.costmanagement.StatusType.Active,
///     },
///     scope: "providers/Microsoft.Billing/billingAccounts/100/enrollmentAccounts/456",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// export = azure_native.costmanagement.Export("export",
///     definition={
///         "data_set": {
///             "configuration": {
///                 "columns": [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             "granularity": azure_native.costmanagement.GranularityType.DAILY,
///         },
///         "timeframe": azure_native.costmanagement.TimeframeType.MONTH_TO_DATE,
///         "type": azure_native.costmanagement.ExportType.ACTUAL_COST,
///     },
///     delivery_info={
///         "destination": {
///             "container": "exports",
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             "root_folder_path": "ad-hoc",
///         },
///     },
///     export_name="TestExport",
///     format=azure_native.costmanagement.FormatType.CSV,
///     identity={
///         "type": azure_native.costmanagement.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="centralus",
///     schedule={
///         "recurrence": azure_native.costmanagement.RecurrenceType.WEEKLY,
///         "recurrence_period": {
///             "from_": "2020-06-01T00:00:00Z",
///             "to": "2020-10-31T00:00:00Z",
///         },
///         "status": azure_native.costmanagement.StatusType.ACTIVE,
///     },
///     scope="providers/Microsoft.Billing/billingAccounts/100/enrollmentAccounts/456")
///
/// ```
///
/// ```yaml
/// resources:
///   export:
///     type: azure-native:costmanagement:Export
///     properties:
///       definition:
///         dataSet:
///           configuration:
///             columns:
///               - Date
///               - MeterId
///               - ResourceId
///               - ResourceLocation
///               - Quantity
///           granularity: Daily
///         timeframe: MonthToDate
///         type: ActualCost
///       deliveryInfo:
///         destination:
///           container: exports
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182
///           rootFolderPath: ad-hoc
///       exportName: TestExport
///       format: Csv
///       identity:
///         type: SystemAssigned
///       location: centralus
///       schedule:
///         recurrence: Weekly
///         recurrencePeriod:
///           from: 2020-06-01T00:00:00Z
///           to: 2020-10-31T00:00:00Z
///         status: Active
///       scope: providers/Microsoft.Billing/billingAccounts/100/enrollmentAccounts/456
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ExportCreateOrUpdateByManagementGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var export = new AzureNative.CostManagement.Export("export", new()
///     {
///         Definition = new AzureNative.CostManagement.Inputs.ExportDefinitionArgs
///         {
///             DataSet = new AzureNative.CostManagement.Inputs.ExportDatasetArgs
///             {
///                 Configuration = new AzureNative.CostManagement.Inputs.ExportDatasetConfigurationArgs
///                 {
///                     Columns = new[]
///                     {
///                         "Date",
///                         "MeterId",
///                         "ResourceId",
///                         "ResourceLocation",
///                         "Quantity",
///                     },
///                 },
///                 Granularity = AzureNative.CostManagement.GranularityType.Daily,
///             },
///             Timeframe = AzureNative.CostManagement.TimeframeType.MonthToDate,
///             Type = AzureNative.CostManagement.ExportType.ActualCost,
///         },
///         DeliveryInfo = new AzureNative.CostManagement.Inputs.ExportDeliveryInfoArgs
///         {
///             Destination = new AzureNative.CostManagement.Inputs.ExportDeliveryDestinationArgs
///             {
///                 Container = "exports",
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///                 RootFolderPath = "ad-hoc",
///             },
///         },
///         ExportName = "TestExport",
///         Format = AzureNative.CostManagement.FormatType.Csv,
///         Identity = new AzureNative.CostManagement.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.CostManagement.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         Location = "centralus",
///         Schedule = new AzureNative.CostManagement.Inputs.ExportScheduleArgs
///         {
///             Recurrence = AzureNative.CostManagement.RecurrenceType.Weekly,
///             RecurrencePeriod = new AzureNative.CostManagement.Inputs.ExportRecurrencePeriodArgs
///             {
///                 From = "2020-06-01T00:00:00Z",
///                 To = "2020-10-31T00:00:00Z",
///             },
///             Status = AzureNative.CostManagement.StatusType.Active,
///         },
///         Scope = "providers/Microsoft.Management/managementGroups/TestMG",
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
/// 		_, err := costmanagement.NewExport(ctx, "export", &costmanagement.ExportArgs{
/// 			Definition: &costmanagement.ExportDefinitionArgs{
/// 				DataSet: &costmanagement.ExportDatasetArgs{
/// 					Configuration: &costmanagement.ExportDatasetConfigurationArgs{
/// 						Columns: pulumi.StringArray{
/// 							pulumi.String("Date"),
/// 							pulumi.String("MeterId"),
/// 							pulumi.String("ResourceId"),
/// 							pulumi.String("ResourceLocation"),
/// 							pulumi.String("Quantity"),
/// 						},
/// 					},
/// 					Granularity: pulumi.String(costmanagement.GranularityTypeDaily),
/// 				},
/// 				Timeframe: pulumi.String(costmanagement.TimeframeTypeMonthToDate),
/// 				Type:      pulumi.String(costmanagement.ExportTypeActualCost),
/// 			},
/// 			DeliveryInfo: &costmanagement.ExportDeliveryInfoArgs{
/// 				Destination: &costmanagement.ExportDeliveryDestinationArgs{
/// 					Container:      pulumi.String("exports"),
/// 					ResourceId:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"),
/// 					RootFolderPath: pulumi.String("ad-hoc"),
/// 				},
/// 			},
/// 			ExportName: pulumi.String("TestExport"),
/// 			Format:     pulumi.String(costmanagement.FormatTypeCsv),
/// 			Identity: &costmanagement.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(costmanagement.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("centralus"),
/// 			Schedule: &costmanagement.ExportScheduleArgs{
/// 				Recurrence: pulumi.String(costmanagement.RecurrenceTypeWeekly),
/// 				RecurrencePeriod: &costmanagement.ExportRecurrencePeriodArgs{
/// 					From: pulumi.String("2020-06-01T00:00:00Z"),
/// 					To:   pulumi.String("2020-10-31T00:00:00Z"),
/// 				},
/// 				Status: pulumi.String(costmanagement.StatusTypeActive),
/// 			},
/// 			Scope: pulumi.String("providers/Microsoft.Management/managementGroups/TestMG"),
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
/// resource "azure-native_costmanagement_export" "export" {
///   definition = {
///     data_set = {
///       configuration = {
///         columns = ["Date", "MeterId", "ResourceId", "ResourceLocation", "Quantity"]
///       }
///       granularity = "Daily"
///     }
///     timeframe = "MonthToDate"
///     type      = "ActualCost"
///   }
///   delivery_info = {
///     destination = {
///       container        = "exports"
///       resource_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"
///       root_folder_path = "ad-hoc"
///     }
///   }
///   export_name = "TestExport"
///   format      = "Csv"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location = "centralus"
///   schedule = {
///     recurrence = "Weekly"
///     recurrence_period = {
///       from = "2020-06-01T00:00:00Z"
///       to   = "2020-10-31T00:00:00Z"
///     }
///     status = "Active"
///   }
///   scope = "providers/Microsoft.Management/managementGroups/TestMG"
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
/// import com.pulumi.azurenative.costmanagement.Export;
/// import com.pulumi.azurenative.costmanagement.ExportArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDefinitionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetConfigurationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryInfoArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryDestinationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.SystemAssignedServiceIdentityArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportScheduleArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportRecurrencePeriodArgs;
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
///         var export = new Export("export", ExportArgs.builder()
///             .definition(ExportDefinitionArgs.builder()
///                 .dataSet(ExportDatasetArgs.builder()
///                     .configuration(ExportDatasetConfigurationArgs.builder()
///                         .columns(
///                             "Date",
///                             "MeterId",
///                             "ResourceId",
///                             "ResourceLocation",
///                             "Quantity")
///                         .build())
///                     .granularity("Daily")
///                     .build())
///                 .timeframe("MonthToDate")
///                 .type("ActualCost")
///                 .build())
///             .deliveryInfo(ExportDeliveryInfoArgs.builder()
///                 .destination(ExportDeliveryDestinationArgs.builder()
///                     .container("exports")
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182")
///                     .rootFolderPath("ad-hoc")
///                     .build())
///                 .build())
///             .exportName("TestExport")
///             .format("Csv")
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("centralus")
///             .schedule(ExportScheduleArgs.builder()
///                 .recurrence("Weekly")
///                 .recurrencePeriod(ExportRecurrencePeriodArgs.builder()
///                     .from("2020-06-01T00:00:00Z")
///                     .to("2020-10-31T00:00:00Z")
///                     .build())
///                 .status("Active")
///                 .build())
///             .scope("providers/Microsoft.Management/managementGroups/TestMG")
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
/// const _export = new azure_native.costmanagement.Export("export", {
///     definition: {
///         dataSet: {
///             configuration: {
///                 columns: [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             granularity: azure_native.costmanagement.GranularityType.Daily,
///         },
///         timeframe: azure_native.costmanagement.TimeframeType.MonthToDate,
///         type: azure_native.costmanagement.ExportType.ActualCost,
///     },
///     deliveryInfo: {
///         destination: {
///             container: "exports",
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             rootFolderPath: "ad-hoc",
///         },
///     },
///     exportName: "TestExport",
///     format: azure_native.costmanagement.FormatType.Csv,
///     identity: {
///         type: azure_native.costmanagement.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     location: "centralus",
///     schedule: {
///         recurrence: azure_native.costmanagement.RecurrenceType.Weekly,
///         recurrencePeriod: {
///             from: "2020-06-01T00:00:00Z",
///             to: "2020-10-31T00:00:00Z",
///         },
///         status: azure_native.costmanagement.StatusType.Active,
///     },
///     scope: "providers/Microsoft.Management/managementGroups/TestMG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// export = azure_native.costmanagement.Export("export",
///     definition={
///         "data_set": {
///             "configuration": {
///                 "columns": [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             "granularity": azure_native.costmanagement.GranularityType.DAILY,
///         },
///         "timeframe": azure_native.costmanagement.TimeframeType.MONTH_TO_DATE,
///         "type": azure_native.costmanagement.ExportType.ACTUAL_COST,
///     },
///     delivery_info={
///         "destination": {
///             "container": "exports",
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             "root_folder_path": "ad-hoc",
///         },
///     },
///     export_name="TestExport",
///     format=azure_native.costmanagement.FormatType.CSV,
///     identity={
///         "type": azure_native.costmanagement.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="centralus",
///     schedule={
///         "recurrence": azure_native.costmanagement.RecurrenceType.WEEKLY,
///         "recurrence_period": {
///             "from_": "2020-06-01T00:00:00Z",
///             "to": "2020-10-31T00:00:00Z",
///         },
///         "status": azure_native.costmanagement.StatusType.ACTIVE,
///     },
///     scope="providers/Microsoft.Management/managementGroups/TestMG")
///
/// ```
///
/// ```yaml
/// resources:
///   export:
///     type: azure-native:costmanagement:Export
///     properties:
///       definition:
///         dataSet:
///           configuration:
///             columns:
///               - Date
///               - MeterId
///               - ResourceId
///               - ResourceLocation
///               - Quantity
///           granularity: Daily
///         timeframe: MonthToDate
///         type: ActualCost
///       deliveryInfo:
///         destination:
///           container: exports
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182
///           rootFolderPath: ad-hoc
///       exportName: TestExport
///       format: Csv
///       identity:
///         type: SystemAssigned
///       location: centralus
///       schedule:
///         recurrence: Weekly
///         recurrencePeriod:
///           from: 2020-06-01T00:00:00Z
///           to: 2020-10-31T00:00:00Z
///         status: Active
///       scope: providers/Microsoft.Management/managementGroups/TestMG
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ExportCreateOrUpdateByResourceGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var export = new AzureNative.CostManagement.Export("export", new()
///     {
///         Definition = new AzureNative.CostManagement.Inputs.ExportDefinitionArgs
///         {
///             DataSet = new AzureNative.CostManagement.Inputs.ExportDatasetArgs
///             {
///                 Configuration = new AzureNative.CostManagement.Inputs.ExportDatasetConfigurationArgs
///                 {
///                     Columns = new[]
///                     {
///                         "Date",
///                         "MeterId",
///                         "ResourceId",
///                         "ResourceLocation",
///                         "Quantity",
///                     },
///                 },
///                 Granularity = AzureNative.CostManagement.GranularityType.Daily,
///             },
///             Timeframe = AzureNative.CostManagement.TimeframeType.MonthToDate,
///             Type = AzureNative.CostManagement.ExportType.ActualCost,
///         },
///         DeliveryInfo = new AzureNative.CostManagement.Inputs.ExportDeliveryInfoArgs
///         {
///             Destination = new AzureNative.CostManagement.Inputs.ExportDeliveryDestinationArgs
///             {
///                 Container = "exports",
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///                 RootFolderPath = "ad-hoc",
///             },
///         },
///         ExportName = "TestExport",
///         Format = AzureNative.CostManagement.FormatType.Csv,
///         Identity = new AzureNative.CostManagement.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.CostManagement.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         Location = "centralus",
///         Schedule = new AzureNative.CostManagement.Inputs.ExportScheduleArgs
///         {
///             Recurrence = AzureNative.CostManagement.RecurrenceType.Weekly,
///             RecurrencePeriod = new AzureNative.CostManagement.Inputs.ExportRecurrencePeriodArgs
///             {
///                 From = "2020-06-01T00:00:00Z",
///                 To = "2020-10-31T00:00:00Z",
///             },
///             Status = AzureNative.CostManagement.StatusType.Active,
///         },
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG",
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
/// 		_, err := costmanagement.NewExport(ctx, "export", &costmanagement.ExportArgs{
/// 			Definition: &costmanagement.ExportDefinitionArgs{
/// 				DataSet: &costmanagement.ExportDatasetArgs{
/// 					Configuration: &costmanagement.ExportDatasetConfigurationArgs{
/// 						Columns: pulumi.StringArray{
/// 							pulumi.String("Date"),
/// 							pulumi.String("MeterId"),
/// 							pulumi.String("ResourceId"),
/// 							pulumi.String("ResourceLocation"),
/// 							pulumi.String("Quantity"),
/// 						},
/// 					},
/// 					Granularity: pulumi.String(costmanagement.GranularityTypeDaily),
/// 				},
/// 				Timeframe: pulumi.String(costmanagement.TimeframeTypeMonthToDate),
/// 				Type:      pulumi.String(costmanagement.ExportTypeActualCost),
/// 			},
/// 			DeliveryInfo: &costmanagement.ExportDeliveryInfoArgs{
/// 				Destination: &costmanagement.ExportDeliveryDestinationArgs{
/// 					Container:      pulumi.String("exports"),
/// 					ResourceId:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"),
/// 					RootFolderPath: pulumi.String("ad-hoc"),
/// 				},
/// 			},
/// 			ExportName: pulumi.String("TestExport"),
/// 			Format:     pulumi.String(costmanagement.FormatTypeCsv),
/// 			Identity: &costmanagement.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(costmanagement.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("centralus"),
/// 			Schedule: &costmanagement.ExportScheduleArgs{
/// 				Recurrence: pulumi.String(costmanagement.RecurrenceTypeWeekly),
/// 				RecurrencePeriod: &costmanagement.ExportRecurrencePeriodArgs{
/// 					From: pulumi.String("2020-06-01T00:00:00Z"),
/// 					To:   pulumi.String("2020-10-31T00:00:00Z"),
/// 				},
/// 				Status: pulumi.String(costmanagement.StatusTypeActive),
/// 			},
/// 			Scope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG"),
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
/// resource "azure-native_costmanagement_export" "export" {
///   definition = {
///     data_set = {
///       configuration = {
///         columns = ["Date", "MeterId", "ResourceId", "ResourceLocation", "Quantity"]
///       }
///       granularity = "Daily"
///     }
///     timeframe = "MonthToDate"
///     type      = "ActualCost"
///   }
///   delivery_info = {
///     destination = {
///       container        = "exports"
///       resource_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"
///       root_folder_path = "ad-hoc"
///     }
///   }
///   export_name = "TestExport"
///   format      = "Csv"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location = "centralus"
///   schedule = {
///     recurrence = "Weekly"
///     recurrence_period = {
///       from = "2020-06-01T00:00:00Z"
///       to   = "2020-10-31T00:00:00Z"
///     }
///     status = "Active"
///   }
///   scope = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG"
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
/// import com.pulumi.azurenative.costmanagement.Export;
/// import com.pulumi.azurenative.costmanagement.ExportArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDefinitionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetConfigurationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryInfoArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryDestinationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.SystemAssignedServiceIdentityArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportScheduleArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportRecurrencePeriodArgs;
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
///         var export = new Export("export", ExportArgs.builder()
///             .definition(ExportDefinitionArgs.builder()
///                 .dataSet(ExportDatasetArgs.builder()
///                     .configuration(ExportDatasetConfigurationArgs.builder()
///                         .columns(
///                             "Date",
///                             "MeterId",
///                             "ResourceId",
///                             "ResourceLocation",
///                             "Quantity")
///                         .build())
///                     .granularity("Daily")
///                     .build())
///                 .timeframe("MonthToDate")
///                 .type("ActualCost")
///                 .build())
///             .deliveryInfo(ExportDeliveryInfoArgs.builder()
///                 .destination(ExportDeliveryDestinationArgs.builder()
///                     .container("exports")
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182")
///                     .rootFolderPath("ad-hoc")
///                     .build())
///                 .build())
///             .exportName("TestExport")
///             .format("Csv")
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("centralus")
///             .schedule(ExportScheduleArgs.builder()
///                 .recurrence("Weekly")
///                 .recurrencePeriod(ExportRecurrencePeriodArgs.builder()
///                     .from("2020-06-01T00:00:00Z")
///                     .to("2020-10-31T00:00:00Z")
///                     .build())
///                 .status("Active")
///                 .build())
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG")
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
/// const _export = new azure_native.costmanagement.Export("export", {
///     definition: {
///         dataSet: {
///             configuration: {
///                 columns: [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             granularity: azure_native.costmanagement.GranularityType.Daily,
///         },
///         timeframe: azure_native.costmanagement.TimeframeType.MonthToDate,
///         type: azure_native.costmanagement.ExportType.ActualCost,
///     },
///     deliveryInfo: {
///         destination: {
///             container: "exports",
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             rootFolderPath: "ad-hoc",
///         },
///     },
///     exportName: "TestExport",
///     format: azure_native.costmanagement.FormatType.Csv,
///     identity: {
///         type: azure_native.costmanagement.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     location: "centralus",
///     schedule: {
///         recurrence: azure_native.costmanagement.RecurrenceType.Weekly,
///         recurrencePeriod: {
///             from: "2020-06-01T00:00:00Z",
///             to: "2020-10-31T00:00:00Z",
///         },
///         status: azure_native.costmanagement.StatusType.Active,
///     },
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// export = azure_native.costmanagement.Export("export",
///     definition={
///         "data_set": {
///             "configuration": {
///                 "columns": [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             "granularity": azure_native.costmanagement.GranularityType.DAILY,
///         },
///         "timeframe": azure_native.costmanagement.TimeframeType.MONTH_TO_DATE,
///         "type": azure_native.costmanagement.ExportType.ACTUAL_COST,
///     },
///     delivery_info={
///         "destination": {
///             "container": "exports",
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             "root_folder_path": "ad-hoc",
///         },
///     },
///     export_name="TestExport",
///     format=azure_native.costmanagement.FormatType.CSV,
///     identity={
///         "type": azure_native.costmanagement.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="centralus",
///     schedule={
///         "recurrence": azure_native.costmanagement.RecurrenceType.WEEKLY,
///         "recurrence_period": {
///             "from_": "2020-06-01T00:00:00Z",
///             "to": "2020-10-31T00:00:00Z",
///         },
///         "status": azure_native.costmanagement.StatusType.ACTIVE,
///     },
///     scope="subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG")
///
/// ```
///
/// ```yaml
/// resources:
///   export:
///     type: azure-native:costmanagement:Export
///     properties:
///       definition:
///         dataSet:
///           configuration:
///             columns:
///               - Date
///               - MeterId
///               - ResourceId
///               - ResourceLocation
///               - Quantity
///           granularity: Daily
///         timeframe: MonthToDate
///         type: ActualCost
///       deliveryInfo:
///         destination:
///           container: exports
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182
///           rootFolderPath: ad-hoc
///       exportName: TestExport
///       format: Csv
///       identity:
///         type: SystemAssigned
///       location: centralus
///       schedule:
///         recurrence: Weekly
///         recurrencePeriod:
///           from: 2020-06-01T00:00:00Z
///           to: 2020-10-31T00:00:00Z
///         status: Active
///       scope: subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ExportCreateOrUpdateBySubscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var export = new AzureNative.CostManagement.Export("export", new()
///     {
///         Definition = new AzureNative.CostManagement.Inputs.ExportDefinitionArgs
///         {
///             DataSet = new AzureNative.CostManagement.Inputs.ExportDatasetArgs
///             {
///                 Configuration = new AzureNative.CostManagement.Inputs.ExportDatasetConfigurationArgs
///                 {
///                     Columns = new[]
///                     {
///                         "Date",
///                         "MeterId",
///                         "ResourceId",
///                         "ResourceLocation",
///                         "Quantity",
///                     },
///                 },
///                 Granularity = AzureNative.CostManagement.GranularityType.Daily,
///             },
///             Timeframe = AzureNative.CostManagement.TimeframeType.MonthToDate,
///             Type = AzureNative.CostManagement.ExportType.ActualCost,
///         },
///         DeliveryInfo = new AzureNative.CostManagement.Inputs.ExportDeliveryInfoArgs
///         {
///             Destination = new AzureNative.CostManagement.Inputs.ExportDeliveryDestinationArgs
///             {
///                 Container = "exports",
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///                 RootFolderPath = "ad-hoc",
///             },
///         },
///         ExportName = "TestExport",
///         Format = AzureNative.CostManagement.FormatType.Csv,
///         Identity = new AzureNative.CostManagement.Inputs.SystemAssignedServiceIdentityArgs
///         {
///             Type = AzureNative.CostManagement.SystemAssignedServiceIdentityType.SystemAssigned,
///         },
///         Location = "centralus",
///         Schedule = new AzureNative.CostManagement.Inputs.ExportScheduleArgs
///         {
///             Recurrence = AzureNative.CostManagement.RecurrenceType.Weekly,
///             RecurrencePeriod = new AzureNative.CostManagement.Inputs.ExportRecurrencePeriodArgs
///             {
///                 From = "2020-06-01T00:00:00Z",
///                 To = "2020-10-31T00:00:00Z",
///             },
///             Status = AzureNative.CostManagement.StatusType.Active,
///         },
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000",
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
/// 		_, err := costmanagement.NewExport(ctx, "export", &costmanagement.ExportArgs{
/// 			Definition: &costmanagement.ExportDefinitionArgs{
/// 				DataSet: &costmanagement.ExportDatasetArgs{
/// 					Configuration: &costmanagement.ExportDatasetConfigurationArgs{
/// 						Columns: pulumi.StringArray{
/// 							pulumi.String("Date"),
/// 							pulumi.String("MeterId"),
/// 							pulumi.String("ResourceId"),
/// 							pulumi.String("ResourceLocation"),
/// 							pulumi.String("Quantity"),
/// 						},
/// 					},
/// 					Granularity: pulumi.String(costmanagement.GranularityTypeDaily),
/// 				},
/// 				Timeframe: pulumi.String(costmanagement.TimeframeTypeMonthToDate),
/// 				Type:      pulumi.String(costmanagement.ExportTypeActualCost),
/// 			},
/// 			DeliveryInfo: &costmanagement.ExportDeliveryInfoArgs{
/// 				Destination: &costmanagement.ExportDeliveryDestinationArgs{
/// 					Container:      pulumi.String("exports"),
/// 					ResourceId:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"),
/// 					RootFolderPath: pulumi.String("ad-hoc"),
/// 				},
/// 			},
/// 			ExportName: pulumi.String("TestExport"),
/// 			Format:     pulumi.String(costmanagement.FormatTypeCsv),
/// 			Identity: &costmanagement.SystemAssignedServiceIdentityArgs{
/// 				Type: pulumi.String(costmanagement.SystemAssignedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("centralus"),
/// 			Schedule: &costmanagement.ExportScheduleArgs{
/// 				Recurrence: pulumi.String(costmanagement.RecurrenceTypeWeekly),
/// 				RecurrencePeriod: &costmanagement.ExportRecurrencePeriodArgs{
/// 					From: pulumi.String("2020-06-01T00:00:00Z"),
/// 					To:   pulumi.String("2020-10-31T00:00:00Z"),
/// 				},
/// 				Status: pulumi.String(costmanagement.StatusTypeActive),
/// 			},
/// 			Scope: pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000"),
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
/// resource "azure-native_costmanagement_export" "export" {
///   definition = {
///     data_set = {
///       configuration = {
///         columns = ["Date", "MeterId", "ResourceId", "ResourceLocation", "Quantity"]
///       }
///       granularity = "Daily"
///     }
///     timeframe = "MonthToDate"
///     type      = "ActualCost"
///   }
///   delivery_info = {
///     destination = {
///       container        = "exports"
///       resource_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"
///       root_folder_path = "ad-hoc"
///     }
///   }
///   export_name = "TestExport"
///   format      = "Csv"
///   identity = {
///     type = "SystemAssigned"
///   }
///   location = "centralus"
///   schedule = {
///     recurrence = "Weekly"
///     recurrence_period = {
///       from = "2020-06-01T00:00:00Z"
///       to   = "2020-10-31T00:00:00Z"
///     }
///     status = "Active"
///   }
///   scope = "subscriptions/00000000-0000-0000-0000-000000000000"
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
/// import com.pulumi.azurenative.costmanagement.Export;
/// import com.pulumi.azurenative.costmanagement.ExportArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDefinitionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDatasetConfigurationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryInfoArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportDeliveryDestinationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.SystemAssignedServiceIdentityArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportScheduleArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ExportRecurrencePeriodArgs;
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
///         var export = new Export("export", ExportArgs.builder()
///             .definition(ExportDefinitionArgs.builder()
///                 .dataSet(ExportDatasetArgs.builder()
///                     .configuration(ExportDatasetConfigurationArgs.builder()
///                         .columns(
///                             "Date",
///                             "MeterId",
///                             "ResourceId",
///                             "ResourceLocation",
///                             "Quantity")
///                         .build())
///                     .granularity("Daily")
///                     .build())
///                 .timeframe("MonthToDate")
///                 .type("ActualCost")
///                 .build())
///             .deliveryInfo(ExportDeliveryInfoArgs.builder()
///                 .destination(ExportDeliveryDestinationArgs.builder()
///                     .container("exports")
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182")
///                     .rootFolderPath("ad-hoc")
///                     .build())
///                 .build())
///             .exportName("TestExport")
///             .format("Csv")
///             .identity(SystemAssignedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("centralus")
///             .schedule(ExportScheduleArgs.builder()
///                 .recurrence("Weekly")
///                 .recurrencePeriod(ExportRecurrencePeriodArgs.builder()
///                     .from("2020-06-01T00:00:00Z")
///                     .to("2020-10-31T00:00:00Z")
///                     .build())
///                 .status("Active")
///                 .build())
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000")
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
/// const _export = new azure_native.costmanagement.Export("export", {
///     definition: {
///         dataSet: {
///             configuration: {
///                 columns: [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             granularity: azure_native.costmanagement.GranularityType.Daily,
///         },
///         timeframe: azure_native.costmanagement.TimeframeType.MonthToDate,
///         type: azure_native.costmanagement.ExportType.ActualCost,
///     },
///     deliveryInfo: {
///         destination: {
///             container: "exports",
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             rootFolderPath: "ad-hoc",
///         },
///     },
///     exportName: "TestExport",
///     format: azure_native.costmanagement.FormatType.Csv,
///     identity: {
///         type: azure_native.costmanagement.SystemAssignedServiceIdentityType.SystemAssigned,
///     },
///     location: "centralus",
///     schedule: {
///         recurrence: azure_native.costmanagement.RecurrenceType.Weekly,
///         recurrencePeriod: {
///             from: "2020-06-01T00:00:00Z",
///             to: "2020-10-31T00:00:00Z",
///         },
///         status: azure_native.costmanagement.StatusType.Active,
///     },
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// export = azure_native.costmanagement.Export("export",
///     definition={
///         "data_set": {
///             "configuration": {
///                 "columns": [
///                     "Date",
///                     "MeterId",
///                     "ResourceId",
///                     "ResourceLocation",
///                     "Quantity",
///                 ],
///             },
///             "granularity": azure_native.costmanagement.GranularityType.DAILY,
///         },
///         "timeframe": azure_native.costmanagement.TimeframeType.MONTH_TO_DATE,
///         "type": azure_native.costmanagement.ExportType.ACTUAL_COST,
///     },
///     delivery_info={
///         "destination": {
///             "container": "exports",
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             "root_folder_path": "ad-hoc",
///         },
///     },
///     export_name="TestExport",
///     format=azure_native.costmanagement.FormatType.CSV,
///     identity={
///         "type": azure_native.costmanagement.SystemAssignedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="centralus",
///     schedule={
///         "recurrence": azure_native.costmanagement.RecurrenceType.WEEKLY,
///         "recurrence_period": {
///             "from_": "2020-06-01T00:00:00Z",
///             "to": "2020-10-31T00:00:00Z",
///         },
///         "status": azure_native.costmanagement.StatusType.ACTIVE,
///     },
///     scope="subscriptions/00000000-0000-0000-0000-000000000000")
///
/// ```
///
/// ```yaml
/// resources:
///   export:
///     type: azure-native:costmanagement:Export
///     properties:
///       definition:
///         dataSet:
///           configuration:
///             columns:
///               - Date
///               - MeterId
///               - ResourceId
///               - ResourceLocation
///               - Quantity
///           granularity: Daily
///         timeframe: MonthToDate
///         type: ActualCost
///       deliveryInfo:
///         destination:
///           container: exports
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182
///           rootFolderPath: ad-hoc
///       exportName: TestExport
///       format: Csv
///       identity:
///         type: SystemAssigned
///       location: centralus
///       schedule:
///         recurrence: Weekly
///         recurrencePeriod:
///           from: 2020-06-01T00:00:00Z
///           to: 2020-10-31T00:00:00Z
///         status: Active
///       scope: subscriptions/00000000-0000-0000-0000-000000000000
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
/// $ pulumi import azure-native:costmanagement:Export TestExport /{scope}/providers/Microsoft.CostManagement/exports/{exportName}
/// ```
class Export extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Has the definition for the export.
  late final pulumi.Output<ExportDefinitionResponse> definition;
  /// Has delivery information for the export.
  late final pulumi.Output<ExportDeliveryInfoResponse> deliveryInfo;
  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  late final pulumi.Output<String?> eTag;
  /// The format of the export being delivered. Currently only 'Csv' is supported.
  late final pulumi.Output<String?> format;
  /// The managed identity associated with Export
  late final pulumi.Output<SystemAssignedServiceIdentityResponse?> identity;
  /// The location of the Export's managed identity. Only required when utilizing managed identity.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// If the export has an active schedule, provides an estimate of the next run time.
  late final pulumi.Output<String> nextRunTimeEstimate;
  /// If set to true, exported data will be partitioned by size and placed in a blob directory together with a manifest file. Note: this option is currently available only for Microsoft Customer Agreement commerce scopes.
  late final pulumi.Output<bool?> partitionData;
  /// If requested, has the most recent run history for the export.
  late final pulumi.Output<ExportExecutionListResultResponse?> runHistory;
  /// Has schedule information for the export.
  late final pulumi.Output<ExportScheduleResponse?> schedule;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [Export].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Export]. {@macro pulumi_costmanagement_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Export(
    String name, {
    ExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:costmanagement:Export',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    definition = registerOutput<ExportDefinitionResponse>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryInfo = registerOutput<ExportDeliveryInfoResponse>('deliveryInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportDeliveryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eTag = registerOutput<String?>('eTag');
    format = registerOutput<String?>('format');
    identity = registerOutput<SystemAssignedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    nextRunTimeEstimate = registerOutput<String>('nextRunTimeEstimate');
    partitionData = registerOutput<bool?>('partitionData');
    runHistory = registerOutput<ExportExecutionListResultResponse?>('runHistory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportExecutionListResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schedule = registerOutput<ExportScheduleResponse?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Export] resource.
  Export.reference(String urn)
    : super(
        'azure-native:costmanagement:Export',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    definition = registerOutput<ExportDefinitionResponse>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryInfo = registerOutput<ExportDeliveryInfoResponse>('deliveryInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportDeliveryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    eTag = registerOutput<String?>('eTag');
    format = registerOutput<String?>('format');
    identity = registerOutput<SystemAssignedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemAssignedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    nextRunTimeEstimate = registerOutput<String>('nextRunTimeEstimate');
    partitionData = registerOutput<bool?>('partitionData');
    runHistory = registerOutput<ExportExecutionListResultResponse?>('runHistory', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportExecutionListResultResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    schedule = registerOutput<ExportScheduleResponse?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
