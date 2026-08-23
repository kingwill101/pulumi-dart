import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_service_identity_response.dart';
import 'sli_args.dart';
import 'sli_resource_response.dart';
import 'system_data_response.dart';

/// Represents an SLI resource within the ProviderHub.
///
/// Uses Azure REST API version 2025-03-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateSli
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sli = new AzureNative.Monitor.Sli("sli", new()
///     {
///         Properties = new AzureNative.Monitor.Inputs.SliResourceArgs
///         {
///             BaselineProperties = new AzureNative.Monitor.Inputs.BaselinePropertiesArgs
///             {
///                 Baseline = new AzureNative.Monitor.Inputs.BaselineArgs
///                 {
///                     EvaluationCalculationType = AzureNative.Monitor.EvaluationCalculationType.CalendarDays,
///                     EvaluationPeriodDays = 30,
///                     Value = 99,
///                 },
///             },
///             Category = AzureNative.Monitor.Category.Latency,
///             Description = "Measures the performance characteristics of the GetContosoUsers() API. ",
///             DestinationAmwAccounts = new[]
///             {
///                 new AzureNative.Monitor.Inputs.AmwAccountArgs
///                 {
///                     Identity = "/subscriptions/<subId>/resourcegroups/<rgId>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/<idName>",
///                     ResourceId = "/subscriptions/<subId>/resourcegroups/<rgId>/providers/microsoft.monitor/accounts/<dest>",
///                 },
///             },
///             EnableAlert = true,
///             EvaluationType = AzureNative.Monitor.EvaluationType.WindowBased,
///             SliProperties = new AzureNative.Monitor.Inputs.SliPropertiesArgs
///             {
///                 Signals = new AzureNative.Monitor.Inputs.SignalArgs
///                 {
///                     SignalFormula = "(A + B) /2",
///                     SignalSources = new[]
///                     {
///                         new AzureNative.Monitor.Inputs.SignalSourceArgs
///                         {
///                             Filters = new[]
///                             {
///                                 new AzureNative.Monitor.Inputs.ConditionV1Args
///                                 {
///                                     DimensionName = "ApiName",
///                                     Operator = AzureNative.Monitor.ConditionOperator.Equal,
///                                     Value = "GetContosoUsers",
///                                 },
///                             },
///                             MetricName = "Stamp1Latency",
///                             MetricNamespace = "ContosoMetricsWest",
///                             SignalSourceId = "A",
///                             SourceAmwAccountManagedIdentity = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///                             SourceAmwAccountResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount",
///                             SpatialAggregation = new AzureNative.Monitor.Inputs.SpatialAggregationArgs
///                             {
///                                 Dimensions = new[]
///                                 {
///                                     "Region",
///                                     "ResponseCode",
///                                 },
///                                 Type = AzureNative.Monitor.SpatialAggregationType.Average,
///                             },
///                             TemporalAggregation = new AzureNative.Monitor.Inputs.TemporalAggregationArgs
///                             {
///                                 Type = AzureNative.Monitor.TemporalAggregationType.Average,
///                                 WindowSizeMinutes = 5,
///                             },
///                         },
///                         new AzureNative.Monitor.Inputs.SignalSourceArgs
///                         {
///                             Filters = new[]
///                             {
///                                 new AzureNative.Monitor.Inputs.ConditionV1Args
///                                 {
///                                     DimensionName = "ApiName",
///                                     Operator = AzureNative.Monitor.ConditionOperator.Equal,
///                                     Value = "GetContosoUsers",
///                                 },
///                             },
///                             MetricName = "Stamp2Latency",
///                             MetricNamespace = "ContosoMetricsEast",
///                             SignalSourceId = "B",
///                             SourceAmwAccountManagedIdentity = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///                             SourceAmwAccountResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount",
///                             SpatialAggregation = new AzureNative.Monitor.Inputs.SpatialAggregationArgs
///                             {
///                                 Dimensions = new[]
///                                 {
///                                     "Region",
///                                     "ResponseCode",
///                                 },
///                                 Type = AzureNative.Monitor.SpatialAggregationType.Average,
///                             },
///                             TemporalAggregation = new AzureNative.Monitor.Inputs.TemporalAggregationArgs
///                             {
///                                 Type = AzureNative.Monitor.TemporalAggregationType.Average,
///                                 WindowSizeMinutes = 5,
///                             },
///                         },
///                     },
///                 },
///                 WindowUptimeCriteria = new AzureNative.Monitor.Inputs.WindowUptimeCriteriaArgs
///                 {
///                     Comparator = AzureNative.Monitor.WindowUptimeCriteriaComparator.GreaterThanOrEqual,
///                     Target = 95,
///                 },
///             },
///         },
///         ServiceGroupName = "testSG",
///         SliName = "testSli",
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
/// 	monitor "github.com/pulumi/pulumi-azure-native-sdk/monitor/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := monitor.NewSli(ctx, "sli", &monitor.SliArgs{
/// 			Properties: &monitor.SliResourceArgs{
/// 				BaselineProperties: &monitor.BaselinePropertiesArgs{
/// 					Baseline: &monitor.BaselineArgs{
/// 						EvaluationCalculationType: pulumi.String(monitor.EvaluationCalculationTypeCalendarDays),
/// 						EvaluationPeriodDays:      pulumi.Int(30),
/// 						Value:                     pulumi.Float64(99),
/// 					},
/// 				},
/// 				Category:    pulumi.String(monitor.CategoryLatency),
/// 				Description: pulumi.String("Measures the performance characteristics of the GetContosoUsers() API. "),
/// 				DestinationAmwAccounts: monitor.AmwAccountArray{
/// 					&monitor.AmwAccountArgs{
/// 						Identity:   pulumi.String("/subscriptions/<subId>/resourcegroups/<rgId>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/<idName>"),
/// 						ResourceId: pulumi.String("/subscriptions/<subId>/resourcegroups/<rgId>/providers/microsoft.monitor/accounts/<dest>"),
/// 					},
/// 				},
/// 				EnableAlert:    pulumi.Bool(true),
/// 				EvaluationType: pulumi.String(monitor.EvaluationTypeWindowBased),
/// 				SliProperties: &monitor.SliPropertiesArgs{
/// 					Signals: &monitor.SignalArgs{
/// 						SignalFormula: pulumi.String("(A + B) /2"),
/// 						SignalSources: monitor.SignalSourceArray{
/// 							&monitor.SignalSourceArgs{
/// 								Filters: monitor.ConditionV1Array{
/// 									&monitor.ConditionV1Args{
/// 										DimensionName: pulumi.String("ApiName"),
/// 										Operator:      pulumi.String(monitor.ConditionOperatorEqual),
/// 										Value:         pulumi.String("GetContosoUsers"),
/// 									},
/// 								},
/// 								MetricName:                      pulumi.String("Stamp1Latency"),
/// 								MetricNamespace:                 pulumi.String("ContosoMetricsWest"),
/// 								SignalSourceId:                  pulumi.String("A"),
/// 								SourceAmwAccountManagedIdentity: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity"),
/// 								SourceAmwAccountResourceId:      pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount"),
/// 								SpatialAggregation: &monitor.SpatialAggregationArgs{
/// 									Dimensions: pulumi.StringArray{
/// 										pulumi.String("Region"),
/// 										pulumi.String("ResponseCode"),
/// 									},
/// 									Type: pulumi.String(monitor.SpatialAggregationTypeAverage),
/// 								},
/// 								TemporalAggregation: &monitor.TemporalAggregationArgs{
/// 									Type:              pulumi.String(monitor.TemporalAggregationTypeAverage),
/// 									WindowSizeMinutes: pulumi.Int(5),
/// 								},
/// 							},
/// 							&monitor.SignalSourceArgs{
/// 								Filters: monitor.ConditionV1Array{
/// 									&monitor.ConditionV1Args{
/// 										DimensionName: pulumi.String("ApiName"),
/// 										Operator:      pulumi.String(monitor.ConditionOperatorEqual),
/// 										Value:         pulumi.String("GetContosoUsers"),
/// 									},
/// 								},
/// 								MetricName:                      pulumi.String("Stamp2Latency"),
/// 								MetricNamespace:                 pulumi.String("ContosoMetricsEast"),
/// 								SignalSourceId:                  pulumi.String("B"),
/// 								SourceAmwAccountManagedIdentity: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity"),
/// 								SourceAmwAccountResourceId:      pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount"),
/// 								SpatialAggregation: &monitor.SpatialAggregationArgs{
/// 									Dimensions: pulumi.StringArray{
/// 										pulumi.String("Region"),
/// 										pulumi.String("ResponseCode"),
/// 									},
/// 									Type: pulumi.String(monitor.SpatialAggregationTypeAverage),
/// 								},
/// 								TemporalAggregation: &monitor.TemporalAggregationArgs{
/// 									Type:              pulumi.String(monitor.TemporalAggregationTypeAverage),
/// 									WindowSizeMinutes: pulumi.Int(5),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					WindowUptimeCriteria: &monitor.WindowUptimeCriteriaArgs{
/// 						Comparator: pulumi.String(monitor.WindowUptimeCriteriaComparatorGreaterThanOrEqual),
/// 						Target:     pulumi.Float64(95),
/// 					},
/// 				},
/// 			},
/// 			ServiceGroupName: pulumi.String("testSG"),
/// 			SliName:          pulumi.String("testSli"),
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
/// resource "azure-native_monitor_sli" "sli" {
///   properties = {
///     baseline_properties = {
///       baseline = {
///         evaluation_calculation_type = "CalendarDays"
///         evaluation_period_days      = 30
///         value                       = 99
///       }
///     }
///     category    = "Latency"
///     description = "Measures the performance characteristics of the GetContosoUsers() API. "
///     destination_amw_accounts = [{
///       "identity"   = "/subscriptions/<subId>/resourcegroups/<rgId>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/<idName>"
///       "resourceId" = "/subscriptions/<subId>/resourcegroups/<rgId>/providers/microsoft.monitor/accounts/<dest>"
///     }]
///     enable_alert    = true
///     evaluation_type = "WindowBased"
///     sli_properties = {
///       signals = {
///         signal_formula = "(A + B) /2"
///         signal_sources = [{
///           "filters" = [{
///             "dimensionName" = "ApiName"
///             "operator"      = "eq"
///             "value"         = "GetContosoUsers"
///           }]
///           "metricName"                      = "Stamp1Latency"
///           "metricNamespace"                 = "ContosoMetricsWest"
///           "signalSourceId"                  = "A"
///           "sourceAmwAccountManagedIdentity" = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity"
///           "sourceAmwAccountResourceId"      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount"
///           "spatialAggregation" = {
///             "dimensions" = ["Region", "ResponseCode"]
///             "type"       = "Average"
///           }
///           "temporalAggregation" = {
///             "type"              = "Average"
///             "windowSizeMinutes" = 5
///           }
///           }, {
///           "filters" = [{
///             "dimensionName" = "ApiName"
///             "operator"      = "eq"
///             "value"         = "GetContosoUsers"
///           }]
///           "metricName"                      = "Stamp2Latency"
///           "metricNamespace"                 = "ContosoMetricsEast"
///           "signalSourceId"                  = "B"
///           "sourceAmwAccountManagedIdentity" = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity"
///           "sourceAmwAccountResourceId"      = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount"
///           "spatialAggregation" = {
///             "dimensions" = ["Region", "ResponseCode"]
///             "type"       = "Average"
///           }
///           "temporalAggregation" = {
///             "type"              = "Average"
///             "windowSizeMinutes" = 5
///           }
///         }]
///       }
///       window_uptime_criteria = {
///         comparator = "gte"
///         target     = 95
///       }
///     }
///   }
///   service_group_name = "testSG"
///   sli_name           = "testSli"
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
/// import com.pulumi.azurenative.monitor.Sli;
/// import com.pulumi.azurenative.monitor.SliArgs;
/// import com.pulumi.azurenative.monitor.inputs.SliResourceArgs;
/// import com.pulumi.azurenative.monitor.inputs.BaselinePropertiesArgs;
/// import com.pulumi.azurenative.monitor.inputs.BaselineArgs;
/// import com.pulumi.azurenative.monitor.inputs.SliPropertiesArgs;
/// import com.pulumi.azurenative.monitor.inputs.SignalArgs;
/// import com.pulumi.azurenative.monitor.inputs.WindowUptimeCriteriaArgs;
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
///         var sli = new Sli("sli", SliArgs.builder()
///             .properties(SliResourceArgs.builder()
///                 .baselineProperties(BaselinePropertiesArgs.builder()
///                     .baseline(BaselineArgs.builder()
///                         .evaluationCalculationType("CalendarDays")
///                         .evaluationPeriodDays(30)
///                         .value(99.0)
///                         .build())
///                     .build())
///                 .category("Latency")
///                 .description("Measures the performance characteristics of the GetContosoUsers() API. ")
///                 .destinationAmwAccounts(AmwAccountArgs.builder()
///                     .identity("/subscriptions/<subId>/resourcegroups/<rgId>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/<idName>")
///                     .resourceId("/subscriptions/<subId>/resourcegroups/<rgId>/providers/microsoft.monitor/accounts/<dest>")
///                     .build())
///                 .enableAlert(true)
///                 .evaluationType("WindowBased")
///                 .sliProperties(SliPropertiesArgs.builder()
///                     .signals(SignalArgs.builder()
///                         .signalFormula("(A + B) /2")
///                         .signalSources(
///                             SignalSourceArgs.builder()
///                                 .filters(ConditionV1Args.builder()
///                                     .dimensionName("ApiName")
///                                     .operator("eq")
///                                     .value("GetContosoUsers")
///                                     .build())
///                                 .metricName("Stamp1Latency")
///                                 .metricNamespace("ContosoMetricsWest")
///                                 .signalSourceId("A")
///                                 .sourceAmwAccountManagedIdentity("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity")
///                                 .sourceAmwAccountResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount")
///                                 .spatialAggregation(SpatialAggregationArgs.builder()
///                                     .dimensions(
///                                         "Region",
///                                         "ResponseCode")
///                                     .type("Average")
///                                     .build())
///                                 .temporalAggregation(TemporalAggregationArgs.builder()
///                                     .type("Average")
///                                     .windowSizeMinutes(5)
///                                     .build())
///                                 .build(),
///                             SignalSourceArgs.builder()
///                                 .filters(ConditionV1Args.builder()
///                                     .dimensionName("ApiName")
///                                     .operator("eq")
///                                     .value("GetContosoUsers")
///                                     .build())
///                                 .metricName("Stamp2Latency")
///                                 .metricNamespace("ContosoMetricsEast")
///                                 .signalSourceId("B")
///                                 .sourceAmwAccountManagedIdentity("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity")
///                                 .sourceAmwAccountResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount")
///                                 .spatialAggregation(SpatialAggregationArgs.builder()
///                                     .dimensions(
///                                         "Region",
///                                         "ResponseCode")
///                                     .type("Average")
///                                     .build())
///                                 .temporalAggregation(TemporalAggregationArgs.builder()
///                                     .type("Average")
///                                     .windowSizeMinutes(5)
///                                     .build())
///                                 .build())
///                         .build())
///                     .windowUptimeCriteria(WindowUptimeCriteriaArgs.builder()
///                         .comparator("gte")
///                         .target(95.0)
///                         .build())
///                     .build())
///                 .build())
///             .serviceGroupName("testSG")
///             .sliName("testSli")
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
/// const sli = new azure_native.monitor.Sli("sli", {
///     properties: {
///         baselineProperties: {
///             baseline: {
///                 evaluationCalculationType: azure_native.monitor.EvaluationCalculationType.CalendarDays,
///                 evaluationPeriodDays: 30,
///                 value: 99,
///             },
///         },
///         category: azure_native.monitor.Category.Latency,
///         description: "Measures the performance characteristics of the GetContosoUsers() API. ",
///         destinationAmwAccounts: [{
///             identity: "/subscriptions/<subId>/resourcegroups/<rgId>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/<idName>",
///             resourceId: "/subscriptions/<subId>/resourcegroups/<rgId>/providers/microsoft.monitor/accounts/<dest>",
///         }],
///         enableAlert: true,
///         evaluationType: azure_native.monitor.EvaluationType.WindowBased,
///         sliProperties: {
///             signals: {
///                 signalFormula: "(A + B) /2",
///                 signalSources: [
///                     {
///                         filters: [{
///                             dimensionName: "ApiName",
///                             operator: azure_native.monitor.ConditionOperator.Equal,
///                             value: "GetContosoUsers",
///                         }],
///                         metricName: "Stamp1Latency",
///                         metricNamespace: "ContosoMetricsWest",
///                         signalSourceId: "A",
///                         sourceAmwAccountManagedIdentity: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///                         sourceAmwAccountResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount",
///                         spatialAggregation: {
///                             dimensions: [
///                                 "Region",
///                                 "ResponseCode",
///                             ],
///                             type: azure_native.monitor.SpatialAggregationType.Average,
///                         },
///                         temporalAggregation: {
///                             type: azure_native.monitor.TemporalAggregationType.Average,
///                             windowSizeMinutes: 5,
///                         },
///                     },
///                     {
///                         filters: [{
///                             dimensionName: "ApiName",
///                             operator: azure_native.monitor.ConditionOperator.Equal,
///                             value: "GetContosoUsers",
///                         }],
///                         metricName: "Stamp2Latency",
///                         metricNamespace: "ContosoMetricsEast",
///                         signalSourceId: "B",
///                         sourceAmwAccountManagedIdentity: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///                         sourceAmwAccountResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount",
///                         spatialAggregation: {
///                             dimensions: [
///                                 "Region",
///                                 "ResponseCode",
///                             ],
///                             type: azure_native.monitor.SpatialAggregationType.Average,
///                         },
///                         temporalAggregation: {
///                             type: azure_native.monitor.TemporalAggregationType.Average,
///                             windowSizeMinutes: 5,
///                         },
///                     },
///                 ],
///             },
///             windowUptimeCriteria: {
///                 comparator: azure_native.monitor.WindowUptimeCriteriaComparator.GreaterThanOrEqual,
///                 target: 95,
///             },
///         },
///     },
///     serviceGroupName: "testSG",
///     sliName: "testSli",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sli = azure_native.monitor.Sli("sli",
///     properties={
///         "baseline_properties": {
///             "baseline": {
///                 "evaluation_calculation_type": azure_native.monitor.EvaluationCalculationType.CALENDAR_DAYS,
///                 "evaluation_period_days": 30,
///                 "value": float(99),
///             },
///         },
///         "category": azure_native.monitor.Category.LATENCY,
///         "description": "Measures the performance characteristics of the GetContosoUsers() API. ",
///         "destination_amw_accounts": [{
///             "identity": "/subscriptions/<subId>/resourcegroups/<rgId>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/<idName>",
///             "resource_id": "/subscriptions/<subId>/resourcegroups/<rgId>/providers/microsoft.monitor/accounts/<dest>",
///         }],
///         "enable_alert": True,
///         "evaluation_type": azure_native.monitor.EvaluationType.WINDOW_BASED,
///         "sli_properties": {
///             "signals": {
///                 "signal_formula": "(A + B) /2",
///                 "signal_sources": [
///                     {
///                         "filters": [{
///                             "dimension_name": "ApiName",
///                             "operator": azure_native.monitor.ConditionOperator.EQUAL,
///                             "value": "GetContosoUsers",
///                         }],
///                         "metric_name": "Stamp1Latency",
///                         "metric_namespace": "ContosoMetricsWest",
///                         "signal_source_id": "A",
///                         "source_amw_account_managed_identity": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///                         "source_amw_account_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount",
///                         "spatial_aggregation": {
///                             "dimensions": [
///                                 "Region",
///                                 "ResponseCode",
///                             ],
///                             "type": azure_native.monitor.SpatialAggregationType.AVERAGE,
///                         },
///                         "temporal_aggregation": {
///                             "type": azure_native.monitor.TemporalAggregationType.AVERAGE,
///                             "window_size_minutes": 5,
///                         },
///                     },
///                     {
///                         "filters": [{
///                             "dimension_name": "ApiName",
///                             "operator": azure_native.monitor.ConditionOperator.EQUAL,
///                             "value": "GetContosoUsers",
///                         }],
///                         "metric_name": "Stamp2Latency",
///                         "metric_namespace": "ContosoMetricsEast",
///                         "signal_source_id": "B",
///                         "source_amw_account_managed_identity": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity",
///                         "source_amw_account_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount",
///                         "spatial_aggregation": {
///                             "dimensions": [
///                                 "Region",
///                                 "ResponseCode",
///                             ],
///                             "type": azure_native.monitor.SpatialAggregationType.AVERAGE,
///                         },
///                         "temporal_aggregation": {
///                             "type": azure_native.monitor.TemporalAggregationType.AVERAGE,
///                             "window_size_minutes": 5,
///                         },
///                     },
///                 ],
///             },
///             "window_uptime_criteria": {
///                 "comparator": azure_native.monitor.WindowUptimeCriteriaComparator.GREATER_THAN_OR_EQUAL,
///                 "target": float(95),
///             },
///         },
///     },
///     service_group_name="testSG",
///     sli_name="testSli")
///
/// ```
///
/// ```yaml
/// resources:
///   sli:
///     type: azure-native:monitor:Sli
///     properties:
///       properties:
///         baselineProperties:
///           baseline:
///             evaluationCalculationType: CalendarDays
///             evaluationPeriodDays: 30
///             value: 99
///         category: Latency
///         description: 'Measures the performance characteristics of the GetContosoUsers() API. '
///         destinationAmwAccounts:
///           - identity: /subscriptions/<subId>/resourcegroups/<rgId>/providers/Microsoft.ManagedIdentity/userAssignedIdentities/<idName>
///             resourceId: /subscriptions/<subId>/resourcegroups/<rgId>/providers/microsoft.monitor/accounts/<dest>
///         enableAlert: true
///         evaluationType: WindowBased
///         sliProperties:
///           signals:
///             signalFormula: (A + B) /2
///             signalSources:
///               - filters:
///                   - dimensionName: ApiName
///                     operator: eq
///                     value: GetContosoUsers
///                 metricName: Stamp1Latency
///                 metricNamespace: ContosoMetricsWest
///                 signalSourceId: A
///                 sourceAmwAccountManagedIdentity: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity
///                 sourceAmwAccountResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount
///                 spatialAggregation:
///                   dimensions:
///                     - Region
///                     - ResponseCode
///                   type: Average
///                 temporalAggregation:
///                   type: Average
///                   windowSizeMinutes: 5
///               - filters:
///                   - dimensionName: ApiName
///                     operator: eq
///                     value: GetContosoUsers
///                 metricName: Stamp2Latency
///                 metricNamespace: ContosoMetricsEast
///                 signalSourceId: B
///                 sourceAmwAccountManagedIdentity: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/myIdentity
///                 sourceAmwAccountResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAccount
///                 spatialAggregation:
///                   dimensions:
///                     - Region
///                     - ResponseCode
///                   type: Average
///                 temporalAggregation:
///                   type: Average
///                   windowSizeMinutes: 5
///           windowUptimeCriteria:
///             comparator: gte
///             target: 95
///       serviceGroupName: testSG
///       sliName: testSli
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
/// $ pulumi import azure-native:monitor:Sli testSli /providers/Microsoft.Management/serviceGroups/{serviceGroupName}/providers/Microsoft.Monitor/slis/{sliName}
/// ```
class Sli extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<SliResourceResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Sli].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Sli]. {@macro pulumi_monitor_sli_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Sli(
    String name, {
    SliArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:Sli',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    properties = registerOutput<SliResourceResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SliResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
