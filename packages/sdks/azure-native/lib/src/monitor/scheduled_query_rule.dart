import 'package:pulumi/pulumi.dart' as pulumi;
import 'actions_response.dart';
import 'identity_response.dart';
import 'rule_resolve_configuration_response.dart';
import 'scheduled_query_rule_args.dart';
import 'scheduled_query_rule_criteria_response.dart';
import 'system_data_response.dart';

/// The scheduled query rule resource.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2023-12-01, 2026-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a scheduled query rule for Single Resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledQueryRule = new AzureNative.Monitor.ScheduledQueryRule("scheduledQueryRule", new()
///     {
///         Actions = new AzureNative.Monitor.Inputs.ActionsArgs
///         {
///             ActionGroups = new[]
///             {
///                 "/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup",
///             },
///             ActionProperties =
///             {
///                 { "Icm.Title", "Custom title in ICM" },
///                 { "Icm.TsgId", "https://tsg.url" },
///             },
///             CustomProperties =
///             {
///                 { "key11", "value11" },
///                 { "key12", "value12" },
///             },
///         },
///         CheckWorkspaceAlertsStorageConfigured = true,
///         Criteria = new AzureNative.Monitor.Inputs.ScheduledQueryRuleCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ConditionArgs
///                 {
///                     Dimensions = new[]
///                     {
///                         new AzureNative.Monitor.Inputs.DimensionArgs
///                         {
///                             Name = "ComputerIp",
///                             Operator = AzureNative.Monitor.DimensionOperator.Exclude,
///                             Values = new[]
///                             {
///                                 "192.168.1.1",
///                             },
///                         },
///                         new AzureNative.Monitor.Inputs.DimensionArgs
///                         {
///                             Name = "OSType",
///                             Operator = AzureNative.Monitor.DimensionOperator.Include,
///                             Values = new[]
///                             {
///                                 "*",
///                             },
///                         },
///                     },
///                     FailingPeriods = new AzureNative.Monitor.Inputs.ConditionFailingPeriodsArgs
///                     {
///                         MinFailingPeriodsToAlert = 1,
///                         NumberOfEvaluationPeriods = 1,
///                     },
///                     MetricMeasureColumn = "% Processor Time",
///                     Operator = "GreaterThan",
///                     Query = "Perf | where ObjectName == \"Processor\"",
///                     ResourceIdColumn = "resourceId",
///                     Threshold = 70,
///                     TimeAggregation = AzureNative.Monitor.TimeAggregation.Average,
///                 },
///             },
///         },
///         Description = "Performance rule",
///         Enabled = true,
///         EvaluationFrequency = "PT5M",
///         Location = "eastus",
///         MuteActionsDuration = "PT30M",
///         ResolveConfiguration = new AzureNative.Monitor.Inputs.RuleResolveConfigurationArgs
///         {
///             AutoResolved = true,
///             TimeToResolve = "PT10M",
///         },
///         ResourceGroupName = "QueryResourceGroupName",
///         RuleName = "perf",
///         Scopes = new[]
///         {
///             "/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1",
///         },
///         Severity = 4,
///         SkipQueryValidation = true,
///         WindowSize = "PT10M",
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
/// 		_, err := monitor.NewScheduledQueryRule(ctx, "scheduledQueryRule", &monitor.ScheduledQueryRuleArgs{
/// 			Actions: &monitor.ActionsArgs{
/// 				ActionGroups: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"),
/// 				},
/// 				ActionProperties: pulumi.StringMap{
/// 					"Icm.Title": pulumi.String("Custom title in ICM"),
/// 					"Icm.TsgId": pulumi.String("https://tsg.url"),
/// 				},
/// 				CustomProperties: pulumi.StringMap{
/// 					"key11": pulumi.String("value11"),
/// 					"key12": pulumi.String("value12"),
/// 				},
/// 			},
/// 			CheckWorkspaceAlertsStorageConfigured: pulumi.Bool(true),
/// 			Criteria: &monitor.ScheduledQueryRuleCriteriaArgs{
/// 				AllOf: monitor.ConditionArray{
/// 					&monitor.ConditionArgs{
/// 						Dimensions: monitor.DimensionArray{
/// 							&monitor.DimensionArgs{
/// 								Name:     pulumi.String("ComputerIp"),
/// 								Operator: pulumi.String(monitor.DimensionOperatorExclude),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("192.168.1.1"),
/// 								},
/// 							},
/// 							&monitor.DimensionArgs{
/// 								Name:     pulumi.String("OSType"),
/// 								Operator: pulumi.String(monitor.DimensionOperatorInclude),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("*"),
/// 								},
/// 							},
/// 						},
/// 						FailingPeriods: &monitor.ConditionFailingPeriodsArgs{
/// 							MinFailingPeriodsToAlert:  pulumi.Float64(1),
/// 							NumberOfEvaluationPeriods: pulumi.Float64(1),
/// 						},
/// 						MetricMeasureColumn: pulumi.String("% Processor Time"),
/// 						Operator:            pulumi.String("GreaterThan"),
/// 						Query:               pulumi.String("Perf | where ObjectName == \"Processor\""),
/// 						ResourceIdColumn:    pulumi.String("resourceId"),
/// 						Threshold:           pulumi.Float64(70),
/// 						TimeAggregation:     pulumi.String(monitor.TimeAggregationAverage),
/// 					},
/// 				},
/// 			},
/// 			Description:         pulumi.String("Performance rule"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT5M"),
/// 			Location:            pulumi.String("eastus"),
/// 			MuteActionsDuration: pulumi.String("PT30M"),
/// 			ResolveConfiguration: &monitor.RuleResolveConfigurationArgs{
/// 				AutoResolved:  pulumi.Bool(true),
/// 				TimeToResolve: pulumi.String("PT10M"),
/// 			},
/// 			ResourceGroupName: pulumi.String("QueryResourceGroupName"),
/// 			RuleName:          pulumi.String("perf"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"),
/// 			},
/// 			Severity:            pulumi.Float64(4),
/// 			SkipQueryValidation: pulumi.Bool(true),
/// 			WindowSize:          pulumi.String("PT10M"),
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
/// resource "azure-native_monitor_scheduledqueryrule" "scheduledQueryRule" {
///   actions = {
///     action_groups = ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"]
///     action_properties = {
///       "Icm.Title" = "Custom title in ICM"
///       "Icm.TsgId" = "https://tsg.url"
///     }
///     custom_properties = {
///       "key11" = "value11"
///       "key12" = "value12"
///     }
///   }
///   check_workspace_alerts_storage_configured = true
///   criteria = {
///     all_of = [{
///       "dimensions" = [{
///         "name"     = "ComputerIp"
///         "operator" = "Exclude"
///         "values"   = ["192.168.1.1"]
///         }, {
///         "name"     = "OSType"
///         "operator" = "Include"
///         "values"   = ["*"]
///       }]
///       "failingPeriods" = {
///         "minFailingPeriodsToAlert"  = 1
///         "numberOfEvaluationPeriods" = 1
///       }
///       "metricMeasureColumn" = "% Processor Time"
///       "operator"            = "GreaterThan"
///       "query"               = "Perf | where ObjectName == \"Processor\""
///       "resourceIdColumn"    = "resourceId"
///       "threshold"           = 70
///       "timeAggregation"     = "Average"
///     }]
///   }
///   description           = "Performance rule"
///   enabled               = true
///   evaluation_frequency  = "PT5M"
///   location              = "eastus"
///   mute_actions_duration = "PT30M"
///   resolve_configuration = {
///     auto_resolved   = true
///     time_to_resolve = "PT10M"
///   }
///   resource_group_name   = "QueryResourceGroupName"
///   rule_name             = "perf"
///   scopes                = ["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"]
///   severity              = 4
///   skip_query_validation = true
///   window_size           = "PT10M"
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
/// import com.pulumi.azurenative.monitor.ScheduledQueryRule;
/// import com.pulumi.azurenative.monitor.ScheduledQueryRuleArgs;
/// import com.pulumi.azurenative.monitor.inputs.ActionsArgs;
/// import com.pulumi.azurenative.monitor.inputs.ScheduledQueryRuleCriteriaArgs;
/// import com.pulumi.azurenative.monitor.inputs.RuleResolveConfigurationArgs;
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
///         var scheduledQueryRule = new ScheduledQueryRule("scheduledQueryRule", ScheduledQueryRuleArgs.builder()
///             .actions(ActionsArgs.builder()
///                 .actionGroups("/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup")
///                 .actionProperties(Map.ofEntries(
///                     Map.entry("Icm.Title", "Custom title in ICM"),
///                     Map.entry("Icm.TsgId", "https://tsg.url")
///                 ))
///                 .customProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .checkWorkspaceAlertsStorageConfigured(true)
///             .criteria(ScheduledQueryRuleCriteriaArgs.builder()
///                 .allOf(ConditionArgs.builder()
///                     .dimensions(
///                         DimensionArgs.builder()
///                             .name("ComputerIp")
///                             .operator("Exclude")
///                             .values("192.168.1.1")
///                             .build(),
///                         DimensionArgs.builder()
///                             .name("OSType")
///                             .operator("Include")
///                             .values("*")
///                             .build())
///                     .failingPeriods(ConditionFailingPeriodsArgs.builder()
///                         .minFailingPeriodsToAlert(1.0)
///                         .numberOfEvaluationPeriods(1.0)
///                         .build())
///                     .metricMeasureColumn("% Processor Time")
///                     .operator("GreaterThan")
///                     .query("Perf | where ObjectName == \"Processor\"")
///                     .resourceIdColumn("resourceId")
///                     .threshold(70.0)
///                     .timeAggregation("Average")
///                     .build())
///                 .build())
///             .description("Performance rule")
///             .enabled(true)
///             .evaluationFrequency("PT5M")
///             .location("eastus")
///             .muteActionsDuration("PT30M")
///             .resolveConfiguration(RuleResolveConfigurationArgs.builder()
///                 .autoResolved(true)
///                 .timeToResolve("PT10M")
///                 .build())
///             .resourceGroupName("QueryResourceGroupName")
///             .ruleName("perf")
///             .scopes("/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1")
///             .severity(4.0)
///             .skipQueryValidation(true)
///             .windowSize("PT10M")
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
/// const scheduledQueryRule = new azure_native.monitor.ScheduledQueryRule("scheduledQueryRule", {
///     actions: {
///         actionGroups: ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"],
///         actionProperties: {
///             "Icm.Title": "Custom title in ICM",
///             "Icm.TsgId": "https://tsg.url",
///         },
///         customProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     },
///     checkWorkspaceAlertsStorageConfigured: true,
///     criteria: {
///         allOf: [{
///             dimensions: [
///                 {
///                     name: "ComputerIp",
///                     operator: azure_native.monitor.DimensionOperator.Exclude,
///                     values: ["192.168.1.1"],
///                 },
///                 {
///                     name: "OSType",
///                     operator: azure_native.monitor.DimensionOperator.Include,
///                     values: ["*"],
///                 },
///             ],
///             failingPeriods: {
///                 minFailingPeriodsToAlert: 1,
///                 numberOfEvaluationPeriods: 1,
///             },
///             metricMeasureColumn: "% Processor Time",
///             operator: "GreaterThan",
///             query: "Perf | where ObjectName == \"Processor\"",
///             resourceIdColumn: "resourceId",
///             threshold: 70,
///             timeAggregation: azure_native.monitor.TimeAggregation.Average,
///         }],
///     },
///     description: "Performance rule",
///     enabled: true,
///     evaluationFrequency: "PT5M",
///     location: "eastus",
///     muteActionsDuration: "PT30M",
///     resolveConfiguration: {
///         autoResolved: true,
///         timeToResolve: "PT10M",
///     },
///     resourceGroupName: "QueryResourceGroupName",
///     ruleName: "perf",
///     scopes: ["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"],
///     severity: 4,
///     skipQueryValidation: true,
///     windowSize: "PT10M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_query_rule = azure_native.monitor.ScheduledQueryRule("scheduledQueryRule",
///     actions={
///         "action_groups": ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"],
///         "action_properties": {
///             "Icm.Title": "Custom title in ICM",
///             "Icm.TsgId": "https://tsg.url",
///         },
///         "custom_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     },
///     check_workspace_alerts_storage_configured=True,
///     criteria={
///         "all_of": [{
///             "dimensions": [
///                 {
///                     "name": "ComputerIp",
///                     "operator": azure_native.monitor.DimensionOperator.EXCLUDE,
///                     "values": ["192.168.1.1"],
///                 },
///                 {
///                     "name": "OSType",
///                     "operator": azure_native.monitor.DimensionOperator.INCLUDE,
///                     "values": ["*"],
///                 },
///             ],
///             "failing_periods": {
///                 "min_failing_periods_to_alert": float(1),
///                 "number_of_evaluation_periods": float(1),
///             },
///             "metric_measure_column": "% Processor Time",
///             "operator": "GreaterThan",
///             "query": "Perf | where ObjectName == \"Processor\"",
///             "resource_id_column": "resourceId",
///             "threshold": float(70),
///             "time_aggregation": azure_native.monitor.TimeAggregation.AVERAGE,
///         }],
///     },
///     description="Performance rule",
///     enabled=True,
///     evaluation_frequency="PT5M",
///     location="eastus",
///     mute_actions_duration="PT30M",
///     resolve_configuration={
///         "auto_resolved": True,
///         "time_to_resolve": "PT10M",
///     },
///     resource_group_name="QueryResourceGroupName",
///     rule_name="perf",
///     scopes=["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"],
///     severity=float(4),
///     skip_query_validation=True,
///     window_size="PT10M")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledQueryRule:
///     type: azure-native:monitor:ScheduledQueryRule
///     properties:
///       actions:
///         actionGroups:
///           - /subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup
///         actionProperties:
///           Icm.Title: Custom title in ICM
///           Icm.TsgId: https://tsg.url
///         customProperties:
///           key11: value11
///           key12: value12
///       checkWorkspaceAlertsStorageConfigured: true
///       criteria:
///         allOf:
///           - dimensions:
///               - name: ComputerIp
///                 operator: Exclude
///                 values:
///                   - 192.168.1.1
///               - name: OSType
///                 operator: Include
///                 values:
///                   - '*'
///             failingPeriods:
///               minFailingPeriodsToAlert: 1
///               numberOfEvaluationPeriods: 1
///             metricMeasureColumn: '% Processor Time'
///             operator: GreaterThan
///             query: Perf | where ObjectName == "Processor"
///             resourceIdColumn: resourceId
///             threshold: 70
///             timeAggregation: Average
///       description: Performance rule
///       enabled: true
///       evaluationFrequency: PT5M
///       location: eastus
///       muteActionsDuration: PT30M
///       resolveConfiguration:
///         autoResolved: true
///         timeToResolve: PT10M
///       resourceGroupName: QueryResourceGroupName
///       ruleName: perf
///       scopes:
///         - /subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1
///       severity: 4
///       skipQueryValidation: true
///       windowSize: PT10M
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a scheduled query rule on Resource group(s)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledQueryRule = new AzureNative.Monitor.ScheduledQueryRule("scheduledQueryRule", new()
///     {
///         Actions = new AzureNative.Monitor.Inputs.ActionsArgs
///         {
///             ActionGroups = new[]
///             {
///                 "/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup",
///             },
///             ActionProperties =
///             {
///                 { "Icm.Title", "Custom title in ICM" },
///                 { "Icm.TsgId", "https://tsg.url" },
///             },
///             CustomProperties =
///             {
///                 { "key11", "value11" },
///                 { "key12", "value12" },
///             },
///         },
///         CheckWorkspaceAlertsStorageConfigured = true,
///         Criteria = new AzureNative.Monitor.Inputs.ScheduledQueryRuleCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ConditionArgs
///                 {
///                     Dimensions = new() { },
///                     FailingPeriods = new AzureNative.Monitor.Inputs.ConditionFailingPeriodsArgs
///                     {
///                         MinFailingPeriodsToAlert = 1,
///                         NumberOfEvaluationPeriods = 1,
///                     },
///                     Operator = "GreaterThan",
///                     Query = "Heartbeat",
///                     Threshold = 360,
///                     TimeAggregation = AzureNative.Monitor.TimeAggregation.Count,
///                 },
///             },
///         },
///         Description = "Health check rule",
///         Enabled = true,
///         EvaluationFrequency = "PT5M",
///         Location = "eastus",
///         MuteActionsDuration = "PT30M",
///         ResolveConfiguration = new AzureNative.Monitor.Inputs.RuleResolveConfigurationArgs
///         {
///             AutoResolved = true,
///             TimeToResolve = "PT10M",
///         },
///         ResourceGroupName = "QueryResourceGroupName",
///         RuleName = "heartbeat",
///         Scopes = new[]
///         {
///             "/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1",
///         },
///         Severity = 4,
///         SkipQueryValidation = true,
///         TargetResourceTypes = new[]
///         {
///             "Microsoft.Compute/virtualMachines",
///         },
///         WindowSize = "PT10M",
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
/// 		_, err := monitor.NewScheduledQueryRule(ctx, "scheduledQueryRule", &monitor.ScheduledQueryRuleArgs{
/// 			Actions: &monitor.ActionsArgs{
/// 				ActionGroups: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"),
/// 				},
/// 				ActionProperties: pulumi.StringMap{
/// 					"Icm.Title": pulumi.String("Custom title in ICM"),
/// 					"Icm.TsgId": pulumi.String("https://tsg.url"),
/// 				},
/// 				CustomProperties: pulumi.StringMap{
/// 					"key11": pulumi.String("value11"),
/// 					"key12": pulumi.String("value12"),
/// 				},
/// 			},
/// 			CheckWorkspaceAlertsStorageConfigured: pulumi.Bool(true),
/// 			Criteria: &monitor.ScheduledQueryRuleCriteriaArgs{
/// 				AllOf: monitor.ConditionArray{
/// 					&monitor.ConditionArgs{
/// 						Dimensions: monitor.DimensionArray{},
/// 						FailingPeriods: &monitor.ConditionFailingPeriodsArgs{
/// 							MinFailingPeriodsToAlert:  pulumi.Float64(1),
/// 							NumberOfEvaluationPeriods: pulumi.Float64(1),
/// 						},
/// 						Operator:        pulumi.String("GreaterThan"),
/// 						Query:           pulumi.String("Heartbeat"),
/// 						Threshold:       pulumi.Float64(360),
/// 						TimeAggregation: pulumi.String(monitor.TimeAggregationCount),
/// 					},
/// 				},
/// 			},
/// 			Description:         pulumi.String("Health check rule"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT5M"),
/// 			Location:            pulumi.String("eastus"),
/// 			MuteActionsDuration: pulumi.String("PT30M"),
/// 			ResolveConfiguration: &monitor.RuleResolveConfigurationArgs{
/// 				AutoResolved:  pulumi.Bool(true),
/// 				TimeToResolve: pulumi.String("PT10M"),
/// 			},
/// 			ResourceGroupName: pulumi.String("QueryResourceGroupName"),
/// 			RuleName:          pulumi.String("heartbeat"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1"),
/// 			},
/// 			Severity:            pulumi.Float64(4),
/// 			SkipQueryValidation: pulumi.Bool(true),
/// 			TargetResourceTypes: pulumi.StringArray{
/// 				pulumi.String("Microsoft.Compute/virtualMachines"),
/// 			},
/// 			WindowSize: pulumi.String("PT10M"),
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
/// resource "azure-native_monitor_scheduledqueryrule" "scheduledQueryRule" {
///   actions = {
///     action_groups = ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"]
///     action_properties = {
///       "Icm.Title" = "Custom title in ICM"
///       "Icm.TsgId" = "https://tsg.url"
///     }
///     custom_properties = {
///       "key11" = "value11"
///       "key12" = "value12"
///     }
///   }
///   check_workspace_alerts_storage_configured = true
///   criteria = {
///     all_of = [{
///       "dimensions" = []
///       "failingPeriods" = {
///         "minFailingPeriodsToAlert"  = 1
///         "numberOfEvaluationPeriods" = 1
///       }
///       "operator"        = "GreaterThan"
///       "query"           = "Heartbeat"
///       "threshold"       = 360
///       "timeAggregation" = "Count"
///     }]
///   }
///   description           = "Health check rule"
///   enabled               = true
///   evaluation_frequency  = "PT5M"
///   location              = "eastus"
///   mute_actions_duration = "PT30M"
///   resolve_configuration = {
///     auto_resolved   = true
///     time_to_resolve = "PT10M"
///   }
///   resource_group_name   = "QueryResourceGroupName"
///   rule_name             = "heartbeat"
///   scopes                = ["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1"]
///   severity              = 4
///   skip_query_validation = true
///   target_resource_types = ["Microsoft.Compute/virtualMachines"]
///   window_size           = "PT10M"
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
/// import com.pulumi.azurenative.monitor.ScheduledQueryRule;
/// import com.pulumi.azurenative.monitor.ScheduledQueryRuleArgs;
/// import com.pulumi.azurenative.monitor.inputs.ActionsArgs;
/// import com.pulumi.azurenative.monitor.inputs.ScheduledQueryRuleCriteriaArgs;
/// import com.pulumi.azurenative.monitor.inputs.RuleResolveConfigurationArgs;
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
///         var scheduledQueryRule = new ScheduledQueryRule("scheduledQueryRule", ScheduledQueryRuleArgs.builder()
///             .actions(ActionsArgs.builder()
///                 .actionGroups("/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup")
///                 .actionProperties(Map.ofEntries(
///                     Map.entry("Icm.Title", "Custom title in ICM"),
///                     Map.entry("Icm.TsgId", "https://tsg.url")
///                 ))
///                 .customProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .checkWorkspaceAlertsStorageConfigured(true)
///             .criteria(ScheduledQueryRuleCriteriaArgs.builder()
///                 .allOf(ConditionArgs.builder()
///                     .dimensions()
///                     .failingPeriods(ConditionFailingPeriodsArgs.builder()
///                         .minFailingPeriodsToAlert(1.0)
///                         .numberOfEvaluationPeriods(1.0)
///                         .build())
///                     .operator("GreaterThan")
///                     .query("Heartbeat")
///                     .threshold(360.0)
///                     .timeAggregation("Count")
///                     .build())
///                 .build())
///             .description("Health check rule")
///             .enabled(true)
///             .evaluationFrequency("PT5M")
///             .location("eastus")
///             .muteActionsDuration("PT30M")
///             .resolveConfiguration(RuleResolveConfigurationArgs.builder()
///                 .autoResolved(true)
///                 .timeToResolve("PT10M")
///                 .build())
///             .resourceGroupName("QueryResourceGroupName")
///             .ruleName("heartbeat")
///             .scopes("/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1")
///             .severity(4.0)
///             .skipQueryValidation(true)
///             .targetResourceTypes("Microsoft.Compute/virtualMachines")
///             .windowSize("PT10M")
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
/// const scheduledQueryRule = new azure_native.monitor.ScheduledQueryRule("scheduledQueryRule", {
///     actions: {
///         actionGroups: ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"],
///         actionProperties: {
///             "Icm.Title": "Custom title in ICM",
///             "Icm.TsgId": "https://tsg.url",
///         },
///         customProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     },
///     checkWorkspaceAlertsStorageConfigured: true,
///     criteria: {
///         allOf: [{
///             dimensions: [],
///             failingPeriods: {
///                 minFailingPeriodsToAlert: 1,
///                 numberOfEvaluationPeriods: 1,
///             },
///             operator: "GreaterThan",
///             query: "Heartbeat",
///             threshold: 360,
///             timeAggregation: azure_native.monitor.TimeAggregation.Count,
///         }],
///     },
///     description: "Health check rule",
///     enabled: true,
///     evaluationFrequency: "PT5M",
///     location: "eastus",
///     muteActionsDuration: "PT30M",
///     resolveConfiguration: {
///         autoResolved: true,
///         timeToResolve: "PT10M",
///     },
///     resourceGroupName: "QueryResourceGroupName",
///     ruleName: "heartbeat",
///     scopes: ["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1"],
///     severity: 4,
///     skipQueryValidation: true,
///     targetResourceTypes: ["Microsoft.Compute/virtualMachines"],
///     windowSize: "PT10M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_query_rule = azure_native.monitor.ScheduledQueryRule("scheduledQueryRule",
///     actions={
///         "action_groups": ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"],
///         "action_properties": {
///             "Icm.Title": "Custom title in ICM",
///             "Icm.TsgId": "https://tsg.url",
///         },
///         "custom_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     },
///     check_workspace_alerts_storage_configured=True,
///     criteria={
///         "all_of": [{
///             "dimensions": [],
///             "failing_periods": {
///                 "min_failing_periods_to_alert": float(1),
///                 "number_of_evaluation_periods": float(1),
///             },
///             "operator": "GreaterThan",
///             "query": "Heartbeat",
///             "threshold": float(360),
///             "time_aggregation": azure_native.monitor.TimeAggregation.COUNT,
///         }],
///     },
///     description="Health check rule",
///     enabled=True,
///     evaluation_frequency="PT5M",
///     location="eastus",
///     mute_actions_duration="PT30M",
///     resolve_configuration={
///         "auto_resolved": True,
///         "time_to_resolve": "PT10M",
///     },
///     resource_group_name="QueryResourceGroupName",
///     rule_name="heartbeat",
///     scopes=["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1"],
///     severity=float(4),
///     skip_query_validation=True,
///     target_resource_types=["Microsoft.Compute/virtualMachines"],
///     window_size="PT10M")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledQueryRule:
///     type: azure-native:monitor:ScheduledQueryRule
///     properties:
///       actions:
///         actionGroups:
///           - /subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup
///         actionProperties:
///           Icm.Title: Custom title in ICM
///           Icm.TsgId: https://tsg.url
///         customProperties:
///           key11: value11
///           key12: value12
///       checkWorkspaceAlertsStorageConfigured: true
///       criteria:
///         allOf:
///           - dimensions: []
///             failingPeriods:
///               minFailingPeriodsToAlert: 1
///               numberOfEvaluationPeriods: 1
///             operator: GreaterThan
///             query: Heartbeat
///             threshold: 360
///             timeAggregation: Count
///       description: Health check rule
///       enabled: true
///       evaluationFrequency: PT5M
///       location: eastus
///       muteActionsDuration: PT30M
///       resolveConfiguration:
///         autoResolved: true
///         timeToResolve: PT10M
///       resourceGroupName: QueryResourceGroupName
///       ruleName: heartbeat
///       scopes:
///         - /subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1
///       severity: 4
///       skipQueryValidation: true
///       targetResourceTypes:
///         - Microsoft.Compute/virtualMachines
///       windowSize: PT10M
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a scheduled query rule on Subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledQueryRule = new AzureNative.Monitor.ScheduledQueryRule("scheduledQueryRule", new()
///     {
///         Actions = new AzureNative.Monitor.Inputs.ActionsArgs
///         {
///             ActionGroups = new[]
///             {
///                 "/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup",
///             },
///             ActionProperties =
///             {
///                 { "Icm.Title", "Custom title in ICM" },
///                 { "Icm.TsgId", "https://tsg.url" },
///             },
///             CustomProperties =
///             {
///                 { "key11", "value11" },
///                 { "key12", "value12" },
///             },
///         },
///         CheckWorkspaceAlertsStorageConfigured = true,
///         Criteria = new AzureNative.Monitor.Inputs.ScheduledQueryRuleCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ConditionArgs
///                 {
///                     Dimensions = new[]
///                     {
///                         new AzureNative.Monitor.Inputs.DimensionArgs
///                         {
///                             Name = "ComputerIp",
///                             Operator = AzureNative.Monitor.DimensionOperator.Exclude,
///                             Values = new[]
///                             {
///                                 "192.168.1.1",
///                             },
///                         },
///                         new AzureNative.Monitor.Inputs.DimensionArgs
///                         {
///                             Name = "OSType",
///                             Operator = AzureNative.Monitor.DimensionOperator.Include,
///                             Values = new[]
///                             {
///                                 "*",
///                             },
///                         },
///                     },
///                     FailingPeriods = new AzureNative.Monitor.Inputs.ConditionFailingPeriodsArgs
///                     {
///                         MinFailingPeriodsToAlert = 1,
///                         NumberOfEvaluationPeriods = 1,
///                     },
///                     MetricMeasureColumn = "% Processor Time",
///                     Operator = "GreaterThan",
///                     Query = "Perf | where ObjectName == \"Processor\"",
///                     ResourceIdColumn = "resourceId",
///                     Threshold = 70,
///                     TimeAggregation = AzureNative.Monitor.TimeAggregation.Average,
///                 },
///             },
///         },
///         Description = "Performance rule",
///         Enabled = true,
///         EvaluationFrequency = "PT5M",
///         Location = "eastus",
///         MuteActionsDuration = "PT30M",
///         ResolveConfiguration = new AzureNative.Monitor.Inputs.RuleResolveConfigurationArgs
///         {
///             AutoResolved = true,
///             TimeToResolve = "PT10M",
///         },
///         ResourceGroupName = "QueryResourceGroupName",
///         RuleName = "perf",
///         Scopes = new[]
///         {
///             "/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147",
///         },
///         Severity = 4,
///         SkipQueryValidation = true,
///         TargetResourceTypes = new[]
///         {
///             "Microsoft.Compute/virtualMachines",
///         },
///         WindowSize = "PT10M",
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
/// 		_, err := monitor.NewScheduledQueryRule(ctx, "scheduledQueryRule", &monitor.ScheduledQueryRuleArgs{
/// 			Actions: &monitor.ActionsArgs{
/// 				ActionGroups: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"),
/// 				},
/// 				ActionProperties: pulumi.StringMap{
/// 					"Icm.Title": pulumi.String("Custom title in ICM"),
/// 					"Icm.TsgId": pulumi.String("https://tsg.url"),
/// 				},
/// 				CustomProperties: pulumi.StringMap{
/// 					"key11": pulumi.String("value11"),
/// 					"key12": pulumi.String("value12"),
/// 				},
/// 			},
/// 			CheckWorkspaceAlertsStorageConfigured: pulumi.Bool(true),
/// 			Criteria: &monitor.ScheduledQueryRuleCriteriaArgs{
/// 				AllOf: monitor.ConditionArray{
/// 					&monitor.ConditionArgs{
/// 						Dimensions: monitor.DimensionArray{
/// 							&monitor.DimensionArgs{
/// 								Name:     pulumi.String("ComputerIp"),
/// 								Operator: pulumi.String(monitor.DimensionOperatorExclude),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("192.168.1.1"),
/// 								},
/// 							},
/// 							&monitor.DimensionArgs{
/// 								Name:     pulumi.String("OSType"),
/// 								Operator: pulumi.String(monitor.DimensionOperatorInclude),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("*"),
/// 								},
/// 							},
/// 						},
/// 						FailingPeriods: &monitor.ConditionFailingPeriodsArgs{
/// 							MinFailingPeriodsToAlert:  pulumi.Float64(1),
/// 							NumberOfEvaluationPeriods: pulumi.Float64(1),
/// 						},
/// 						MetricMeasureColumn: pulumi.String("% Processor Time"),
/// 						Operator:            pulumi.String("GreaterThan"),
/// 						Query:               pulumi.String("Perf | where ObjectName == \"Processor\""),
/// 						ResourceIdColumn:    pulumi.String("resourceId"),
/// 						Threshold:           pulumi.Float64(70),
/// 						TimeAggregation:     pulumi.String(monitor.TimeAggregationAverage),
/// 					},
/// 				},
/// 			},
/// 			Description:         pulumi.String("Performance rule"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT5M"),
/// 			Location:            pulumi.String("eastus"),
/// 			MuteActionsDuration: pulumi.String("PT30M"),
/// 			ResolveConfiguration: &monitor.RuleResolveConfigurationArgs{
/// 				AutoResolved:  pulumi.Bool(true),
/// 				TimeToResolve: pulumi.String("PT10M"),
/// 			},
/// 			ResourceGroupName: pulumi.String("QueryResourceGroupName"),
/// 			RuleName:          pulumi.String("perf"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147"),
/// 			},
/// 			Severity:            pulumi.Float64(4),
/// 			SkipQueryValidation: pulumi.Bool(true),
/// 			TargetResourceTypes: pulumi.StringArray{
/// 				pulumi.String("Microsoft.Compute/virtualMachines"),
/// 			},
/// 			WindowSize: pulumi.String("PT10M"),
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
/// resource "azure-native_monitor_scheduledqueryrule" "scheduledQueryRule" {
///   actions = {
///     action_groups = ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"]
///     action_properties = {
///       "Icm.Title" = "Custom title in ICM"
///       "Icm.TsgId" = "https://tsg.url"
///     }
///     custom_properties = {
///       "key11" = "value11"
///       "key12" = "value12"
///     }
///   }
///   check_workspace_alerts_storage_configured = true
///   criteria = {
///     all_of = [{
///       "dimensions" = [{
///         "name"     = "ComputerIp"
///         "operator" = "Exclude"
///         "values"   = ["192.168.1.1"]
///         }, {
///         "name"     = "OSType"
///         "operator" = "Include"
///         "values"   = ["*"]
///       }]
///       "failingPeriods" = {
///         "minFailingPeriodsToAlert"  = 1
///         "numberOfEvaluationPeriods" = 1
///       }
///       "metricMeasureColumn" = "% Processor Time"
///       "operator"            = "GreaterThan"
///       "query"               = "Perf | where ObjectName == \"Processor\""
///       "resourceIdColumn"    = "resourceId"
///       "threshold"           = 70
///       "timeAggregation"     = "Average"
///     }]
///   }
///   description           = "Performance rule"
///   enabled               = true
///   evaluation_frequency  = "PT5M"
///   location              = "eastus"
///   mute_actions_duration = "PT30M"
///   resolve_configuration = {
///     auto_resolved   = true
///     time_to_resolve = "PT10M"
///   }
///   resource_group_name   = "QueryResourceGroupName"
///   rule_name             = "perf"
///   scopes                = ["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147"]
///   severity              = 4
///   skip_query_validation = true
///   target_resource_types = ["Microsoft.Compute/virtualMachines"]
///   window_size           = "PT10M"
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
/// import com.pulumi.azurenative.monitor.ScheduledQueryRule;
/// import com.pulumi.azurenative.monitor.ScheduledQueryRuleArgs;
/// import com.pulumi.azurenative.monitor.inputs.ActionsArgs;
/// import com.pulumi.azurenative.monitor.inputs.ScheduledQueryRuleCriteriaArgs;
/// import com.pulumi.azurenative.monitor.inputs.RuleResolveConfigurationArgs;
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
///         var scheduledQueryRule = new ScheduledQueryRule("scheduledQueryRule", ScheduledQueryRuleArgs.builder()
///             .actions(ActionsArgs.builder()
///                 .actionGroups("/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup")
///                 .actionProperties(Map.ofEntries(
///                     Map.entry("Icm.Title", "Custom title in ICM"),
///                     Map.entry("Icm.TsgId", "https://tsg.url")
///                 ))
///                 .customProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .checkWorkspaceAlertsStorageConfigured(true)
///             .criteria(ScheduledQueryRuleCriteriaArgs.builder()
///                 .allOf(ConditionArgs.builder()
///                     .dimensions(
///                         DimensionArgs.builder()
///                             .name("ComputerIp")
///                             .operator("Exclude")
///                             .values("192.168.1.1")
///                             .build(),
///                         DimensionArgs.builder()
///                             .name("OSType")
///                             .operator("Include")
///                             .values("*")
///                             .build())
///                     .failingPeriods(ConditionFailingPeriodsArgs.builder()
///                         .minFailingPeriodsToAlert(1.0)
///                         .numberOfEvaluationPeriods(1.0)
///                         .build())
///                     .metricMeasureColumn("% Processor Time")
///                     .operator("GreaterThan")
///                     .query("Perf | where ObjectName == \"Processor\"")
///                     .resourceIdColumn("resourceId")
///                     .threshold(70.0)
///                     .timeAggregation("Average")
///                     .build())
///                 .build())
///             .description("Performance rule")
///             .enabled(true)
///             .evaluationFrequency("PT5M")
///             .location("eastus")
///             .muteActionsDuration("PT30M")
///             .resolveConfiguration(RuleResolveConfigurationArgs.builder()
///                 .autoResolved(true)
///                 .timeToResolve("PT10M")
///                 .build())
///             .resourceGroupName("QueryResourceGroupName")
///             .ruleName("perf")
///             .scopes("/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147")
///             .severity(4.0)
///             .skipQueryValidation(true)
///             .targetResourceTypes("Microsoft.Compute/virtualMachines")
///             .windowSize("PT10M")
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
/// const scheduledQueryRule = new azure_native.monitor.ScheduledQueryRule("scheduledQueryRule", {
///     actions: {
///         actionGroups: ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"],
///         actionProperties: {
///             "Icm.Title": "Custom title in ICM",
///             "Icm.TsgId": "https://tsg.url",
///         },
///         customProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     },
///     checkWorkspaceAlertsStorageConfigured: true,
///     criteria: {
///         allOf: [{
///             dimensions: [
///                 {
///                     name: "ComputerIp",
///                     operator: azure_native.monitor.DimensionOperator.Exclude,
///                     values: ["192.168.1.1"],
///                 },
///                 {
///                     name: "OSType",
///                     operator: azure_native.monitor.DimensionOperator.Include,
///                     values: ["*"],
///                 },
///             ],
///             failingPeriods: {
///                 minFailingPeriodsToAlert: 1,
///                 numberOfEvaluationPeriods: 1,
///             },
///             metricMeasureColumn: "% Processor Time",
///             operator: "GreaterThan",
///             query: "Perf | where ObjectName == \"Processor\"",
///             resourceIdColumn: "resourceId",
///             threshold: 70,
///             timeAggregation: azure_native.monitor.TimeAggregation.Average,
///         }],
///     },
///     description: "Performance rule",
///     enabled: true,
///     evaluationFrequency: "PT5M",
///     location: "eastus",
///     muteActionsDuration: "PT30M",
///     resolveConfiguration: {
///         autoResolved: true,
///         timeToResolve: "PT10M",
///     },
///     resourceGroupName: "QueryResourceGroupName",
///     ruleName: "perf",
///     scopes: ["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147"],
///     severity: 4,
///     skipQueryValidation: true,
///     targetResourceTypes: ["Microsoft.Compute/virtualMachines"],
///     windowSize: "PT10M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_query_rule = azure_native.monitor.ScheduledQueryRule("scheduledQueryRule",
///     actions={
///         "action_groups": ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"],
///         "action_properties": {
///             "Icm.Title": "Custom title in ICM",
///             "Icm.TsgId": "https://tsg.url",
///         },
///         "custom_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     },
///     check_workspace_alerts_storage_configured=True,
///     criteria={
///         "all_of": [{
///             "dimensions": [
///                 {
///                     "name": "ComputerIp",
///                     "operator": azure_native.monitor.DimensionOperator.EXCLUDE,
///                     "values": ["192.168.1.1"],
///                 },
///                 {
///                     "name": "OSType",
///                     "operator": azure_native.monitor.DimensionOperator.INCLUDE,
///                     "values": ["*"],
///                 },
///             ],
///             "failing_periods": {
///                 "min_failing_periods_to_alert": float(1),
///                 "number_of_evaluation_periods": float(1),
///             },
///             "metric_measure_column": "% Processor Time",
///             "operator": "GreaterThan",
///             "query": "Perf | where ObjectName == \"Processor\"",
///             "resource_id_column": "resourceId",
///             "threshold": float(70),
///             "time_aggregation": azure_native.monitor.TimeAggregation.AVERAGE,
///         }],
///     },
///     description="Performance rule",
///     enabled=True,
///     evaluation_frequency="PT5M",
///     location="eastus",
///     mute_actions_duration="PT30M",
///     resolve_configuration={
///         "auto_resolved": True,
///         "time_to_resolve": "PT10M",
///     },
///     resource_group_name="QueryResourceGroupName",
///     rule_name="perf",
///     scopes=["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147"],
///     severity=float(4),
///     skip_query_validation=True,
///     target_resource_types=["Microsoft.Compute/virtualMachines"],
///     window_size="PT10M")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledQueryRule:
///     type: azure-native:monitor:ScheduledQueryRule
///     properties:
///       actions:
///         actionGroups:
///           - /subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup
///         actionProperties:
///           Icm.Title: Custom title in ICM
///           Icm.TsgId: https://tsg.url
///         customProperties:
///           key11: value11
///           key12: value12
///       checkWorkspaceAlertsStorageConfigured: true
///       criteria:
///         allOf:
///           - dimensions:
///               - name: ComputerIp
///                 operator: Exclude
///                 values:
///                   - 192.168.1.1
///               - name: OSType
///                 operator: Include
///                 values:
///                   - '*'
///             failingPeriods:
///               minFailingPeriodsToAlert: 1
///               numberOfEvaluationPeriods: 1
///             metricMeasureColumn: '% Processor Time'
///             operator: GreaterThan
///             query: Perf | where ObjectName == "Processor"
///             resourceIdColumn: resourceId
///             threshold: 70
///             timeAggregation: Average
///       description: Performance rule
///       enabled: true
///       evaluationFrequency: PT5M
///       location: eastus
///       muteActionsDuration: PT30M
///       resolveConfiguration:
///         autoResolved: true
///         timeToResolve: PT10M
///       resourceGroupName: QueryResourceGroupName
///       ruleName: perf
///       scopes:
///         - /subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147
///       severity: 4
///       skipQueryValidation: true
///       targetResourceTypes:
///         - Microsoft.Compute/virtualMachines
///       windowSize: PT10M
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a simple log alert scheduled query rule on Subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledQueryRule = new AzureNative.Monitor.ScheduledQueryRule("scheduledQueryRule", new()
///     {
///         Actions = new AzureNative.Monitor.Inputs.ActionsArgs
///         {
///             ActionGroups = new[]
///             {
///                 "/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup",
///             },
///             ActionProperties =
///             {
///                 { "Icm.Title", "Custom title in ICM" },
///                 { "Icm.TsgId", "https://tsg.url" },
///             },
///             CustomProperties =
///             {
///                 { "key11", "value11" },
///                 { "key12", "value12" },
///             },
///         },
///         AutoMitigate = false,
///         CheckWorkspaceAlertsStorageConfigured = true,
///         Criteria = new AzureNative.Monitor.Inputs.ScheduledQueryRuleCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ConditionArgs
///                 {
///                     Query = "Perf | where ObjectName == \"Processor\"",
///                 },
///             },
///         },
///         Description = "Performance rule",
///         Enabled = true,
///         Kind = AzureNative.Monitor.Kind.SimpleLogAlert,
///         Location = "eastus",
///         ResourceGroupName = "QueryResourceGroupName",
///         RuleName = "perf",
///         Scopes = new[]
///         {
///             "/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1",
///         },
///         Severity = 4,
///         SkipQueryValidation = true,
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
/// 		_, err := monitor.NewScheduledQueryRule(ctx, "scheduledQueryRule", &monitor.ScheduledQueryRuleArgs{
/// 			Actions: &monitor.ActionsArgs{
/// 				ActionGroups: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"),
/// 				},
/// 				ActionProperties: pulumi.StringMap{
/// 					"Icm.Title": pulumi.String("Custom title in ICM"),
/// 					"Icm.TsgId": pulumi.String("https://tsg.url"),
/// 				},
/// 				CustomProperties: pulumi.StringMap{
/// 					"key11": pulumi.String("value11"),
/// 					"key12": pulumi.String("value12"),
/// 				},
/// 			},
/// 			AutoMitigate:                          pulumi.Bool(false),
/// 			CheckWorkspaceAlertsStorageConfigured: pulumi.Bool(true),
/// 			Criteria: &monitor.ScheduledQueryRuleCriteriaArgs{
/// 				AllOf: monitor.ConditionArray{
/// 					&monitor.ConditionArgs{
/// 						Query: pulumi.String("Perf | where ObjectName == \"Processor\""),
/// 					},
/// 				},
/// 			},
/// 			Description:       pulumi.String("Performance rule"),
/// 			Enabled:           pulumi.Bool(true),
/// 			Kind:              pulumi.String(monitor.KindSimpleLogAlert),
/// 			Location:          pulumi.String("eastus"),
/// 			ResourceGroupName: pulumi.String("QueryResourceGroupName"),
/// 			RuleName:          pulumi.String("perf"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"),
/// 			},
/// 			Severity:            pulumi.Float64(4),
/// 			SkipQueryValidation: pulumi.Bool(true),
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
/// resource "azure-native_monitor_scheduledqueryrule" "scheduledQueryRule" {
///   actions = {
///     action_groups = ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"]
///     action_properties = {
///       "Icm.Title" = "Custom title in ICM"
///       "Icm.TsgId" = "https://tsg.url"
///     }
///     custom_properties = {
///       "key11" = "value11"
///       "key12" = "value12"
///     }
///   }
///   auto_mitigate                             = false
///   check_workspace_alerts_storage_configured = true
///   criteria = {
///     all_of = [{
///       "query" = "Perf | where ObjectName == \"Processor\""
///     }]
///   }
///   description           = "Performance rule"
///   enabled               = true
///   kind                  = "SimpleLogAlert"
///   location              = "eastus"
///   resource_group_name   = "QueryResourceGroupName"
///   rule_name             = "perf"
///   scopes                = ["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"]
///   severity              = 4
///   skip_query_validation = true
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
/// import com.pulumi.azurenative.monitor.ScheduledQueryRule;
/// import com.pulumi.azurenative.monitor.ScheduledQueryRuleArgs;
/// import com.pulumi.azurenative.monitor.inputs.ActionsArgs;
/// import com.pulumi.azurenative.monitor.inputs.ScheduledQueryRuleCriteriaArgs;
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
///         var scheduledQueryRule = new ScheduledQueryRule("scheduledQueryRule", ScheduledQueryRuleArgs.builder()
///             .actions(ActionsArgs.builder()
///                 .actionGroups("/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup")
///                 .actionProperties(Map.ofEntries(
///                     Map.entry("Icm.Title", "Custom title in ICM"),
///                     Map.entry("Icm.TsgId", "https://tsg.url")
///                 ))
///                 .customProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .autoMitigate(false)
///             .checkWorkspaceAlertsStorageConfigured(true)
///             .criteria(ScheduledQueryRuleCriteriaArgs.builder()
///                 .allOf(ConditionArgs.builder()
///                     .query("Perf | where ObjectName == \"Processor\"")
///                     .build())
///                 .build())
///             .description("Performance rule")
///             .enabled(true)
///             .kind("SimpleLogAlert")
///             .location("eastus")
///             .resourceGroupName("QueryResourceGroupName")
///             .ruleName("perf")
///             .scopes("/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1")
///             .severity(4.0)
///             .skipQueryValidation(true)
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
/// const scheduledQueryRule = new azure_native.monitor.ScheduledQueryRule("scheduledQueryRule", {
///     actions: {
///         actionGroups: ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"],
///         actionProperties: {
///             "Icm.Title": "Custom title in ICM",
///             "Icm.TsgId": "https://tsg.url",
///         },
///         customProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     },
///     autoMitigate: false,
///     checkWorkspaceAlertsStorageConfigured: true,
///     criteria: {
///         allOf: [{
///             query: "Perf | where ObjectName == \"Processor\"",
///         }],
///     },
///     description: "Performance rule",
///     enabled: true,
///     kind: azure_native.monitor.Kind.SimpleLogAlert,
///     location: "eastus",
///     resourceGroupName: "QueryResourceGroupName",
///     ruleName: "perf",
///     scopes: ["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"],
///     severity: 4,
///     skipQueryValidation: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_query_rule = azure_native.monitor.ScheduledQueryRule("scheduledQueryRule",
///     actions={
///         "action_groups": ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"],
///         "action_properties": {
///             "Icm.Title": "Custom title in ICM",
///             "Icm.TsgId": "https://tsg.url",
///         },
///         "custom_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     },
///     auto_mitigate=False,
///     check_workspace_alerts_storage_configured=True,
///     criteria={
///         "all_of": [{
///             "query": "Perf | where ObjectName == \"Processor\"",
///         }],
///     },
///     description="Performance rule",
///     enabled=True,
///     kind=azure_native.monitor.Kind.SIMPLE_LOG_ALERT,
///     location="eastus",
///     resource_group_name="QueryResourceGroupName",
///     rule_name="perf",
///     scopes=["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"],
///     severity=float(4),
///     skip_query_validation=True)
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledQueryRule:
///     type: azure-native:monitor:ScheduledQueryRule
///     properties:
///       actions:
///         actionGroups:
///           - /subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup
///         actionProperties:
///           Icm.Title: Custom title in ICM
///           Icm.TsgId: https://tsg.url
///         customProperties:
///           key11: value11
///           key12: value12
///       autoMitigate: false
///       checkWorkspaceAlertsStorageConfigured: true
///       criteria:
///         allOf:
///           - query: Perf | where ObjectName == "Processor"
///       description: Performance rule
///       enabled: true
///       kind: SimpleLogAlert
///       location: eastus
///       resourceGroupName: QueryResourceGroupName
///       ruleName: perf
///       scopes:
///         - /subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1
///       severity: 4
///       skipQueryValidation: true
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### create or update dynamic threshold scheduled query rule on Subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var scheduledQueryRule = new AzureNative.Monitor.ScheduledQueryRule("scheduledQueryRule", new()
///     {
///         Actions = new AzureNative.Monitor.Inputs.ActionsArgs
///         {
///             ActionGroups = new[]
///             {
///                 "/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup",
///             },
///             ActionProperties =
///             {
///                 { "Icm.Title", "Custom title in ICM" },
///                 { "Icm.TsgId", "https://tsg.url" },
///             },
///             CustomProperties =
///             {
///                 { "key11", "value11" },
///                 { "key12", "value12" },
///             },
///         },
///         CheckWorkspaceAlertsStorageConfigured = true,
///         Criteria = new AzureNative.Monitor.Inputs.ScheduledQueryRuleCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.ConditionArgs
///                 {
///                     AlertSensitivity = "Medium",
///                     CriterionType = AzureNative.Monitor.CriterionType.DynamicThresholdCriterion,
///                     Dimensions = new[]
///                     {
///                         new AzureNative.Monitor.Inputs.DimensionArgs
///                         {
///                             Name = "ComputerIp",
///                             Operator = AzureNative.Monitor.DimensionOperator.Exclude,
///                             Values = new[]
///                             {
///                                 "192.168.1.1",
///                             },
///                         },
///                         new AzureNative.Monitor.Inputs.DimensionArgs
///                         {
///                             Name = "OSType",
///                             Operator = AzureNative.Monitor.DimensionOperator.Include,
///                             Values = new[]
///                             {
///                                 "*",
///                             },
///                         },
///                     },
///                     IgnoreDataBefore = "2024-06-01T21:00:00.000Z",
///                     MetricMeasureColumn = "% Processor Time",
///                     Operator = "GreaterOrLessThan",
///                     Query = "Perf | where ObjectName == \"Processor\"",
///                     ResourceIdColumn = "resourceId",
///                     TimeAggregation = AzureNative.Monitor.TimeAggregation.Average,
///                 },
///             },
///         },
///         Description = "Performance rule",
///         Enabled = true,
///         EvaluationFrequency = "PT5M",
///         Location = "eastus",
///         MuteActionsDuration = "PT30M",
///         ResourceGroupName = "QueryResourceGroupName",
///         RuleName = "perf",
///         Scopes = new[]
///         {
///             "/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1",
///         },
///         Severity = 4,
///         SkipQueryValidation = true,
///         WindowSize = "PT10M",
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
/// 		_, err := monitor.NewScheduledQueryRule(ctx, "scheduledQueryRule", &monitor.ScheduledQueryRuleArgs{
/// 			Actions: &monitor.ActionsArgs{
/// 				ActionGroups: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"),
/// 				},
/// 				ActionProperties: pulumi.StringMap{
/// 					"Icm.Title": pulumi.String("Custom title in ICM"),
/// 					"Icm.TsgId": pulumi.String("https://tsg.url"),
/// 				},
/// 				CustomProperties: pulumi.StringMap{
/// 					"key11": pulumi.String("value11"),
/// 					"key12": pulumi.String("value12"),
/// 				},
/// 			},
/// 			CheckWorkspaceAlertsStorageConfigured: pulumi.Bool(true),
/// 			Criteria: &monitor.ScheduledQueryRuleCriteriaArgs{
/// 				AllOf: monitor.ConditionArray{
/// 					&monitor.ConditionArgs{
/// 						AlertSensitivity: pulumi.String("Medium"),
/// 						CriterionType:    pulumi.String(monitor.CriterionTypeDynamicThresholdCriterion),
/// 						Dimensions: monitor.DimensionArray{
/// 							&monitor.DimensionArgs{
/// 								Name:     pulumi.String("ComputerIp"),
/// 								Operator: pulumi.String(monitor.DimensionOperatorExclude),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("192.168.1.1"),
/// 								},
/// 							},
/// 							&monitor.DimensionArgs{
/// 								Name:     pulumi.String("OSType"),
/// 								Operator: pulumi.String(monitor.DimensionOperatorInclude),
/// 								Values: pulumi.StringArray{
/// 									pulumi.String("*"),
/// 								},
/// 							},
/// 						},
/// 						IgnoreDataBefore:    pulumi.String("2024-06-01T21:00:00.000Z"),
/// 						MetricMeasureColumn: pulumi.String("% Processor Time"),
/// 						Operator:            pulumi.String("GreaterOrLessThan"),
/// 						Query:               pulumi.String("Perf | where ObjectName == \"Processor\""),
/// 						ResourceIdColumn:    pulumi.String("resourceId"),
/// 						TimeAggregation:     pulumi.String(monitor.TimeAggregationAverage),
/// 					},
/// 				},
/// 			},
/// 			Description:         pulumi.String("Performance rule"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT5M"),
/// 			Location:            pulumi.String("eastus"),
/// 			MuteActionsDuration: pulumi.String("PT30M"),
/// 			ResourceGroupName:   pulumi.String("QueryResourceGroupName"),
/// 			RuleName:            pulumi.String("perf"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"),
/// 			},
/// 			Severity:            pulumi.Float64(4),
/// 			SkipQueryValidation: pulumi.Bool(true),
/// 			WindowSize:          pulumi.String("PT10M"),
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
/// resource "azure-native_monitor_scheduledqueryrule" "scheduledQueryRule" {
///   actions = {
///     action_groups = ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"]
///     action_properties = {
///       "Icm.Title" = "Custom title in ICM"
///       "Icm.TsgId" = "https://tsg.url"
///     }
///     custom_properties = {
///       "key11" = "value11"
///       "key12" = "value12"
///     }
///   }
///   check_workspace_alerts_storage_configured = true
///   criteria = {
///     all_of = [{
///       "alertSensitivity" = "Medium"
///       "criterionType"    = "DynamicThresholdCriterion"
///       "dimensions" = [{
///         "name"     = "ComputerIp"
///         "operator" = "Exclude"
///         "values"   = ["192.168.1.1"]
///         }, {
///         "name"     = "OSType"
///         "operator" = "Include"
///         "values"   = ["*"]
///       }]
///       "ignoreDataBefore"    = "2024-06-01T21:00:00.000Z"
///       "metricMeasureColumn" = "% Processor Time"
///       "operator"            = "GreaterOrLessThan"
///       "query"               = "Perf | where ObjectName == \"Processor\""
///       "resourceIdColumn"    = "resourceId"
///       "timeAggregation"     = "Average"
///     }]
///   }
///   description           = "Performance rule"
///   enabled               = true
///   evaluation_frequency  = "PT5M"
///   location              = "eastus"
///   mute_actions_duration = "PT30M"
///   resource_group_name   = "QueryResourceGroupName"
///   rule_name             = "perf"
///   scopes                = ["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"]
///   severity              = 4
///   skip_query_validation = true
///   window_size           = "PT10M"
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
/// import com.pulumi.azurenative.monitor.ScheduledQueryRule;
/// import com.pulumi.azurenative.monitor.ScheduledQueryRuleArgs;
/// import com.pulumi.azurenative.monitor.inputs.ActionsArgs;
/// import com.pulumi.azurenative.monitor.inputs.ScheduledQueryRuleCriteriaArgs;
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
///         var scheduledQueryRule = new ScheduledQueryRule("scheduledQueryRule", ScheduledQueryRuleArgs.builder()
///             .actions(ActionsArgs.builder()
///                 .actionGroups("/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup")
///                 .actionProperties(Map.ofEntries(
///                     Map.entry("Icm.Title", "Custom title in ICM"),
///                     Map.entry("Icm.TsgId", "https://tsg.url")
///                 ))
///                 .customProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .checkWorkspaceAlertsStorageConfigured(true)
///             .criteria(ScheduledQueryRuleCriteriaArgs.builder()
///                 .allOf(ConditionArgs.builder()
///                     .alertSensitivity("Medium")
///                     .criterionType("DynamicThresholdCriterion")
///                     .dimensions(
///                         DimensionArgs.builder()
///                             .name("ComputerIp")
///                             .operator("Exclude")
///                             .values("192.168.1.1")
///                             .build(),
///                         DimensionArgs.builder()
///                             .name("OSType")
///                             .operator("Include")
///                             .values("*")
///                             .build())
///                     .ignoreDataBefore("2024-06-01T21:00:00.000Z")
///                     .metricMeasureColumn("% Processor Time")
///                     .operator("GreaterOrLessThan")
///                     .query("Perf | where ObjectName == \"Processor\"")
///                     .resourceIdColumn("resourceId")
///                     .timeAggregation("Average")
///                     .build())
///                 .build())
///             .description("Performance rule")
///             .enabled(true)
///             .evaluationFrequency("PT5M")
///             .location("eastus")
///             .muteActionsDuration("PT30M")
///             .resourceGroupName("QueryResourceGroupName")
///             .ruleName("perf")
///             .scopes("/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1")
///             .severity(4.0)
///             .skipQueryValidation(true)
///             .windowSize("PT10M")
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
/// const scheduledQueryRule = new azure_native.monitor.ScheduledQueryRule("scheduledQueryRule", {
///     actions: {
///         actionGroups: ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"],
///         actionProperties: {
///             "Icm.Title": "Custom title in ICM",
///             "Icm.TsgId": "https://tsg.url",
///         },
///         customProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     },
///     checkWorkspaceAlertsStorageConfigured: true,
///     criteria: {
///         allOf: [{
///             alertSensitivity: "Medium",
///             criterionType: azure_native.monitor.CriterionType.DynamicThresholdCriterion,
///             dimensions: [
///                 {
///                     name: "ComputerIp",
///                     operator: azure_native.monitor.DimensionOperator.Exclude,
///                     values: ["192.168.1.1"],
///                 },
///                 {
///                     name: "OSType",
///                     operator: azure_native.monitor.DimensionOperator.Include,
///                     values: ["*"],
///                 },
///             ],
///             ignoreDataBefore: "2024-06-01T21:00:00.000Z",
///             metricMeasureColumn: "% Processor Time",
///             operator: "GreaterOrLessThan",
///             query: "Perf | where ObjectName == \"Processor\"",
///             resourceIdColumn: "resourceId",
///             timeAggregation: azure_native.monitor.TimeAggregation.Average,
///         }],
///     },
///     description: "Performance rule",
///     enabled: true,
///     evaluationFrequency: "PT5M",
///     location: "eastus",
///     muteActionsDuration: "PT30M",
///     resourceGroupName: "QueryResourceGroupName",
///     ruleName: "perf",
///     scopes: ["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"],
///     severity: 4,
///     skipQueryValidation: true,
///     windowSize: "PT10M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// scheduled_query_rule = azure_native.monitor.ScheduledQueryRule("scheduledQueryRule",
///     actions={
///         "action_groups": ["/subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup"],
///         "action_properties": {
///             "Icm.Title": "Custom title in ICM",
///             "Icm.TsgId": "https://tsg.url",
///         },
///         "custom_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     },
///     check_workspace_alerts_storage_configured=True,
///     criteria={
///         "all_of": [{
///             "alert_sensitivity": "Medium",
///             "criterion_type": azure_native.monitor.CriterionType.DYNAMIC_THRESHOLD_CRITERION,
///             "dimensions": [
///                 {
///                     "name": "ComputerIp",
///                     "operator": azure_native.monitor.DimensionOperator.EXCLUDE,
///                     "values": ["192.168.1.1"],
///                 },
///                 {
///                     "name": "OSType",
///                     "operator": azure_native.monitor.DimensionOperator.INCLUDE,
///                     "values": ["*"],
///                 },
///             ],
///             "ignore_data_before": "2024-06-01T21:00:00.000Z",
///             "metric_measure_column": "% Processor Time",
///             "operator": "GreaterOrLessThan",
///             "query": "Perf | where ObjectName == \"Processor\"",
///             "resource_id_column": "resourceId",
///             "time_aggregation": azure_native.monitor.TimeAggregation.AVERAGE,
///         }],
///     },
///     description="Performance rule",
///     enabled=True,
///     evaluation_frequency="PT5M",
///     location="eastus",
///     mute_actions_duration="PT30M",
///     resource_group_name="QueryResourceGroupName",
///     rule_name="perf",
///     scopes=["/subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1"],
///     severity=float(4),
///     skip_query_validation=True,
///     window_size="PT10M")
///
/// ```
///
/// ```yaml
/// resources:
///   scheduledQueryRule:
///     type: azure-native:monitor:ScheduledQueryRule
///     properties:
///       actions:
///         actionGroups:
///           - /subscriptions/1cf177ed-1330-4692-80ea-fd3d7783b147/resourcegroups/sqrapi/providers/microsoft.insights/actiongroups/myactiongroup
///         actionProperties:
///           Icm.Title: Custom title in ICM
///           Icm.TsgId: https://tsg.url
///         customProperties:
///           key11: value11
///           key12: value12
///       checkWorkspaceAlertsStorageConfigured: true
///       criteria:
///         allOf:
///           - alertSensitivity: Medium
///             criterionType: DynamicThresholdCriterion
///             dimensions:
///               - name: ComputerIp
///                 operator: Exclude
///                 values:
///                   - 192.168.1.1
///               - name: OSType
///                 operator: Include
///                 values:
///                   - '*'
///             ignoreDataBefore: 2024-06-01T21:00:00.000Z
///             metricMeasureColumn: '% Processor Time'
///             operator: GreaterOrLessThan
///             query: Perf | where ObjectName == "Processor"
///             resourceIdColumn: resourceId
///             timeAggregation: Average
///       description: Performance rule
///       enabled: true
///       evaluationFrequency: PT5M
///       location: eastus
///       muteActionsDuration: PT30M
///       resourceGroupName: QueryResourceGroupName
///       ruleName: perf
///       scopes:
///         - /subscriptions/aaf177ed-1330-a9f2-80ea-fd3d7783b147/resourceGroups/scopeResourceGroup1/providers/Microsoft.Compute/virtualMachines/vm1
///       severity: 4
///       skipQueryValidation: true
///       windowSize: PT10M
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
/// $ pulumi import azure-native:monitor:ScheduledQueryRule perf /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/scheduledQueryRules/{ruleName}
/// ```
class ScheduledQueryRule extends pulumi.CustomResource {
  /// Actions to invoke when the alert fires.
  late final pulumi.Output<ActionsResponse?> actions;
  /// The flag that indicates whether the alert should be automatically resolved or not. The default is true. Relevant only for rules of kinds LogAlert and SimpleLogAlert.
  late final pulumi.Output<bool?> autoMitigate;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The flag which indicates whether this scheduled query rule should be stored in the customer's storage. The default is false. Relevant only for rules of the kind LogAlert.
  late final pulumi.Output<bool?> checkWorkspaceAlertsStorageConfigured;
  /// The api-version used when creating this alert rule
  late final pulumi.Output<String> createdWithApiVersion;
  /// The rule criteria that defines the conditions of the scheduled query rule.
  late final pulumi.Output<ScheduledQueryRuleCriteriaResponse?> criteria;
  /// The description of the scheduled query rule.
  late final pulumi.Output<String?> description;
  /// The display name of the alert rule
  late final pulumi.Output<String?> displayName;
  /// The flag which indicates whether this scheduled query rule is enabled. Value should be true or false
  late final pulumi.Output<bool?> enabled;
  /// "If etag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.")
  late final pulumi.Output<String> etag;
  /// How often the scheduled query rule is evaluated represented in ISO 8601 duration format. Relevant and required only for rules of the kind LogAlert.
  late final pulumi.Output<String?> evaluationFrequency;
  /// The identity of the resource.
  late final pulumi.Output<IdentityResponse?> identity;
  /// True if alert rule is legacy Log Analytic rule
  late final pulumi.Output<bool> isLegacyLogAnalyticsRule;
  /// The flag which indicates whether this scheduled query rule has been configured to be stored in the customer's storage. The default is false.
  late final pulumi.Output<bool> isWorkspaceAlertsStorageConfigured;
  /// Indicates the type of scheduled query rule. The default is LogAlert.
  late final pulumi.Output<String?> kind;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Mute actions for the chosen period of time (in ISO 8601 duration format) after the alert is fired. Relevant only for rules of the kind LogAlert.
  late final pulumi.Output<String?> muteActionsDuration;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// If specified then overrides the query time range (default is WindowSize*NumberOfEvaluationPeriods). Relevant only for rules of the kind LogAlert.
  late final pulumi.Output<String?> overrideQueryTimeRange;
  /// Defines the configuration for resolving fired alerts. Relevant only for rules of kinds LogAlert and SimpleLogAlert.
  late final pulumi.Output<RuleResolveConfigurationResponse?> resolveConfiguration;
  /// The list of resource id's that this scheduled query rule is scoped to.
  late final pulumi.Output<List<String>?> scopes;
  /// Severity of the alert. Should be an integer between [0-4]. Value of 0 is severest. Relevant and required only for rules of the kind LogAlert.
  late final pulumi.Output<double?> severity;
  /// The flag which indicates whether the provided query should be validated or not. The default is false. Relevant only for rules of the kind LogAlert.
  late final pulumi.Output<bool?> skipQueryValidation;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// List of resource type of the target resource(s) on which the alert is created/updated. For example if the scope is a resource group and targetResourceTypes is Microsoft.Compute/virtualMachines, then a different alert will be fired for each virtual machine in the resource group which meet the alert criteria. Relevant only for rules of the kind LogAlert
  late final pulumi.Output<List<String>?> targetResourceTypes;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// The period of time (in ISO 8601 duration format) on which the Alert query will be executed (bin size). Relevant and required only for rules of the kind LogAlert.
  late final pulumi.Output<String?> windowSize;

  /// Creates a new [ScheduledQueryRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ScheduledQueryRule]. {@macro pulumi_monitor_scheduled_query_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ScheduledQueryRule(
    String name, {
    ScheduledQueryRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:ScheduledQueryRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<ActionsResponse?>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoMitigate = registerOutput<bool?>('autoMitigate');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    checkWorkspaceAlertsStorageConfigured = registerOutput<bool?>('checkWorkspaceAlertsStorageConfigured');
    createdWithApiVersion = registerOutput<String>('createdWithApiVersion');
    criteria = registerOutput<ScheduledQueryRuleCriteriaResponse?>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduledQueryRuleCriteriaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    etag = registerOutput<String>('etag');
    evaluationFrequency = registerOutput<String?>('evaluationFrequency');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isLegacyLogAnalyticsRule = registerOutput<bool>('isLegacyLogAnalyticsRule');
    isWorkspaceAlertsStorageConfigured = registerOutput<bool>('isWorkspaceAlertsStorageConfigured');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    muteActionsDuration = registerOutput<String?>('muteActionsDuration');
    this.name = registerOutput<String>('name');
    overrideQueryTimeRange = registerOutput<String?>('overrideQueryTimeRange');
    resolveConfiguration = registerOutput<RuleResolveConfigurationResponse?>('resolveConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleResolveConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scopes = registerOutput<List<String>?>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    severity = registerOutput<double?>('severity');
    skipQueryValidation = registerOutput<bool?>('skipQueryValidation');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetResourceTypes = registerOutput<List<String>?>('targetResourceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String>('type');
    windowSize = registerOutput<String?>('windowSize');
  }

  /// Creates a typed reference to an existing [ScheduledQueryRule] resource.
  ScheduledQueryRule.reference(String urn)
    : super(
        'azure-native:monitor:ScheduledQueryRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    actions = registerOutput<ActionsResponse?>('actions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ActionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoMitigate = registerOutput<bool?>('autoMitigate');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    checkWorkspaceAlertsStorageConfigured = registerOutput<bool?>('checkWorkspaceAlertsStorageConfigured');
    createdWithApiVersion = registerOutput<String>('createdWithApiVersion');
    criteria = registerOutput<ScheduledQueryRuleCriteriaResponse?>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ScheduledQueryRuleCriteriaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    enabled = registerOutput<bool?>('enabled');
    etag = registerOutput<String>('etag');
    evaluationFrequency = registerOutput<String?>('evaluationFrequency');
    identity = registerOutput<IdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isLegacyLogAnalyticsRule = registerOutput<bool>('isLegacyLogAnalyticsRule');
    isWorkspaceAlertsStorageConfigured = registerOutput<bool>('isWorkspaceAlertsStorageConfigured');
    kind = registerOutput<String?>('kind');
    location = registerOutput<String>('location');
    muteActionsDuration = registerOutput<String?>('muteActionsDuration');
    this.name = registerOutput<String>('name');
    overrideQueryTimeRange = registerOutput<String?>('overrideQueryTimeRange');
    resolveConfiguration = registerOutput<RuleResolveConfigurationResponse?>('resolveConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuleResolveConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scopes = registerOutput<List<String>?>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    severity = registerOutput<double?>('severity');
    skipQueryValidation = registerOutput<bool?>('skipQueryValidation');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetResourceTypes = registerOutput<List<String>?>('targetResourceTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    type = registerOutput<String>('type');
    windowSize = registerOutput<String?>('windowSize');
  }
}
