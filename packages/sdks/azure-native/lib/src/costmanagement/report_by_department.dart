import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_by_department_args.dart';
import 'report_definition_response.dart';
import 'report_delivery_info_response.dart';
import 'report_schedule_response.dart';

/// A report resource.
///
/// Uses Azure REST API version 2018-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-08-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdateReport
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var reportByDepartment = new AzureNative.CostManagement.ReportByDepartment("reportByDepartment", new()
///     {
///         Definition = new AzureNative.CostManagement.Inputs.ReportDefinitionArgs
///         {
///             Dataset = new AzureNative.CostManagement.Inputs.ReportDatasetArgs
///             {
///                 Aggregation =
///                 {
///                     { "costSum", new AzureNative.CostManagement.Inputs.ReportAggregationArgs
///                     {
///                         Function = AzureNative.CostManagement.FunctionType.Sum,
///                         Name = "PreTaxCost",
///                     } },
///                 },
///                 Configuration = new AzureNative.CostManagement.Inputs.ReportDatasetConfigurationArgs
///                 {
///                     Columns = new[]
///                     {
///                         "Date",
///                         "MeterId",
///                         "InstanceId",
///                         "ResourceLocation",
///                         "PreTaxCost",
///                     },
///                 },
///                 Filter = new AzureNative.CostManagement.Inputs.ReportFilterArgs
///                 {
///                     And =
///                     {
///                         new AzureNative.CostManagement.Inputs.ReportFilterArgs
///                         {
///                             Or =
///                             {
///                                 new AzureNative.CostManagement.Inputs.ReportFilterArgs
///                                 {
///                                     Dimension = new AzureNative.CostManagement.Inputs.ReportComparisonExpressionArgs
///                                     {
///                                         Name = "ResourceLocation",
///                                         Operator = AzureNative.CostManagement.OperatorType.In,
///                                         Values = new[]
///                                         {
///                                             "East US",
///                                             "West Europe",
///                                         },
///                                     },
///                                 },
///                                 new AzureNative.CostManagement.Inputs.ReportFilterArgs
///                                 {
///                                     Tag = new AzureNative.CostManagement.Inputs.ReportComparisonExpressionArgs
///                                     {
///                                         Name = "Environment",
///                                         Operator = AzureNative.CostManagement.OperatorType.In,
///                                         Values = new[]
///                                         {
///                                             "UAT",
///                                             "Prod",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                         new AzureNative.CostManagement.Inputs.ReportFilterArgs
///                         {
///                             Dimension = new AzureNative.CostManagement.Inputs.ReportComparisonExpressionArgs
///                             {
///                                 Name = "ResourceGroup",
///                                 Operator = AzureNative.CostManagement.OperatorType.In,
///                                 Values = new[]
///                                 {
///                                     "API",
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 Granularity = AzureNative.CostManagement.GranularityType.Daily,
///                 Grouping = new[]
///                 {
///                     new AzureNative.CostManagement.Inputs.ReportGroupingArgs
///                     {
///                         Name = "SubscriptionName",
///                         Type = AzureNative.CostManagement.ReportColumnType.Dimension,
///                     },
///                     new AzureNative.CostManagement.Inputs.ReportGroupingArgs
///                     {
///                         Name = "Environment",
///                         Type = AzureNative.CostManagement.ReportColumnType.Tag,
///                     },
///                 },
///             },
///             Timeframe = AzureNative.CostManagement.TimeframeType.MonthToDate,
///             Type = AzureNative.CostManagement.ReportType.Usage,
///         },
///         DeliveryInfo = new AzureNative.CostManagement.Inputs.ReportDeliveryInfoArgs
///         {
///             Destination = new AzureNative.CostManagement.Inputs.ReportDeliveryDestinationArgs
///             {
///                 Container = "reports",
///                 ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///                 RootFolderPath = "ad-hoc",
///             },
///         },
///         DepartmentId = "1234",
///         Format = AzureNative.CostManagement.FormatType.Csv,
///         ReportName = "TestReport",
///         Schedule = new AzureNative.CostManagement.Inputs.ReportScheduleArgs
///         {
///             Recurrence = AzureNative.CostManagement.RecurrenceType.Weekly,
///             RecurrencePeriod = new AzureNative.CostManagement.Inputs.ReportRecurrencePeriodArgs
///             {
///                 From = "2018-06-01T00:00:00Z",
///                 To = "2018-10-31T00:00:00Z",
///             },
///             Status = AzureNative.CostManagement.StatusType.Active,
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
/// 		_, err := costmanagement.NewReportByDepartment(ctx, "reportByDepartment", &costmanagement.ReportByDepartmentArgs{
/// 			Definition: &costmanagement.ReportDefinitionArgs{
/// 				Dataset: &costmanagement.ReportDatasetArgs{
/// 					Aggregation: costmanagement.ReportAggregationMap{
/// 						"costSum": &costmanagement.ReportAggregationArgs{
/// 							Function: pulumi.String(costmanagement.FunctionTypeSum),
/// 							Name:     pulumi.String("PreTaxCost"),
/// 						},
/// 					},
/// 					Configuration: &costmanagement.ReportDatasetConfigurationArgs{
/// 						Columns: pulumi.StringArray{
/// 							pulumi.String("Date"),
/// 							pulumi.String("MeterId"),
/// 							pulumi.String("InstanceId"),
/// 							pulumi.String("ResourceLocation"),
/// 							pulumi.String("PreTaxCost"),
/// 						},
/// 					},
/// 					Filter: &costmanagement.ReportFilterArgs{
/// 						And: costmanagement.ReportFilterArray{
/// 							&costmanagement.ReportFilterArgs{
/// 								Or: costmanagement.ReportFilterArray{
/// 									&costmanagement.ReportFilterArgs{
/// 										Dimension: &costmanagement.ReportComparisonExpressionArgs{
/// 											Name:     pulumi.String("ResourceLocation"),
/// 											Operator: pulumi.String(costmanagement.OperatorTypeIn),
/// 											Values: pulumi.StringArray{
/// 												pulumi.String("East US"),
/// 												pulumi.String("West Europe"),
/// 											},
/// 										},
/// 									},
/// 									&costmanagement.ReportFilterArgs{
/// 										Tag: &costmanagement.ReportComparisonExpressionArgs{
/// 											Name:     pulumi.String("Environment"),
/// 											Operator: pulumi.String(costmanagement.OperatorTypeIn),
/// 											Values: pulumi.StringArray{
/// 												pulumi.String("UAT"),
/// 												pulumi.String("Prod"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 							&costmanagement.ReportFilterArgs{
/// 								Dimension: &costmanagement.ReportComparisonExpressionArgs{
/// 									Name:     pulumi.String("ResourceGroup"),
/// 									Operator: pulumi.String(costmanagement.OperatorTypeIn),
/// 									Values: pulumi.StringArray{
/// 										pulumi.String("API"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					Granularity: pulumi.String(costmanagement.GranularityTypeDaily),
/// 					Grouping: costmanagement.ReportGroupingArray{
/// 						&costmanagement.ReportGroupingArgs{
/// 							Name: pulumi.String("SubscriptionName"),
/// 							Type: pulumi.String(costmanagement.ReportColumnTypeDimension),
/// 						},
/// 						&costmanagement.ReportGroupingArgs{
/// 							Name: pulumi.String("Environment"),
/// 							Type: pulumi.String(costmanagement.ReportColumnTypeTag),
/// 						},
/// 					},
/// 				},
/// 				Timeframe: pulumi.String(costmanagement.TimeframeTypeMonthToDate),
/// 				Type:      pulumi.String(costmanagement.ReportTypeUsage),
/// 			},
/// 			DeliveryInfo: &costmanagement.ReportDeliveryInfoArgs{
/// 				Destination: &costmanagement.ReportDeliveryDestinationArgs{
/// 					Container:      pulumi.String("reports"),
/// 					ResourceId:     pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"),
/// 					RootFolderPath: pulumi.String("ad-hoc"),
/// 				},
/// 			},
/// 			DepartmentId: pulumi.String("1234"),
/// 			Format:       pulumi.String(costmanagement.FormatTypeCsv),
/// 			ReportName:   pulumi.String("TestReport"),
/// 			Schedule: &costmanagement.ReportScheduleArgs{
/// 				Recurrence: pulumi.String(costmanagement.RecurrenceTypeWeekly),
/// 				RecurrencePeriod: &costmanagement.ReportRecurrencePeriodArgs{
/// 					From: pulumi.String("2018-06-01T00:00:00Z"),
/// 					To:   pulumi.String("2018-10-31T00:00:00Z"),
/// 				},
/// 				Status: pulumi.String(costmanagement.StatusTypeActive),
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
/// terraform {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_costmanagement_report_by_department" "reportByDepartment" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   definition = {
///     dataset = {
///       aggregation = {
///         "costSum" = {
///           function = "Sum"
///           name     = "PreTaxCost"
///         }
///       }
///       configuration = {
///         columns = ["Date", "MeterId", "InstanceId", "ResourceLocation", "PreTaxCost"]
///       }
///       filter = {
///         and = [{
///           or = [{
///             dimension = {
///               name     = "ResourceLocation"
///               operator = "In"
///               values   = ["East US", "West Europe"]
///             }
///             }, {
///             tag = {
///               name     = "Environment"
///               operator = "In"
///               values   = ["UAT", "Prod"]
///             }
///           }]
///           }, {
///           dimension = {
///             name     = "ResourceGroup"
///             operator = "In"
///             values   = ["API"]
///           }
///         }]
///       }
///       granularity = "Daily"
///       grouping = [{
///         name = "SubscriptionName"
///         type = "Dimension"
///         }, {
///         name = "Environment"
///         type = "Tag"
///       }]
///     }
///     timeframe = "MonthToDate"
///     type      = "Usage"
///   }
///   delivery_info = {
///     destination = {
///       container        = "reports"
///       resource_id      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182"
///       root_folder_path = "ad-hoc"
///     }
///   }
///   department_id = "1234"
///   format        = "Csv"
///   report_name   = "TestReport"
///   schedule = {
///     recurrence = "Weekly"
///     recurrence_period = {
///       from = "2018-06-01T00:00:00Z"
///       to   = "2018-10-31T00:00:00Z"
///     }
///     status = "Active"
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
/// import com.pulumi.azurenative.costmanagement.ReportByDepartment;
/// import com.pulumi.azurenative.costmanagement.ReportByDepartmentArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportDefinitionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportDatasetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportAggregationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportDatasetConfigurationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportFilterArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportComparisonExpressionArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportGroupingArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportDeliveryInfoArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportDeliveryDestinationArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportScheduleArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportRecurrencePeriodArgs;
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
///         var reportByDepartment = new ReportByDepartment("reportByDepartment", ReportByDepartmentArgs.builder()
///             .definition(ReportDefinitionArgs.builder()
///                 .dataset(ReportDatasetArgs.builder()
///                     .aggregation(Map.of("costSum", ReportAggregationArgs.builder()
///                         .function("Sum")
///                         .name("PreTaxCost")
///                         .build()))
///                     .configuration(ReportDatasetConfigurationArgs.builder()
///                         .columns(
///                             "Date",
///                             "MeterId",
///                             "InstanceId",
///                             "ResourceLocation",
///                             "PreTaxCost")
///                         .build())
///                     .filter(ReportFilterArgs.builder()
///                         .and(
///                             ReportFilterArgs.builder()
///                                 .or(
///                                     ReportFilterArgs.builder()
///                                         .dimension(ReportComparisonExpressionArgs.builder()
///                                             .name("ResourceLocation")
///                                             .operator("In")
///                                             .values(
///                                                 "East US",
///                                                 "West Europe")
///                                             .build())
///                                         .build(),
///                                     ReportFilterArgs.builder()
///                                         .tag(ReportComparisonExpressionArgs.builder()
///                                             .name("Environment")
///                                             .operator("In")
///                                             .values(
///                                                 "UAT",
///                                                 "Prod")
///                                             .build())
///                                         .build())
///                                 .build(),
///                             ReportFilterArgs.builder()
///                                 .dimension(ReportComparisonExpressionArgs.builder()
///                                     .name("ResourceGroup")
///                                     .operator("In")
///                                     .values("API")
///                                     .build())
///                                 .build())
///                         .build())
///                     .granularity("Daily")
///                     .grouping(
///                         ReportGroupingArgs.builder()
///                             .name("SubscriptionName")
///                             .type("Dimension")
///                             .build(),
///                         ReportGroupingArgs.builder()
///                             .name("Environment")
///                             .type("Tag")
///                             .build())
///                     .build())
///                 .timeframe("MonthToDate")
///                 .type("Usage")
///                 .build())
///             .deliveryInfo(ReportDeliveryInfoArgs.builder()
///                 .destination(ReportDeliveryDestinationArgs.builder()
///                     .container("reports")
///                     .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182")
///                     .rootFolderPath("ad-hoc")
///                     .build())
///                 .build())
///             .departmentId("1234")
///             .format("Csv")
///             .reportName("TestReport")
///             .schedule(ReportScheduleArgs.builder()
///                 .recurrence("Weekly")
///                 .recurrencePeriod(ReportRecurrencePeriodArgs.builder()
///                     .from("2018-06-01T00:00:00Z")
///                     .to("2018-10-31T00:00:00Z")
///                     .build())
///                 .status("Active")
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
/// const reportByDepartment = new azure_native.costmanagement.ReportByDepartment("reportByDepartment", {
///     definition: {
///         dataset: {
///             aggregation: {
///                 costSum: {
///                     "function": azure_native.costmanagement.FunctionType.Sum,
///                     name: "PreTaxCost",
///                 },
///             },
///             configuration: {
///                 columns: [
///                     "Date",
///                     "MeterId",
///                     "InstanceId",
///                     "ResourceLocation",
///                     "PreTaxCost",
///                 ],
///             },
///             filter: {
///                 and: [
///                     {
///                         or: [
///                             {
///                                 dimension: {
///                                     name: "ResourceLocation",
///                                     operator: azure_native.costmanagement.OperatorType.In,
///                                     values: [
///                                         "East US",
///                                         "West Europe",
///                                     ],
///                                 },
///                             },
///                             {
///                                 tag: {
///                                     name: "Environment",
///                                     operator: azure_native.costmanagement.OperatorType.In,
///                                     values: [
///                                         "UAT",
///                                         "Prod",
///                                     ],
///                                 },
///                             },
///                         ],
///                     },
///                     {
///                         dimension: {
///                             name: "ResourceGroup",
///                             operator: azure_native.costmanagement.OperatorType.In,
///                             values: ["API"],
///                         },
///                     },
///                 ],
///             },
///             granularity: azure_native.costmanagement.GranularityType.Daily,
///             grouping: [
///                 {
///                     name: "SubscriptionName",
///                     type: azure_native.costmanagement.ReportColumnType.Dimension,
///                 },
///                 {
///                     name: "Environment",
///                     type: azure_native.costmanagement.ReportColumnType.Tag,
///                 },
///             ],
///         },
///         timeframe: azure_native.costmanagement.TimeframeType.MonthToDate,
///         type: azure_native.costmanagement.ReportType.Usage,
///     },
///     deliveryInfo: {
///         destination: {
///             container: "reports",
///             resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             rootFolderPath: "ad-hoc",
///         },
///     },
///     departmentId: "1234",
///     format: azure_native.costmanagement.FormatType.Csv,
///     reportName: "TestReport",
///     schedule: {
///         recurrence: azure_native.costmanagement.RecurrenceType.Weekly,
///         recurrencePeriod: {
///             from: "2018-06-01T00:00:00Z",
///             to: "2018-10-31T00:00:00Z",
///         },
///         status: azure_native.costmanagement.StatusType.Active,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// report_by_department = azure_native.costmanagement.ReportByDepartment("reportByDepartment",
///     definition={
///         "dataset": {
///             "aggregation": {
///                 "costSum": {
///                     "function": azure_native.costmanagement.FunctionType.SUM,
///                     "name": "PreTaxCost",
///                 },
///             },
///             "configuration": {
///                 "columns": [
///                     "Date",
///                     "MeterId",
///                     "InstanceId",
///                     "ResourceLocation",
///                     "PreTaxCost",
///                 ],
///             },
///             "filter": {
///                 "and_": [
///                     {
///                         "or_": [
///                             {
///                                 "dimension": {
///                                     "name": "ResourceLocation",
///                                     "operator": azure_native.costmanagement.OperatorType.IN_,
///                                     "values": [
///                                         "East US",
///                                         "West Europe",
///                                     ],
///                                 },
///                             },
///                             {
///                                 "tag": {
///                                     "name": "Environment",
///                                     "operator": azure_native.costmanagement.OperatorType.IN_,
///                                     "values": [
///                                         "UAT",
///                                         "Prod",
///                                     ],
///                                 },
///                             },
///                         ],
///                     },
///                     {
///                         "dimension": {
///                             "name": "ResourceGroup",
///                             "operator": azure_native.costmanagement.OperatorType.IN_,
///                             "values": ["API"],
///                         },
///                     },
///                 ],
///             },
///             "granularity": azure_native.costmanagement.GranularityType.DAILY,
///             "grouping": [
///                 {
///                     "name": "SubscriptionName",
///                     "type": azure_native.costmanagement.ReportColumnType.DIMENSION,
///                 },
///                 {
///                     "name": "Environment",
///                     "type": azure_native.costmanagement.ReportColumnType.TAG,
///                 },
///             ],
///         },
///         "timeframe": azure_native.costmanagement.TimeframeType.MONTH_TO_DATE,
///         "type": azure_native.costmanagement.ReportType.USAGE,
///     },
///     delivery_info={
///         "destination": {
///             "container": "reports",
///             "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182",
///             "root_folder_path": "ad-hoc",
///         },
///     },
///     department_id="1234",
///     format=azure_native.costmanagement.FormatType.CSV,
///     report_name="TestReport",
///     schedule={
///         "recurrence": azure_native.costmanagement.RecurrenceType.WEEKLY,
///         "recurrence_period": {
///             "from_": "2018-06-01T00:00:00Z",
///             "to": "2018-10-31T00:00:00Z",
///         },
///         "status": azure_native.costmanagement.StatusType.ACTIVE,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   reportByDepartment:
///     type: azure-native:costmanagement:ReportByDepartment
///     properties:
///       definition:
///         dataset:
///           aggregation:
///             costSum:
///               function: Sum
///               name: PreTaxCost
///           configuration:
///             columns:
///               - Date
///               - MeterId
///               - InstanceId
///               - ResourceLocation
///               - PreTaxCost
///           filter:
///             and:
///               - or:
///                   - dimension:
///                       name: ResourceLocation
///                       operator: In
///                       values:
///                         - East US
///                         - West Europe
///                   - tag:
///                       name: Environment
///                       operator: In
///                       values:
///                         - UAT
///                         - Prod
///               - dimension:
///                   name: ResourceGroup
///                   operator: In
///                   values:
///                     - API
///           granularity: Daily
///           grouping:
///             - name: SubscriptionName
///               type: Dimension
///             - name: Environment
///               type: Tag
///         timeframe: MonthToDate
///         type: Usage
///       deliveryInfo:
///         destination:
///           container: reports
///           resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Storage/storageAccounts/ccmeastusdiag182
///           rootFolderPath: ad-hoc
///       departmentId: '1234'
///       format: Csv
///       reportName: TestReport
///       schedule:
///         recurrence: Weekly
///         recurrencePeriod:
///           from: 2018-06-01T00:00:00Z
///           to: 2018-10-31T00:00:00Z
///         status: Active
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
/// $ pulumi import azure-native:costmanagement:ReportByDepartment TestReport /providers/Microsoft.Billing/departments/{departmentId}/providers/Microsoft.CostManagement/reports/{reportName}
/// ```
class ReportByDepartment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Has definition for the report.
  late final pulumi.Output<ReportDefinitionResponse> definition;
  /// Has delivery information for the report.
  late final pulumi.Output<ReportDeliveryInfoResponse> deliveryInfo;
  /// The format of the report being delivered.
  late final pulumi.Output<String?> format;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Has schedule information for the report.
  late final pulumi.Output<ReportScheduleResponse?> schedule;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ReportByDepartment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReportByDepartment]. {@macro pulumi_costmanagement_report_by_department_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReportByDepartment(
    String name, {
    ReportByDepartmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:costmanagement:ReportByDepartment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    definition = registerOutput<ReportDefinitionResponse>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryInfo = registerOutput<ReportDeliveryInfoResponse>('deliveryInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportDeliveryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    schedule = registerOutput<ReportScheduleResponse?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ReportByDepartment] resource.
  ReportByDepartment.reference(String urn)
    : super(
        'azure-native:costmanagement:ReportByDepartment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    definition = registerOutput<ReportDefinitionResponse>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryInfo = registerOutput<ReportDeliveryInfoResponse>('deliveryInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportDeliveryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    schedule = registerOutput<ReportScheduleResponse?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
