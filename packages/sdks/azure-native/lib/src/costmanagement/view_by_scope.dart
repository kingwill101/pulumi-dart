import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_config_dataset_response.dart';
import 'report_config_time_period_response.dart';
import 'view_by_scope_args.dart';

/// States and configurations of Cost Analysis.
///
/// Uses Azure REST API version 2024-08-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2019-04-01-preview, 2019-11-01, 2020-06-01, 2021-10-01, 2022-08-01-preview, 2022-10-01, 2022-10-01-preview, 2022-10-05-preview, 2023-03-01, 2023-04-01-preview, 2023-07-01-preview, 2023-08-01, 2023-09-01, 2023-11-01, 2024-10-01-preview, 2025-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native costmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ResourceGroupCreateOrUpdateView
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var viewByScope = new AzureNative.CostManagement.ViewByScope("viewByScope", new()
///     {
///         Accumulated = AzureNative.CostManagement.AccumulatedType.@True,
///         Chart = AzureNative.CostManagement.ChartType.Table,
///         DataSet = new AzureNative.CostManagement.Inputs.ReportConfigDatasetArgs
///         {
///             Aggregation =
///             {
///                 { "totalCost", new AzureNative.CostManagement.Inputs.ReportConfigAggregationArgs
///                 {
///                     Function = AzureNative.CostManagement.FunctionType.Sum,
///                     Name = "PreTaxCost",
///                 } },
///             },
///             Granularity = AzureNative.CostManagement.ReportGranularityType.Daily,
///             Grouping = new() { },
///             Sorting = new[]
///             {
///                 new AzureNative.CostManagement.Inputs.ReportConfigSortingArgs
///                 {
///                     Direction = AzureNative.CostManagement.ReportConfigSortingType.Ascending,
///                     Name = "UsageDate",
///                 },
///             },
///         },
///         DisplayName = "swagger Example",
///         ETag = "\"1d4ff9fe66f1d10\"",
///         Kpis = new[]
///         {
///             new AzureNative.CostManagement.Inputs.KpiPropertiesArgs
///             {
///                 Enabled = true,
///                 Type = AzureNative.CostManagement.KpiTypeType.Forecast,
///             },
///             new AzureNative.CostManagement.Inputs.KpiPropertiesArgs
///             {
///                 Enabled = true,
///                 Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Consumption/budgets/swaggerDemo",
///                 Type = AzureNative.CostManagement.KpiTypeType.Budget,
///             },
///         },
///         Metric = AzureNative.CostManagement.MetricType.ActualCost,
///         Pivots = new[]
///         {
///             new AzureNative.CostManagement.Inputs.PivotPropertiesArgs
///             {
///                 Name = "ServiceName",
///                 Type = AzureNative.CostManagement.PivotTypeType.Dimension,
///             },
///             new AzureNative.CostManagement.Inputs.PivotPropertiesArgs
///             {
///                 Name = "MeterCategory",
///                 Type = AzureNative.CostManagement.PivotTypeType.Dimension,
///             },
///             new AzureNative.CostManagement.Inputs.PivotPropertiesArgs
///             {
///                 Name = "swaggerTagKey",
///                 Type = AzureNative.CostManagement.PivotTypeType.TagKey,
///             },
///         },
///         Scope = "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG",
///         Timeframe = AzureNative.CostManagement.ReportTimeframeType.MonthToDate,
///         Type = AzureNative.CostManagement.ReportType.Usage,
///         ViewName = "swaggerExample",
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
/// 		_, err := costmanagement.NewViewByScope(ctx, "viewByScope", &costmanagement.ViewByScopeArgs{
/// 			Accumulated: pulumi.String(costmanagement.AccumulatedTypeTrue),
/// 			Chart:       pulumi.String(costmanagement.ChartTypeTable),
/// 			DataSet: &costmanagement.ReportConfigDatasetArgs{
/// 				Aggregation: costmanagement.ReportConfigAggregationMap{
/// 					"totalCost": &costmanagement.ReportConfigAggregationArgs{
/// 						Function: pulumi.String(costmanagement.FunctionTypeSum),
/// 						Name:     pulumi.String("PreTaxCost"),
/// 					},
/// 				},
/// 				Granularity: pulumi.String(costmanagement.ReportGranularityTypeDaily),
/// 				Grouping:    costmanagement.ReportConfigGroupingArray{},
/// 				Sorting: costmanagement.ReportConfigSortingArray{
/// 					&costmanagement.ReportConfigSortingArgs{
/// 						Direction: pulumi.String(costmanagement.ReportConfigSortingTypeAscending),
/// 						Name:      pulumi.String("UsageDate"),
/// 					},
/// 				},
/// 			},
/// 			DisplayName: pulumi.String("swagger Example"),
/// 			ETag:        pulumi.String("\"1d4ff9fe66f1d10\""),
/// 			Kpis: costmanagement.KpiPropertiesArray{
/// 				&costmanagement.KpiPropertiesArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					Type:    pulumi.String(costmanagement.KpiTypeTypeForecast),
/// 				},
/// 				&costmanagement.KpiPropertiesArgs{
/// 					Enabled: pulumi.Bool(true),
/// 					Id:      pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Consumption/budgets/swaggerDemo"),
/// 					Type:    pulumi.String(costmanagement.KpiTypeTypeBudget),
/// 				},
/// 			},
/// 			Metric: pulumi.String(costmanagement.MetricTypeActualCost),
/// 			Pivots: costmanagement.PivotPropertiesArray{
/// 				&costmanagement.PivotPropertiesArgs{
/// 					Name: pulumi.String("ServiceName"),
/// 					Type: pulumi.String(costmanagement.PivotTypeTypeDimension),
/// 				},
/// 				&costmanagement.PivotPropertiesArgs{
/// 					Name: pulumi.String("MeterCategory"),
/// 					Type: pulumi.String(costmanagement.PivotTypeTypeDimension),
/// 				},
/// 				&costmanagement.PivotPropertiesArgs{
/// 					Name: pulumi.String("swaggerTagKey"),
/// 					Type: pulumi.String(costmanagement.PivotTypeTypeTagKey),
/// 				},
/// 			},
/// 			Scope:     pulumi.String("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG"),
/// 			Timeframe: pulumi.String(costmanagement.ReportTimeframeTypeMonthToDate),
/// 			Type:      pulumi.String(costmanagement.ReportTypeUsage),
/// 			ViewName:  pulumi.String("swaggerExample"),
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
/// import com.pulumi.azurenative.costmanagement.ViewByScope;
/// import com.pulumi.azurenative.costmanagement.ViewByScopeArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.ReportConfigDatasetArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.KpiPropertiesArgs;
/// import com.pulumi.azurenative.costmanagement.inputs.PivotPropertiesArgs;
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
///         var viewByScope = new ViewByScope("viewByScope", ViewByScopeArgs.builder()
///             .accumulated("true")
///             .chart("Table")
///             .dataSet(ReportConfigDatasetArgs.builder()
///                 .aggregation(Map.of("totalCost", ReportConfigAggregationArgs.builder()
///                     .function("Sum")
///                     .name("PreTaxCost")
///                     .build()))
///                 .granularity("Daily")
///                 .grouping()
///                 .sorting(ReportConfigSortingArgs.builder()
///                     .direction("Ascending")
///                     .name("UsageDate")
///                     .build())
///                 .build())
///             .displayName("swagger Example")
///             .eTag("\"1d4ff9fe66f1d10\"")
///             .kpis(
///                 KpiPropertiesArgs.builder()
///                     .enabled(true)
///                     .type("Forecast")
///                     .build(),
///                 KpiPropertiesArgs.builder()
///                     .enabled(true)
///                     .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Consumption/budgets/swaggerDemo")
///                     .type("Budget")
///                     .build())
///             .metric("ActualCost")
///             .pivots(
///                 PivotPropertiesArgs.builder()
///                     .name("ServiceName")
///                     .type("Dimension")
///                     .build(),
///                 PivotPropertiesArgs.builder()
///                     .name("MeterCategory")
///                     .type("Dimension")
///                     .build(),
///                 PivotPropertiesArgs.builder()
///                     .name("swaggerTagKey")
///                     .type("TagKey")
///                     .build())
///             .scope("subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG")
///             .timeframe("MonthToDate")
///             .type("Usage")
///             .viewName("swaggerExample")
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
/// const viewByScope = new azure_native.costmanagement.ViewByScope("viewByScope", {
///     accumulated: azure_native.costmanagement.AccumulatedType.True,
///     chart: azure_native.costmanagement.ChartType.Table,
///     dataSet: {
///         aggregation: {
///             totalCost: {
///                 "function": azure_native.costmanagement.FunctionType.Sum,
///                 name: "PreTaxCost",
///             },
///         },
///         granularity: azure_native.costmanagement.ReportGranularityType.Daily,
///         grouping: [],
///         sorting: [{
///             direction: azure_native.costmanagement.ReportConfigSortingType.Ascending,
///             name: "UsageDate",
///         }],
///     },
///     displayName: "swagger Example",
///     eTag: "\"1d4ff9fe66f1d10\"",
///     kpis: [
///         {
///             enabled: true,
///             type: azure_native.costmanagement.KpiTypeType.Forecast,
///         },
///         {
///             enabled: true,
///             id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Consumption/budgets/swaggerDemo",
///             type: azure_native.costmanagement.KpiTypeType.Budget,
///         },
///     ],
///     metric: azure_native.costmanagement.MetricType.ActualCost,
///     pivots: [
///         {
///             name: "ServiceName",
///             type: azure_native.costmanagement.PivotTypeType.Dimension,
///         },
///         {
///             name: "MeterCategory",
///             type: azure_native.costmanagement.PivotTypeType.Dimension,
///         },
///         {
///             name: "swaggerTagKey",
///             type: azure_native.costmanagement.PivotTypeType.TagKey,
///         },
///     ],
///     scope: "subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG",
///     timeframe: azure_native.costmanagement.ReportTimeframeType.MonthToDate,
///     type: azure_native.costmanagement.ReportType.Usage,
///     viewName: "swaggerExample",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// view_by_scope = azure_native.costmanagement.ViewByScope("viewByScope",
///     accumulated=azure_native.costmanagement.AccumulatedType.TRUE,
///     chart=azure_native.costmanagement.ChartType.TABLE,
///     data_set={
///         "aggregation": {
///             "totalCost": {
///                 "function": azure_native.costmanagement.FunctionType.SUM,
///                 "name": "PreTaxCost",
///             },
///         },
///         "granularity": azure_native.costmanagement.ReportGranularityType.DAILY,
///         "grouping": [],
///         "sorting": [{
///             "direction": azure_native.costmanagement.ReportConfigSortingType.ASCENDING,
///             "name": "UsageDate",
///         }],
///     },
///     display_name="swagger Example",
///     e_tag="\"1d4ff9fe66f1d10\"",
///     kpis=[
///         {
///             "enabled": True,
///             "type": azure_native.costmanagement.KpiTypeType.FORECAST,
///         },
///         {
///             "enabled": True,
///             "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Consumption/budgets/swaggerDemo",
///             "type": azure_native.costmanagement.KpiTypeType.BUDGET,
///         },
///     ],
///     metric=azure_native.costmanagement.MetricType.ACTUAL_COST,
///     pivots=[
///         {
///             "name": "ServiceName",
///             "type": azure_native.costmanagement.PivotTypeType.DIMENSION,
///         },
///         {
///             "name": "MeterCategory",
///             "type": azure_native.costmanagement.PivotTypeType.DIMENSION,
///         },
///         {
///             "name": "swaggerTagKey",
///             "type": azure_native.costmanagement.PivotTypeType.TAG_KEY,
///         },
///     ],
///     scope="subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG",
///     timeframe=azure_native.costmanagement.ReportTimeframeType.MONTH_TO_DATE,
///     type=azure_native.costmanagement.ReportType.USAGE,
///     view_name="swaggerExample")
///
/// ```
///
/// ```yaml
/// resources:
///   viewByScope:
///     type: azure-native:costmanagement:ViewByScope
///     properties:
///       accumulated: 'true'
///       chart: Table
///       dataSet:
///         aggregation:
///           totalCost:
///             function: Sum
///             name: PreTaxCost
///         granularity: Daily
///         grouping: []
///         sorting:
///           - direction: Ascending
///             name: UsageDate
///       displayName: swagger Example
///       eTag: '"1d4ff9fe66f1d10"'
///       kpis:
///         - enabled: true
///           type: Forecast
///         - enabled: true
///           id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG/providers/Microsoft.Consumption/budgets/swaggerDemo
///           type: Budget
///       metric: ActualCost
///       pivots:
///         - name: ServiceName
///           type: Dimension
///         - name: MeterCategory
///           type: Dimension
///         - name: swaggerTagKey
///           type: TagKey
///       scope: subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/MYDEVTESTRG
///       timeframe: MonthToDate
///       type: Usage
///       viewName: swaggerExample
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
/// $ pulumi import azure-native:costmanagement:ViewByScope swaggerExample /{scope}/providers/Microsoft.CostManagement/views/{viewName}
/// ```
class ViewByScope extends pulumi.CustomResource {
  /// Show costs accumulated over time.
  late final pulumi.Output<String?> accumulated;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Chart type of the main view in Cost Analysis. Required.
  late final pulumi.Output<String?> chart;

  /// Date the user created this view.
  late final pulumi.Output<String> createdOn;

  /// Currency of the current view.
  late final pulumi.Output<String> currency;

  /// Has definition for data in this report config.
  late final pulumi.Output<ReportConfigDatasetResponse?> dataSet;

  /// Date range of the current view.
  late final pulumi.Output<String?> dateRange;

  /// User input name of the view. Required.
  late final pulumi.Output<String?> displayName;

  /// eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not.
  late final pulumi.Output<String?> eTag;

  /// If true, report includes monetary commitment.
  late final pulumi.Output<bool?> includeMonetaryCommitment;

  /// List of KPIs to show in Cost Analysis UI.
  late final pulumi.Output<List<Map<String, dynamic>>?> kpis;

  /// Metric to use when displaying costs.
  late final pulumi.Output<String?> metric;

  /// Date when the user last modified this view.
  late final pulumi.Output<String?> modifiedOn;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Configuration of 3 sub-views in the Cost Analysis UI.
  late final pulumi.Output<List<Map<String, dynamic>>?> pivots;

  /// Cost Management scope to save the view on. This includes 'subscriptions/{subscriptionId}' for subscription scope, 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for BillingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for InvoiceSection scope, 'providers/Microsoft.Management/managementGroups/{managementGroupId}' for Management Group scope, '/providers/Microsoft.CostManagement/externalBillingAccounts/{externalBillingAccountName}' for ExternalBillingAccount scope, and '/providers/Microsoft.CostManagement/externalSubscriptions/{externalSubscriptionName}' for ExternalSubscription scope.
  late final pulumi.Output<String?> scope;

  /// Has time period for pulling data for the report.
  late final pulumi.Output<ReportConfigTimePeriodResponse?> timePeriod;

  /// The time frame for pulling data for the report. If custom, then a specific time period must be provided.
  late final pulumi.Output<String> timeframe;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ViewByScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ViewByScope]. {@macro pulumi_costmanagement_view_by_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ViewByScope(
    String name, {
    ViewByScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:costmanagement:ViewByScope',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accumulated = registerOutput<String?>('accumulated');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    chart = registerOutput<String?>('chart');
    createdOn = registerOutput<String>('createdOn');
    currency = registerOutput<String>('currency');
    dataSet = registerOutput<ReportConfigDatasetResponse?>('dataSet');
    dateRange = registerOutput<String?>('dateRange');
    displayName = registerOutput<String?>('displayName');
    eTag = registerOutput<String?>('eTag');
    includeMonetaryCommitment = registerOutput<bool?>(
      'includeMonetaryCommitment',
    );
    kpis = registerOutput<List<Map<String, dynamic>>?>('kpis');
    metric = registerOutput<String?>('metric');
    modifiedOn = registerOutput<String?>('modifiedOn');
    this.name = registerOutput<String>('name');
    pivots = registerOutput<List<Map<String, dynamic>>?>('pivots');
    scope = registerOutput<String?>('scope');
    timePeriod = registerOutput<ReportConfigTimePeriodResponse?>('timePeriod');
    timeframe = registerOutput<String>('timeframe');
    type = registerOutput<String>('type');
  }
}
