import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alert_args.dart';
import 'metric_alert_multiple_resource_multiple_metric_criteria_response.dart';

/// The metric alert resource.
///
/// Uses Azure REST API version 2018-03-01.
///
/// Other available API versions: 2024-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native monitor [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a dynamic alert rule for Multiple Resources
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metricAlert = new AzureNative.Monitor.MetricAlert("metricAlert", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Monitor.Inputs.MetricAlertActionArgs
///             {
///                 ActionGroupId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///                 WebHookProperties =
///                 {
///                     { "key11", "value11" },
///                     { "key12", "value12" },
///                 },
///             },
///         },
///         AutoMitigate = true,
///         Criteria = new AzureNative.Monitor.Inputs.MetricAlertMultipleResourceMultipleMetricCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.DynamicMetricCriteriaArgs
///                 {
///                     AlertSensitivity = AzureNative.Monitor.DynamicThresholdSensitivity.Medium,
///                     CriterionType = "DynamicThresholdCriterion",
///                     Dimensions = new() { },
///                     FailingPeriods = new AzureNative.Monitor.Inputs.DynamicThresholdFailingPeriodsArgs
///                     {
///                         MinFailingPeriodsToAlert = 4,
///                         NumberOfEvaluationPeriods = 4,
///                     },
///                     MetricName = "Percentage CPU",
///                     MetricNamespace = "microsoft.compute/virtualmachines",
///                     Name = "High_CPU_80",
///                     Operator = AzureNative.Monitor.DynamicThresholdOperator.GreaterOrLessThan,
///                     TimeAggregation = AzureNative.Monitor.AggregationTypeEnum.Average,
///                 },
///             },
///             OdataType = "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///         },
///         Description = "This is the description of the rule1",
///         Enabled = true,
///         EvaluationFrequency = "PT1M",
///         Location = "global",
///         ResourceGroupName = "gigtest",
///         RuleName = "MetricAlertOnMultipleResources",
///         Scopes = new[]
///         {
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1",
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2",
///         },
///         Severity = 3,
///         Tags = null,
///         TargetResourceRegion = "southcentralus",
///         TargetResourceType = "Microsoft.Compute/virtualMachines",
///         WindowSize = "PT15M",
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
/// 		_, err := monitor.NewMetricAlert(ctx, "metricAlert", &monitor.MetricAlertArgs{
/// 			Actions: monitor.MetricAlertActionArray{
/// 				&monitor.MetricAlertActionArgs{
/// 					ActionGroupId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2"),
/// 					WebHookProperties: pulumi.StringMap{
/// 						"key11": pulumi.String("value11"),
/// 						"key12": pulumi.String("value12"),
/// 					},
/// 				},
/// 			},
/// 			AutoMitigate: pulumi.Bool(true),
/// 			Criteria: &monitor.MetricAlertMultipleResourceMultipleMetricCriteriaArgs{
/// 				AllOf: pulumi.Array{
/// 					monitor.DynamicMetricCriteria{
/// 						AlertSensitivity: monitor.DynamicThresholdSensitivityMedium,
/// 						CriterionType:    "DynamicThresholdCriterion",
/// 						Dimensions:       []monitor.MetricDimension{},
/// 						FailingPeriods: monitor.DynamicThresholdFailingPeriods{
/// 							MinFailingPeriodsToAlert:  4,
/// 							NumberOfEvaluationPeriods: 4,
/// 						},
/// 						MetricName:      "Percentage CPU",
/// 						MetricNamespace: "microsoft.compute/virtualmachines",
/// 						Name:            "High_CPU_80",
/// 						Operator:        monitor.DynamicThresholdOperatorGreaterOrLessThan,
/// 						TimeAggregation: monitor.AggregationTypeEnumAverage,
/// 					},
/// 				},
/// 				OdataType: pulumi.String("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria"),
/// 			},
/// 			Description:         pulumi.String("This is the description of the rule1"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT1M"),
/// 			Location:            pulumi.String("global"),
/// 			ResourceGroupName:   pulumi.String("gigtest"),
/// 			RuleName:            pulumi.String("MetricAlertOnMultipleResources"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1"),
/// 				pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2"),
/// 			},
/// 			Severity:             pulumi.Int(3),
/// 			Tags:                 pulumi.StringMap{},
/// 			TargetResourceRegion: pulumi.String("southcentralus"),
/// 			TargetResourceType:   pulumi.String("Microsoft.Compute/virtualMachines"),
/// 			WindowSize:           pulumi.String("PT15M"),
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
/// import com.pulumi.azurenative.monitor.MetricAlert;
/// import com.pulumi.azurenative.monitor.MetricAlertArgs;
/// import com.pulumi.azurenative.monitor.inputs.MetricAlertActionArgs;
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
///         var metricAlert = new MetricAlert("metricAlert", MetricAlertArgs.builder()
///             .actions(MetricAlertActionArgs.builder()
///                 .actionGroupId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2")
///                 .webHookProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .autoMitigate(true)
///             .criteria(MetricAlertMultipleResourceMultipleMetricCriteriaArgs.builder()
///                 .allOf(DynamicMetricCriteriaArgs.builder()
///                     .alertSensitivity("Medium")
///                     .criterionType("DynamicThresholdCriterion")
///                     .dimensions()
///                     .failingPeriods(DynamicThresholdFailingPeriodsArgs.builder()
///                         .minFailingPeriodsToAlert(4)
///                         .numberOfEvaluationPeriods(4)
///                         .build())
///                     .metricName("Percentage CPU")
///                     .metricNamespace("microsoft.compute/virtualmachines")
///                     .name("High_CPU_80")
///                     .operator("GreaterOrLessThan")
///                     .timeAggregation("Average")
///                     .build())
///                 .odataType("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria")
///                 .build())
///             .description("This is the description of the rule1")
///             .enabled(true)
///             .evaluationFrequency("PT1M")
///             .location("global")
///             .resourceGroupName("gigtest")
///             .ruleName("MetricAlertOnMultipleResources")
///             .scopes(
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1",
///                 "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2")
///             .severity(3)
///             .tags(Map.ofEntries(
///             ))
///             .targetResourceRegion("southcentralus")
///             .targetResourceType("Microsoft.Compute/virtualMachines")
///             .windowSize("PT15M")
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
/// const metricAlert = new azure_native.monitor.MetricAlert("metricAlert", {
///     actions: [{
///         actionGroupId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         webHookProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     }],
///     autoMitigate: true,
///     criteria: {
///         allOf: [{
///             alertSensitivity: azure_native.monitor.DynamicThresholdSensitivity.Medium,
///             criterionType: "DynamicThresholdCriterion",
///             dimensions: [],
///             failingPeriods: {
///                 minFailingPeriodsToAlert: 4,
///                 numberOfEvaluationPeriods: 4,
///             },
///             metricName: "Percentage CPU",
///             metricNamespace: "microsoft.compute/virtualmachines",
///             name: "High_CPU_80",
///             operator: azure_native.monitor.DynamicThresholdOperator.GreaterOrLessThan,
///             timeAggregation: azure_native.monitor.AggregationTypeEnum.Average,
///         }],
///         odataType: "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description: "This is the description of the rule1",
///     enabled: true,
///     evaluationFrequency: "PT1M",
///     location: "global",
///     resourceGroupName: "gigtest",
///     ruleName: "MetricAlertOnMultipleResources",
///     scopes: [
///         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1",
///         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2",
///     ],
///     severity: 3,
///     tags: {},
///     targetResourceRegion: "southcentralus",
///     targetResourceType: "Microsoft.Compute/virtualMachines",
///     windowSize: "PT15M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metric_alert = azure_native.monitor.MetricAlert("metricAlert",
///     actions=[{
///         "action_group_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         "web_hook_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     }],
///     auto_mitigate=True,
///     criteria={
///         "all_of": [{
///             "alert_sensitivity": azure_native.monitor.DynamicThresholdSensitivity.MEDIUM,
///             "criterion_type": "DynamicThresholdCriterion",
///             "dimensions": [],
///             "failing_periods": {
///                 "min_failing_periods_to_alert": 4,
///                 "number_of_evaluation_periods": 4,
///             },
///             "metric_name": "Percentage CPU",
///             "metric_namespace": "microsoft.compute/virtualmachines",
///             "name": "High_CPU_80",
///             "operator": azure_native.monitor.DynamicThresholdOperator.GREATER_OR_LESS_THAN,
///             "time_aggregation": azure_native.monitor.AggregationTypeEnum.AVERAGE,
///         }],
///         "odata_type": "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description="This is the description of the rule1",
///     enabled=True,
///     evaluation_frequency="PT1M",
///     location="global",
///     resource_group_name="gigtest",
///     rule_name="MetricAlertOnMultipleResources",
///     scopes=[
///         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1",
///         "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2",
///     ],
///     severity=3,
///     tags={},
///     target_resource_region="southcentralus",
///     target_resource_type="Microsoft.Compute/virtualMachines",
///     window_size="PT15M")
///
/// ```
///
/// ```yaml
/// resources:
///   metricAlert:
///     type: azure-native:monitor:MetricAlert
///     properties:
///       actions:
///         - actionGroupId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2
///           webHookProperties:
///             key11: value11
///             key12: value12
///       autoMitigate: true
///       criteria:
///         allOf:
///           - alertSensitivity: Medium
///             criterionType: DynamicThresholdCriterion
///             dimensions: []
///             failingPeriods:
///               minFailingPeriodsToAlert: 4
///               numberOfEvaluationPeriods: 4
///             metricName: Percentage CPU
///             metricNamespace: microsoft.compute/virtualmachines
///             name: High_CPU_80
///             operator: GreaterOrLessThan
///             timeAggregation: Average
///         odataType: Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria
///       description: This is the description of the rule1
///       enabled: true
///       evaluationFrequency: PT1M
///       location: global
///       resourceGroupName: gigtest
///       ruleName: MetricAlertOnMultipleResources
///       scopes:
///         - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1
///         - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2
///       severity: 3
///       tags: {}
///       targetResourceRegion: southcentralus
///       targetResourceType: Microsoft.Compute/virtualMachines
///       windowSize: PT15M
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a dynamic alert rule for Single Resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metricAlert = new AzureNative.Monitor.MetricAlert("metricAlert", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Monitor.Inputs.MetricAlertActionArgs
///             {
///                 ActionGroupId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///                 WebHookProperties =
///                 {
///                     { "key11", "value11" },
///                     { "key12", "value12" },
///                 },
///             },
///         },
///         AutoMitigate = true,
///         Criteria = new AzureNative.Monitor.Inputs.MetricAlertMultipleResourceMultipleMetricCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.DynamicMetricCriteriaArgs
///                 {
///                     AlertSensitivity = AzureNative.Monitor.DynamicThresholdSensitivity.Medium,
///                     CriterionType = "DynamicThresholdCriterion",
///                     Dimensions = new() { },
///                     FailingPeriods = new AzureNative.Monitor.Inputs.DynamicThresholdFailingPeriodsArgs
///                     {
///                         MinFailingPeriodsToAlert = 4,
///                         NumberOfEvaluationPeriods = 4,
///                     },
///                     IgnoreDataBefore = "2019-04-04T21:00:00.000Z",
///                     MetricName = "Percentage CPU",
///                     MetricNamespace = "microsoft.compute/virtualmachines",
///                     Name = "High_CPU_80",
///                     Operator = AzureNative.Monitor.DynamicThresholdOperator.GreaterOrLessThan,
///                     TimeAggregation = AzureNative.Monitor.AggregationTypeEnum.Average,
///                 },
///             },
///             OdataType = "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///         },
///         Description = "This is the description of the rule1",
///         Enabled = true,
///         EvaluationFrequency = "PT1M",
///         Location = "global",
///         ResourceGroupName = "gigtest",
///         RuleName = "chiricutin",
///         Scopes = new[]
///         {
///             "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme",
///         },
///         Severity = 3,
///         Tags = null,
///         WindowSize = "PT15M",
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
/// 		_, err := monitor.NewMetricAlert(ctx, "metricAlert", &monitor.MetricAlertArgs{
/// 			Actions: monitor.MetricAlertActionArray{
/// 				&monitor.MetricAlertActionArgs{
/// 					ActionGroupId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2"),
/// 					WebHookProperties: pulumi.StringMap{
/// 						"key11": pulumi.String("value11"),
/// 						"key12": pulumi.String("value12"),
/// 					},
/// 				},
/// 			},
/// 			AutoMitigate: pulumi.Bool(true),
/// 			Criteria: &monitor.MetricAlertMultipleResourceMultipleMetricCriteriaArgs{
/// 				AllOf: pulumi.Array{
/// 					monitor.DynamicMetricCriteria{
/// 						AlertSensitivity: monitor.DynamicThresholdSensitivityMedium,
/// 						CriterionType:    "DynamicThresholdCriterion",
/// 						Dimensions:       []monitor.MetricDimension{},
/// 						FailingPeriods: monitor.DynamicThresholdFailingPeriods{
/// 							MinFailingPeriodsToAlert:  4,
/// 							NumberOfEvaluationPeriods: 4,
/// 						},
/// 						IgnoreDataBefore: "2019-04-04T21:00:00.000Z",
/// 						MetricName:       "Percentage CPU",
/// 						MetricNamespace:  "microsoft.compute/virtualmachines",
/// 						Name:             "High_CPU_80",
/// 						Operator:         monitor.DynamicThresholdOperatorGreaterOrLessThan,
/// 						TimeAggregation:  monitor.AggregationTypeEnumAverage,
/// 					},
/// 				},
/// 				OdataType: pulumi.String("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria"),
/// 			},
/// 			Description:         pulumi.String("This is the description of the rule1"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT1M"),
/// 			Location:            pulumi.String("global"),
/// 			ResourceGroupName:   pulumi.String("gigtest"),
/// 			RuleName:            pulumi.String("chiricutin"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme"),
/// 			},
/// 			Severity:   pulumi.Int(3),
/// 			Tags:       pulumi.StringMap{},
/// 			WindowSize: pulumi.String("PT15M"),
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
/// import com.pulumi.azurenative.monitor.MetricAlert;
/// import com.pulumi.azurenative.monitor.MetricAlertArgs;
/// import com.pulumi.azurenative.monitor.inputs.MetricAlertActionArgs;
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
///         var metricAlert = new MetricAlert("metricAlert", MetricAlertArgs.builder()
///             .actions(MetricAlertActionArgs.builder()
///                 .actionGroupId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2")
///                 .webHookProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .autoMitigate(true)
///             .criteria(MetricAlertMultipleResourceMultipleMetricCriteriaArgs.builder()
///                 .allOf(DynamicMetricCriteriaArgs.builder()
///                     .alertSensitivity("Medium")
///                     .criterionType("DynamicThresholdCriterion")
///                     .dimensions()
///                     .failingPeriods(DynamicThresholdFailingPeriodsArgs.builder()
///                         .minFailingPeriodsToAlert(4)
///                         .numberOfEvaluationPeriods(4)
///                         .build())
///                     .ignoreDataBefore("2019-04-04T21:00:00.000Z")
///                     .metricName("Percentage CPU")
///                     .metricNamespace("microsoft.compute/virtualmachines")
///                     .name("High_CPU_80")
///                     .operator("GreaterOrLessThan")
///                     .timeAggregation("Average")
///                     .build())
///                 .odataType("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria")
///                 .build())
///             .description("This is the description of the rule1")
///             .enabled(true)
///             .evaluationFrequency("PT1M")
///             .location("global")
///             .resourceGroupName("gigtest")
///             .ruleName("chiricutin")
///             .scopes("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme")
///             .severity(3)
///             .tags(Map.ofEntries(
///             ))
///             .windowSize("PT15M")
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
/// const metricAlert = new azure_native.monitor.MetricAlert("metricAlert", {
///     actions: [{
///         actionGroupId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         webHookProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     }],
///     autoMitigate: true,
///     criteria: {
///         allOf: [{
///             alertSensitivity: azure_native.monitor.DynamicThresholdSensitivity.Medium,
///             criterionType: "DynamicThresholdCriterion",
///             dimensions: [],
///             failingPeriods: {
///                 minFailingPeriodsToAlert: 4,
///                 numberOfEvaluationPeriods: 4,
///             },
///             ignoreDataBefore: "2019-04-04T21:00:00.000Z",
///             metricName: "Percentage CPU",
///             metricNamespace: "microsoft.compute/virtualmachines",
///             name: "High_CPU_80",
///             operator: azure_native.monitor.DynamicThresholdOperator.GreaterOrLessThan,
///             timeAggregation: azure_native.monitor.AggregationTypeEnum.Average,
///         }],
///         odataType: "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description: "This is the description of the rule1",
///     enabled: true,
///     evaluationFrequency: "PT1M",
///     location: "global",
///     resourceGroupName: "gigtest",
///     ruleName: "chiricutin",
///     scopes: ["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme"],
///     severity: 3,
///     tags: {},
///     windowSize: "PT15M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metric_alert = azure_native.monitor.MetricAlert("metricAlert",
///     actions=[{
///         "action_group_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         "web_hook_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     }],
///     auto_mitigate=True,
///     criteria={
///         "all_of": [{
///             "alert_sensitivity": azure_native.monitor.DynamicThresholdSensitivity.MEDIUM,
///             "criterion_type": "DynamicThresholdCriterion",
///             "dimensions": [],
///             "failing_periods": {
///                 "min_failing_periods_to_alert": 4,
///                 "number_of_evaluation_periods": 4,
///             },
///             "ignore_data_before": "2019-04-04T21:00:00.000Z",
///             "metric_name": "Percentage CPU",
///             "metric_namespace": "microsoft.compute/virtualmachines",
///             "name": "High_CPU_80",
///             "operator": azure_native.monitor.DynamicThresholdOperator.GREATER_OR_LESS_THAN,
///             "time_aggregation": azure_native.monitor.AggregationTypeEnum.AVERAGE,
///         }],
///         "odata_type": "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description="This is the description of the rule1",
///     enabled=True,
///     evaluation_frequency="PT1M",
///     location="global",
///     resource_group_name="gigtest",
///     rule_name="chiricutin",
///     scopes=["/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme"],
///     severity=3,
///     tags={},
///     window_size="PT15M")
///
/// ```
///
/// ```yaml
/// resources:
///   metricAlert:
///     type: azure-native:monitor:MetricAlert
///     properties:
///       actions:
///         - actionGroupId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2
///           webHookProperties:
///             key11: value11
///             key12: value12
///       autoMitigate: true
///       criteria:
///         allOf:
///           - alertSensitivity: Medium
///             criterionType: DynamicThresholdCriterion
///             dimensions: []
///             failingPeriods:
///               minFailingPeriodsToAlert: 4
///               numberOfEvaluationPeriods: 4
///             ignoreDataBefore: 2019-04-04T21:00:00.000Z
///             metricName: Percentage CPU
///             metricNamespace: microsoft.compute/virtualmachines
///             name: High_CPU_80
///             operator: GreaterOrLessThan
///             timeAggregation: Average
///         odataType: Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria
///       description: This is the description of the rule1
///       enabled: true
///       evaluationFrequency: PT1M
///       location: global
///       resourceGroupName: gigtest
///       ruleName: chiricutin
///       scopes:
///         - /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme
///       severity: 3
///       tags: {}
///       windowSize: PT15M
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a web test alert rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metricAlert = new AzureNative.Monitor.MetricAlert("metricAlert", new()
///     {
///         Actions = new[] {},
///         Criteria = new AzureNative.Monitor.Inputs.WebtestLocationAvailabilityCriteriaArgs
///         {
///             ComponentId = "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example",
///             FailedLocationCount = 2,
///             OdataType = "Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria",
///             WebTestId = "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example",
///         },
///         Description = "Automatically created alert rule for availability test \"component-example\" a",
///         Enabled = true,
///         EvaluationFrequency = "PT1M",
///         Location = "global",
///         ResourceGroupName = "rg-example",
///         RuleName = "webtest-name-example",
///         Scopes = new[]
///         {
///             "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example",
///             "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example",
///         },
///         Severity = 4,
///         Tags =
///         {
///             { "hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example", "Resource" },
///             { "hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example", "Resource" },
///         },
///         WindowSize = "PT15M",
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
/// 		_, err := monitor.NewMetricAlert(ctx, "metricAlert", &monitor.MetricAlertArgs{
/// 			Actions: monitor.MetricAlertActionArray{},
/// 			Criteria: &monitor.WebtestLocationAvailabilityCriteriaArgs{
/// 				ComponentId:         pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example"),
/// 				FailedLocationCount: pulumi.Float64(2),
/// 				OdataType:           pulumi.String("Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria"),
/// 				WebTestId:           pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example"),
/// 			},
/// 			Description:         pulumi.String("Automatically created alert rule for availability test \"component-example\" a"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT1M"),
/// 			Location:            pulumi.String("global"),
/// 			ResourceGroupName:   pulumi.String("rg-example"),
/// 			RuleName:            pulumi.String("webtest-name-example"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example"),
/// 				pulumi.String("/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example"),
/// 			},
/// 			Severity: pulumi.Int(4),
/// 			Tags: pulumi.StringMap{
/// 				"hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example": pulumi.String("Resource"),
/// 				"hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example":      pulumi.String("Resource"),
/// 			},
/// 			WindowSize: pulumi.String("PT15M"),
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
/// import com.pulumi.azurenative.monitor.MetricAlert;
/// import com.pulumi.azurenative.monitor.MetricAlertArgs;
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
///         var metricAlert = new MetricAlert("metricAlert", MetricAlertArgs.builder()
///             .actions()
///             .criteria(WebtestLocationAvailabilityCriteriaArgs.builder()
///                 .componentId("/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example")
///                 .failedLocationCount(2.0)
///                 .odataType("Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria")
///                 .webTestId("/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example")
///                 .build())
///             .description("Automatically created alert rule for availability test \"component-example\" a")
///             .enabled(true)
///             .evaluationFrequency("PT1M")
///             .location("global")
///             .resourceGroupName("rg-example")
///             .ruleName("webtest-name-example")
///             .scopes(
///                 "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example",
///                 "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example")
///             .severity(4)
///             .tags(Map.ofEntries(
///                 Map.entry("hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example", "Resource"),
///                 Map.entry("hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example", "Resource")
///             ))
///             .windowSize("PT15M")
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
/// const metricAlert = new azure_native.monitor.MetricAlert("metricAlert", {
///     actions: [],
///     criteria: {
///         componentId: "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example",
///         failedLocationCount: 2,
///         odataType: "Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria",
///         webTestId: "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example",
///     },
///     description: "Automatically created alert rule for availability test \"component-example\" a",
///     enabled: true,
///     evaluationFrequency: "PT1M",
///     location: "global",
///     resourceGroupName: "rg-example",
///     ruleName: "webtest-name-example",
///     scopes: [
///         "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example",
///         "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example",
///     ],
///     severity: 4,
///     tags: {
///         "hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example": "Resource",
///         "hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example": "Resource",
///     },
///     windowSize: "PT15M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metric_alert = azure_native.monitor.MetricAlert("metricAlert",
///     actions=[],
///     criteria={
///         "component_id": "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example",
///         "failed_location_count": 2,
///         "odata_type": "Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria",
///         "web_test_id": "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example",
///     },
///     description="Automatically created alert rule for availability test \"component-example\" a",
///     enabled=True,
///     evaluation_frequency="PT1M",
///     location="global",
///     resource_group_name="rg-example",
///     rule_name="webtest-name-example",
///     scopes=[
///         "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example",
///         "/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example",
///     ],
///     severity=4,
///     tags={
///         "hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example": "Resource",
///         "hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example": "Resource",
///     },
///     window_size="PT15M")
///
/// ```
///
/// ```yaml
/// resources:
///   metricAlert:
///     type: azure-native:monitor:MetricAlert
///     properties:
///       actions: []
///       criteria:
///         componentId: /subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example
///         failedLocationCount: 2
///         odataType: Microsoft.Azure.Monitor.WebtestLocationAvailabilityCriteria
///         webTestId: /subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example
///       description: Automatically created alert rule for availability test "component-example" a
///       enabled: true
///       evaluationFrequency: PT1M
///       location: global
///       resourceGroupName: rg-example
///       ruleName: webtest-name-example
///       scopes:
///         - /subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example
///         - /subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example
///       severity: 4
///       tags:
///         ? hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/components/webtest-name-example
///         : Resource
///         ? hidden-link:/subscriptions/12345678-1234-1234-1234-123456789101/resourcegroups/rg-example/providers/microsoft.insights/webtests/component-example
///         : Resource
///       windowSize: PT15M
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update an alert rule for Multiple Resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metricAlert = new AzureNative.Monitor.MetricAlert("metricAlert", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Monitor.Inputs.MetricAlertActionArgs
///             {
///                 ActionGroupId = "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///                 WebHookProperties =
///                 {
///                     { "key11", "value11" },
///                     { "key12", "value12" },
///                 },
///             },
///         },
///         AutoMitigate = true,
///         Criteria = new AzureNative.Monitor.Inputs.MetricAlertMultipleResourceMultipleMetricCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.MetricCriteriaArgs
///                 {
///                     CriterionType = "StaticThresholdCriterion",
///                     Dimensions = new() { },
///                     MetricName = "Percentage CPU",
///                     MetricNamespace = "microsoft.compute/virtualmachines",
///                     Name = "High_CPU_80",
///                     Operator = AzureNative.Monitor.Operator.GreaterThan,
///                     Threshold = 80.5,
///                     TimeAggregation = AzureNative.Monitor.AggregationTypeEnum.Average,
///                 },
///             },
///             OdataType = "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///         },
///         Description = "This is the description of the rule1",
///         Enabled = true,
///         EvaluationFrequency = "PT1M",
///         Location = "global",
///         ResourceGroupName = "gigtest",
///         RuleName = "MetricAlertOnMultipleResources",
///         Scopes = new[]
///         {
///             "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1",
///             "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2",
///         },
///         Severity = 3,
///         Tags = null,
///         TargetResourceRegion = "southcentralus",
///         TargetResourceType = "Microsoft.Compute/virtualMachines",
///         WindowSize = "PT15M",
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
/// 		_, err := monitor.NewMetricAlert(ctx, "metricAlert", &monitor.MetricAlertArgs{
/// 			Actions: monitor.MetricAlertActionArray{
/// 				&monitor.MetricAlertActionArgs{
/// 					ActionGroupId: pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2"),
/// 					WebHookProperties: pulumi.StringMap{
/// 						"key11": pulumi.String("value11"),
/// 						"key12": pulumi.String("value12"),
/// 					},
/// 				},
/// 			},
/// 			AutoMitigate: pulumi.Bool(true),
/// 			Criteria: &monitor.MetricAlertMultipleResourceMultipleMetricCriteriaArgs{
/// 				AllOf: pulumi.Array{
/// 					monitor.MetricCriteria{
/// 						CriterionType:   "StaticThresholdCriterion",
/// 						Dimensions:      []monitor.MetricDimension{},
/// 						MetricName:      "Percentage CPU",
/// 						MetricNamespace: "microsoft.compute/virtualmachines",
/// 						Name:            "High_CPU_80",
/// 						Operator:        monitor.OperatorGreaterThan,
/// 						Threshold:       80.5,
/// 						TimeAggregation: monitor.AggregationTypeEnumAverage,
/// 					},
/// 				},
/// 				OdataType: pulumi.String("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria"),
/// 			},
/// 			Description:         pulumi.String("This is the description of the rule1"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT1M"),
/// 			Location:            pulumi.String("global"),
/// 			ResourceGroupName:   pulumi.String("gigtest"),
/// 			RuleName:            pulumi.String("MetricAlertOnMultipleResources"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1"),
/// 				pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2"),
/// 			},
/// 			Severity:             pulumi.Int(3),
/// 			Tags:                 pulumi.StringMap{},
/// 			TargetResourceRegion: pulumi.String("southcentralus"),
/// 			TargetResourceType:   pulumi.String("Microsoft.Compute/virtualMachines"),
/// 			WindowSize:           pulumi.String("PT15M"),
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
/// import com.pulumi.azurenative.monitor.MetricAlert;
/// import com.pulumi.azurenative.monitor.MetricAlertArgs;
/// import com.pulumi.azurenative.monitor.inputs.MetricAlertActionArgs;
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
///         var metricAlert = new MetricAlert("metricAlert", MetricAlertArgs.builder()
///             .actions(MetricAlertActionArgs.builder()
///                 .actionGroupId("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2")
///                 .webHookProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .autoMitigate(true)
///             .criteria(MetricAlertMultipleResourceMultipleMetricCriteriaArgs.builder()
///                 .allOf(MetricCriteriaArgs.builder()
///                     .criterionType("StaticThresholdCriterion")
///                     .dimensions()
///                     .metricName("Percentage CPU")
///                     .metricNamespace("microsoft.compute/virtualmachines")
///                     .name("High_CPU_80")
///                     .operator("GreaterThan")
///                     .threshold(80.5)
///                     .timeAggregation("Average")
///                     .build())
///                 .odataType("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria")
///                 .build())
///             .description("This is the description of the rule1")
///             .enabled(true)
///             .evaluationFrequency("PT1M")
///             .location("global")
///             .resourceGroupName("gigtest")
///             .ruleName("MetricAlertOnMultipleResources")
///             .scopes(
///                 "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1",
///                 "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2")
///             .severity(3)
///             .tags(Map.ofEntries(
///             ))
///             .targetResourceRegion("southcentralus")
///             .targetResourceType("Microsoft.Compute/virtualMachines")
///             .windowSize("PT15M")
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
/// const metricAlert = new azure_native.monitor.MetricAlert("metricAlert", {
///     actions: [{
///         actionGroupId: "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         webHookProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     }],
///     autoMitigate: true,
///     criteria: {
///         allOf: [{
///             criterionType: "StaticThresholdCriterion",
///             dimensions: [],
///             metricName: "Percentage CPU",
///             metricNamespace: "microsoft.compute/virtualmachines",
///             name: "High_CPU_80",
///             operator: azure_native.monitor.Operator.GreaterThan,
///             threshold: 80.5,
///             timeAggregation: azure_native.monitor.AggregationTypeEnum.Average,
///         }],
///         odataType: "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description: "This is the description of the rule1",
///     enabled: true,
///     evaluationFrequency: "PT1M",
///     location: "global",
///     resourceGroupName: "gigtest",
///     ruleName: "MetricAlertOnMultipleResources",
///     scopes: [
///         "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1",
///         "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2",
///     ],
///     severity: 3,
///     tags: {},
///     targetResourceRegion: "southcentralus",
///     targetResourceType: "Microsoft.Compute/virtualMachines",
///     windowSize: "PT15M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metric_alert = azure_native.monitor.MetricAlert("metricAlert",
///     actions=[{
///         "action_group_id": "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         "web_hook_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     }],
///     auto_mitigate=True,
///     criteria={
///         "all_of": [{
///             "criterion_type": "StaticThresholdCriterion",
///             "dimensions": [],
///             "metric_name": "Percentage CPU",
///             "metric_namespace": "microsoft.compute/virtualmachines",
///             "name": "High_CPU_80",
///             "operator": azure_native.monitor.Operator.GREATER_THAN,
///             "threshold": 80.5,
///             "time_aggregation": azure_native.monitor.AggregationTypeEnum.AVERAGE,
///         }],
///         "odata_type": "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description="This is the description of the rule1",
///     enabled=True,
///     evaluation_frequency="PT1M",
///     location="global",
///     resource_group_name="gigtest",
///     rule_name="MetricAlertOnMultipleResources",
///     scopes=[
///         "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1",
///         "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2",
///     ],
///     severity=3,
///     tags={},
///     target_resource_region="southcentralus",
///     target_resource_type="Microsoft.Compute/virtualMachines",
///     window_size="PT15M")
///
/// ```
///
/// ```yaml
/// resources:
///   metricAlert:
///     type: azure-native:monitor:MetricAlert
///     properties:
///       actions:
///         - actionGroupId: /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2
///           webHookProperties:
///             key11: value11
///             key12: value12
///       autoMitigate: true
///       criteria:
///         allOf:
///           - criterionType: StaticThresholdCriterion
///             dimensions: []
///             metricName: Percentage CPU
///             metricNamespace: microsoft.compute/virtualmachines
///             name: High_CPU_80
///             operator: GreaterThan
///             threshold: 80.5
///             timeAggregation: Average
///         odataType: Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria
///       description: This is the description of the rule1
///       enabled: true
///       evaluationFrequency: PT1M
///       location: global
///       resourceGroupName: gigtest
///       ruleName: MetricAlertOnMultipleResources
///       scopes:
///         - /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme1
///         - /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme2
///       severity: 3
///       tags: {}
///       targetResourceRegion: southcentralus
///       targetResourceType: Microsoft.Compute/virtualMachines
///       windowSize: PT15M
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update an alert rule for Single Resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metricAlert = new AzureNative.Monitor.MetricAlert("metricAlert", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Monitor.Inputs.MetricAlertActionArgs
///             {
///                 ActionGroupId = "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///                 WebHookProperties =
///                 {
///                     { "key11", "value11" },
///                     { "key12", "value12" },
///                 },
///             },
///         },
///         AutoMitigate = true,
///         Criteria = new AzureNative.Monitor.Inputs.MetricAlertSingleResourceMultipleMetricCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.MetricCriteriaArgs
///                 {
///                     CriterionType = "StaticThresholdCriterion",
///                     Dimensions = new() { },
///                     MetricName = "\\Processor(_Total)\\% Processor Time",
///                     Name = "High_CPU_80",
///                     Operator = AzureNative.Monitor.Operator.GreaterThan,
///                     Threshold = 80.5,
///                     TimeAggregation = AzureNative.Monitor.AggregationTypeEnum.Average,
///                 },
///             },
///             OdataType = "Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria",
///         },
///         Description = "This is the description of the rule1",
///         Enabled = true,
///         EvaluationFrequency = "PT1M",
///         Location = "global",
///         ResourceGroupName = "gigtest",
///         RuleName = "chiricutin",
///         Scopes = new[]
///         {
///             "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme",
///         },
///         Severity = 3,
///         Tags = null,
///         WindowSize = "PT15M",
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
/// 		_, err := monitor.NewMetricAlert(ctx, "metricAlert", &monitor.MetricAlertArgs{
/// 			Actions: monitor.MetricAlertActionArray{
/// 				&monitor.MetricAlertActionArgs{
/// 					ActionGroupId: pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2"),
/// 					WebHookProperties: pulumi.StringMap{
/// 						"key11": pulumi.String("value11"),
/// 						"key12": pulumi.String("value12"),
/// 					},
/// 				},
/// 			},
/// 			AutoMitigate: pulumi.Bool(true),
/// 			Criteria: &monitor.MetricAlertSingleResourceMultipleMetricCriteriaArgs{
/// 				AllOf: monitor.MetricCriteriaArray{
/// 					&monitor.MetricCriteriaArgs{
/// 						CriterionType:   pulumi.String("StaticThresholdCriterion"),
/// 						Dimensions:      monitor.MetricDimensionArray{},
/// 						MetricName:      pulumi.String("\\Processor(_Total)\\% Processor Time"),
/// 						Name:            pulumi.String("High_CPU_80"),
/// 						Operator:        pulumi.String(monitor.OperatorGreaterThan),
/// 						Threshold:       pulumi.Float64(80.5),
/// 						TimeAggregation: pulumi.String(monitor.AggregationTypeEnumAverage),
/// 					},
/// 				},
/// 				OdataType: pulumi.String("Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria"),
/// 			},
/// 			Description:         pulumi.String("This is the description of the rule1"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT1M"),
/// 			Location:            pulumi.String("global"),
/// 			ResourceGroupName:   pulumi.String("gigtest"),
/// 			RuleName:            pulumi.String("chiricutin"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme"),
/// 			},
/// 			Severity:   pulumi.Int(3),
/// 			Tags:       pulumi.StringMap{},
/// 			WindowSize: pulumi.String("PT15M"),
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
/// import com.pulumi.azurenative.monitor.MetricAlert;
/// import com.pulumi.azurenative.monitor.MetricAlertArgs;
/// import com.pulumi.azurenative.monitor.inputs.MetricAlertActionArgs;
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
///         var metricAlert = new MetricAlert("metricAlert", MetricAlertArgs.builder()
///             .actions(MetricAlertActionArgs.builder()
///                 .actionGroupId("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2")
///                 .webHookProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .autoMitigate(true)
///             .criteria(MetricAlertSingleResourceMultipleMetricCriteriaArgs.builder()
///                 .allOf(Map.ofEntries(
///                     Map.entry("criterionType", "StaticThresholdCriterion"),
///                     Map.entry("dimensions", ),
///                     Map.entry("metricName", "\\Processor(_Total)\\% Processor Time"),
///                     Map.entry("name", "High_CPU_80"),
///                     Map.entry("operator", "GreaterThan"),
///                     Map.entry("threshold", 80.5),
///                     Map.entry("timeAggregation", "Average")
///                 ))
///                 .odataType("Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria")
///                 .build())
///             .description("This is the description of the rule1")
///             .enabled(true)
///             .evaluationFrequency("PT1M")
///             .location("global")
///             .resourceGroupName("gigtest")
///             .ruleName("chiricutin")
///             .scopes("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme")
///             .severity(3)
///             .tags(Map.ofEntries(
///             ))
///             .windowSize("PT15M")
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
/// const metricAlert = new azure_native.monitor.MetricAlert("metricAlert", {
///     actions: [{
///         actionGroupId: "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         webHookProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     }],
///     autoMitigate: true,
///     criteria: {
///         allOf: [{
///             criterionType: "StaticThresholdCriterion",
///             dimensions: [],
///             metricName: "\\Processor(_Total)\\% Processor Time",
///             name: "High_CPU_80",
///             operator: azure_native.monitor.Operator.GreaterThan,
///             threshold: 80.5,
///             timeAggregation: azure_native.monitor.AggregationTypeEnum.Average,
///         }],
///         odataType: "Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria",
///     },
///     description: "This is the description of the rule1",
///     enabled: true,
///     evaluationFrequency: "PT1M",
///     location: "global",
///     resourceGroupName: "gigtest",
///     ruleName: "chiricutin",
///     scopes: ["/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme"],
///     severity: 3,
///     tags: {},
///     windowSize: "PT15M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metric_alert = azure_native.monitor.MetricAlert("metricAlert",
///     actions=[{
///         "action_group_id": "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         "web_hook_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     }],
///     auto_mitigate=True,
///     criteria={
///         "all_of": [{
///             "criterion_type": "StaticThresholdCriterion",
///             "dimensions": [],
///             "metric_name": "\\Processor(_Total)\\% Processor Time",
///             "name": "High_CPU_80",
///             "operator": azure_native.monitor.Operator.GREATER_THAN,
///             "threshold": 80.5,
///             "time_aggregation": azure_native.monitor.AggregationTypeEnum.AVERAGE,
///         }],
///         "odata_type": "Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria",
///     },
///     description="This is the description of the rule1",
///     enabled=True,
///     evaluation_frequency="PT1M",
///     location="global",
///     resource_group_name="gigtest",
///     rule_name="chiricutin",
///     scopes=["/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme"],
///     severity=3,
///     tags={},
///     window_size="PT15M")
///
/// ```
///
/// ```yaml
/// resources:
///   metricAlert:
///     type: azure-native:monitor:MetricAlert
///     properties:
///       actions:
///         - actionGroupId: /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2
///           webHookProperties:
///             key11: value11
///             key12: value12
///       autoMitigate: true
///       criteria:
///         allOf:
///           - criterionType: StaticThresholdCriterion
///             dimensions: []
///             metricName: \Processor(_Total)\% Processor Time
///             name: High_CPU_80
///             operator: GreaterThan
///             threshold: 80.5
///             timeAggregation: Average
///         odataType: Microsoft.Azure.Monitor.SingleResourceMultipleMetricCriteria
///       description: This is the description of the rule1
///       enabled: true
///       evaluationFrequency: PT1M
///       location: global
///       resourceGroupName: gigtest
///       ruleName: chiricutin
///       scopes:
///         - /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.Compute/virtualMachines/gigwadme
///       severity: 3
///       tags: {}
///       windowSize: PT15M
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update an alert rule on Resource group(s)
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metricAlert = new AzureNative.Monitor.MetricAlert("metricAlert", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Monitor.Inputs.MetricAlertActionArgs
///             {
///                 ActionGroupId = "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///                 WebHookProperties =
///                 {
///                     { "key11", "value11" },
///                     { "key12", "value12" },
///                 },
///             },
///         },
///         AutoMitigate = true,
///         Criteria = new AzureNative.Monitor.Inputs.MetricAlertMultipleResourceMultipleMetricCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.MetricCriteriaArgs
///                 {
///                     CriterionType = "StaticThresholdCriterion",
///                     Dimensions = new() { },
///                     MetricName = "Percentage CPU",
///                     MetricNamespace = "microsoft.compute/virtualmachines",
///                     Name = "High_CPU_80",
///                     Operator = AzureNative.Monitor.Operator.GreaterThan,
///                     Threshold = 80.5,
///                     TimeAggregation = AzureNative.Monitor.AggregationTypeEnum.Average,
///                 },
///             },
///             OdataType = "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///         },
///         Description = "This is the description of the rule1",
///         Enabled = true,
///         EvaluationFrequency = "PT1M",
///         Location = "global",
///         ResourceGroupName = "gigtest1",
///         RuleName = "MetricAlertAtResourceGroupLevel",
///         Scopes = new[]
///         {
///             "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest1",
///             "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest2",
///         },
///         Severity = 3,
///         Tags = null,
///         TargetResourceRegion = "southcentralus",
///         TargetResourceType = "Microsoft.Compute/virtualMachines",
///         WindowSize = "PT15M",
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
/// 		_, err := monitor.NewMetricAlert(ctx, "metricAlert", &monitor.MetricAlertArgs{
/// 			Actions: monitor.MetricAlertActionArray{
/// 				&monitor.MetricAlertActionArgs{
/// 					ActionGroupId: pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2"),
/// 					WebHookProperties: pulumi.StringMap{
/// 						"key11": pulumi.String("value11"),
/// 						"key12": pulumi.String("value12"),
/// 					},
/// 				},
/// 			},
/// 			AutoMitigate: pulumi.Bool(true),
/// 			Criteria: &monitor.MetricAlertMultipleResourceMultipleMetricCriteriaArgs{
/// 				AllOf: pulumi.Array{
/// 					monitor.MetricCriteria{
/// 						CriterionType:   "StaticThresholdCriterion",
/// 						Dimensions:      []monitor.MetricDimension{},
/// 						MetricName:      "Percentage CPU",
/// 						MetricNamespace: "microsoft.compute/virtualmachines",
/// 						Name:            "High_CPU_80",
/// 						Operator:        monitor.OperatorGreaterThan,
/// 						Threshold:       80.5,
/// 						TimeAggregation: monitor.AggregationTypeEnumAverage,
/// 					},
/// 				},
/// 				OdataType: pulumi.String("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria"),
/// 			},
/// 			Description:         pulumi.String("This is the description of the rule1"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT1M"),
/// 			Location:            pulumi.String("global"),
/// 			ResourceGroupName:   pulumi.String("gigtest1"),
/// 			RuleName:            pulumi.String("MetricAlertAtResourceGroupLevel"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest1"),
/// 				pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest2"),
/// 			},
/// 			Severity:             pulumi.Int(3),
/// 			Tags:                 pulumi.StringMap{},
/// 			TargetResourceRegion: pulumi.String("southcentralus"),
/// 			TargetResourceType:   pulumi.String("Microsoft.Compute/virtualMachines"),
/// 			WindowSize:           pulumi.String("PT15M"),
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
/// import com.pulumi.azurenative.monitor.MetricAlert;
/// import com.pulumi.azurenative.monitor.MetricAlertArgs;
/// import com.pulumi.azurenative.monitor.inputs.MetricAlertActionArgs;
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
///         var metricAlert = new MetricAlert("metricAlert", MetricAlertArgs.builder()
///             .actions(MetricAlertActionArgs.builder()
///                 .actionGroupId("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2")
///                 .webHookProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .autoMitigate(true)
///             .criteria(MetricAlertMultipleResourceMultipleMetricCriteriaArgs.builder()
///                 .allOf(MetricCriteriaArgs.builder()
///                     .criterionType("StaticThresholdCriterion")
///                     .dimensions()
///                     .metricName("Percentage CPU")
///                     .metricNamespace("microsoft.compute/virtualmachines")
///                     .name("High_CPU_80")
///                     .operator("GreaterThan")
///                     .threshold(80.5)
///                     .timeAggregation("Average")
///                     .build())
///                 .odataType("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria")
///                 .build())
///             .description("This is the description of the rule1")
///             .enabled(true)
///             .evaluationFrequency("PT1M")
///             .location("global")
///             .resourceGroupName("gigtest1")
///             .ruleName("MetricAlertAtResourceGroupLevel")
///             .scopes(
///                 "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest1",
///                 "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest2")
///             .severity(3)
///             .tags(Map.ofEntries(
///             ))
///             .targetResourceRegion("southcentralus")
///             .targetResourceType("Microsoft.Compute/virtualMachines")
///             .windowSize("PT15M")
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
/// const metricAlert = new azure_native.monitor.MetricAlert("metricAlert", {
///     actions: [{
///         actionGroupId: "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         webHookProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     }],
///     autoMitigate: true,
///     criteria: {
///         allOf: [{
///             criterionType: "StaticThresholdCriterion",
///             dimensions: [],
///             metricName: "Percentage CPU",
///             metricNamespace: "microsoft.compute/virtualmachines",
///             name: "High_CPU_80",
///             operator: azure_native.monitor.Operator.GreaterThan,
///             threshold: 80.5,
///             timeAggregation: azure_native.monitor.AggregationTypeEnum.Average,
///         }],
///         odataType: "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description: "This is the description of the rule1",
///     enabled: true,
///     evaluationFrequency: "PT1M",
///     location: "global",
///     resourceGroupName: "gigtest1",
///     ruleName: "MetricAlertAtResourceGroupLevel",
///     scopes: [
///         "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest1",
///         "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest2",
///     ],
///     severity: 3,
///     tags: {},
///     targetResourceRegion: "southcentralus",
///     targetResourceType: "Microsoft.Compute/virtualMachines",
///     windowSize: "PT15M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metric_alert = azure_native.monitor.MetricAlert("metricAlert",
///     actions=[{
///         "action_group_id": "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         "web_hook_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     }],
///     auto_mitigate=True,
///     criteria={
///         "all_of": [{
///             "criterion_type": "StaticThresholdCriterion",
///             "dimensions": [],
///             "metric_name": "Percentage CPU",
///             "metric_namespace": "microsoft.compute/virtualmachines",
///             "name": "High_CPU_80",
///             "operator": azure_native.monitor.Operator.GREATER_THAN,
///             "threshold": 80.5,
///             "time_aggregation": azure_native.monitor.AggregationTypeEnum.AVERAGE,
///         }],
///         "odata_type": "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description="This is the description of the rule1",
///     enabled=True,
///     evaluation_frequency="PT1M",
///     location="global",
///     resource_group_name="gigtest1",
///     rule_name="MetricAlertAtResourceGroupLevel",
///     scopes=[
///         "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest1",
///         "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest2",
///     ],
///     severity=3,
///     tags={},
///     target_resource_region="southcentralus",
///     target_resource_type="Microsoft.Compute/virtualMachines",
///     window_size="PT15M")
///
/// ```
///
/// ```yaml
/// resources:
///   metricAlert:
///     type: azure-native:monitor:MetricAlert
///     properties:
///       actions:
///         - actionGroupId: /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2
///           webHookProperties:
///             key11: value11
///             key12: value12
///       autoMitigate: true
///       criteria:
///         allOf:
///           - criterionType: StaticThresholdCriterion
///             dimensions: []
///             metricName: Percentage CPU
///             metricNamespace: microsoft.compute/virtualmachines
///             name: High_CPU_80
///             operator: GreaterThan
///             threshold: 80.5
///             timeAggregation: Average
///         odataType: Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria
///       description: This is the description of the rule1
///       enabled: true
///       evaluationFrequency: PT1M
///       location: global
///       resourceGroupName: gigtest1
///       ruleName: MetricAlertAtResourceGroupLevel
///       scopes:
///         - /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest1
///         - /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest2
///       severity: 3
///       tags: {}
///       targetResourceRegion: southcentralus
///       targetResourceType: Microsoft.Compute/virtualMachines
///       windowSize: PT15M
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update an alert rule on Subscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metricAlert = new AzureNative.Monitor.MetricAlert("metricAlert", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Monitor.Inputs.MetricAlertActionArgs
///             {
///                 ActionGroupId = "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///                 WebHookProperties =
///                 {
///                     { "key11", "value11" },
///                     { "key12", "value12" },
///                 },
///             },
///         },
///         AutoMitigate = true,
///         Criteria = new AzureNative.Monitor.Inputs.MetricAlertMultipleResourceMultipleMetricCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.MetricCriteriaArgs
///                 {
///                     CriterionType = "StaticThresholdCriterion",
///                     Dimensions = new() { },
///                     MetricName = "Percentage CPU",
///                     MetricNamespace = "microsoft.compute/virtualmachines",
///                     Name = "High_CPU_80",
///                     Operator = AzureNative.Monitor.Operator.GreaterThan,
///                     Threshold = 80.5,
///                     TimeAggregation = AzureNative.Monitor.AggregationTypeEnum.Average,
///                 },
///             },
///             OdataType = "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///         },
///         Description = "This is the description of the rule1",
///         Enabled = true,
///         EvaluationFrequency = "PT1M",
///         Location = "global",
///         ResourceGroupName = "gigtest",
///         RuleName = "MetricAlertAtSubscriptionLevel",
///         Scopes = new[]
///         {
///             "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7",
///         },
///         Severity = 3,
///         Tags = null,
///         TargetResourceRegion = "southcentralus",
///         TargetResourceType = "Microsoft.Compute/virtualMachines",
///         WindowSize = "PT15M",
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
/// 		_, err := monitor.NewMetricAlert(ctx, "metricAlert", &monitor.MetricAlertArgs{
/// 			Actions: monitor.MetricAlertActionArray{
/// 				&monitor.MetricAlertActionArgs{
/// 					ActionGroupId: pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2"),
/// 					WebHookProperties: pulumi.StringMap{
/// 						"key11": pulumi.String("value11"),
/// 						"key12": pulumi.String("value12"),
/// 					},
/// 				},
/// 			},
/// 			AutoMitigate: pulumi.Bool(true),
/// 			Criteria: &monitor.MetricAlertMultipleResourceMultipleMetricCriteriaArgs{
/// 				AllOf: pulumi.Array{
/// 					monitor.MetricCriteria{
/// 						CriterionType:   "StaticThresholdCriterion",
/// 						Dimensions:      []monitor.MetricDimension{},
/// 						MetricName:      "Percentage CPU",
/// 						MetricNamespace: "microsoft.compute/virtualmachines",
/// 						Name:            "High_CPU_80",
/// 						Operator:        monitor.OperatorGreaterThan,
/// 						Threshold:       80.5,
/// 						TimeAggregation: monitor.AggregationTypeEnumAverage,
/// 					},
/// 				},
/// 				OdataType: pulumi.String("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria"),
/// 			},
/// 			Description:         pulumi.String("This is the description of the rule1"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT1M"),
/// 			Location:            pulumi.String("global"),
/// 			ResourceGroupName:   pulumi.String("gigtest"),
/// 			RuleName:            pulumi.String("MetricAlertAtSubscriptionLevel"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7"),
/// 			},
/// 			Severity:             pulumi.Int(3),
/// 			Tags:                 pulumi.StringMap{},
/// 			TargetResourceRegion: pulumi.String("southcentralus"),
/// 			TargetResourceType:   pulumi.String("Microsoft.Compute/virtualMachines"),
/// 			WindowSize:           pulumi.String("PT15M"),
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
/// import com.pulumi.azurenative.monitor.MetricAlert;
/// import com.pulumi.azurenative.monitor.MetricAlertArgs;
/// import com.pulumi.azurenative.monitor.inputs.MetricAlertActionArgs;
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
///         var metricAlert = new MetricAlert("metricAlert", MetricAlertArgs.builder()
///             .actions(MetricAlertActionArgs.builder()
///                 .actionGroupId("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2")
///                 .webHookProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .autoMitigate(true)
///             .criteria(MetricAlertMultipleResourceMultipleMetricCriteriaArgs.builder()
///                 .allOf(MetricCriteriaArgs.builder()
///                     .criterionType("StaticThresholdCriterion")
///                     .dimensions()
///                     .metricName("Percentage CPU")
///                     .metricNamespace("microsoft.compute/virtualmachines")
///                     .name("High_CPU_80")
///                     .operator("GreaterThan")
///                     .threshold(80.5)
///                     .timeAggregation("Average")
///                     .build())
///                 .odataType("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria")
///                 .build())
///             .description("This is the description of the rule1")
///             .enabled(true)
///             .evaluationFrequency("PT1M")
///             .location("global")
///             .resourceGroupName("gigtest")
///             .ruleName("MetricAlertAtSubscriptionLevel")
///             .scopes("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7")
///             .severity(3)
///             .tags(Map.ofEntries(
///             ))
///             .targetResourceRegion("southcentralus")
///             .targetResourceType("Microsoft.Compute/virtualMachines")
///             .windowSize("PT15M")
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
/// const metricAlert = new azure_native.monitor.MetricAlert("metricAlert", {
///     actions: [{
///         actionGroupId: "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         webHookProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     }],
///     autoMitigate: true,
///     criteria: {
///         allOf: [{
///             criterionType: "StaticThresholdCriterion",
///             dimensions: [],
///             metricName: "Percentage CPU",
///             metricNamespace: "microsoft.compute/virtualmachines",
///             name: "High_CPU_80",
///             operator: azure_native.monitor.Operator.GreaterThan,
///             threshold: 80.5,
///             timeAggregation: azure_native.monitor.AggregationTypeEnum.Average,
///         }],
///         odataType: "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description: "This is the description of the rule1",
///     enabled: true,
///     evaluationFrequency: "PT1M",
///     location: "global",
///     resourceGroupName: "gigtest",
///     ruleName: "MetricAlertAtSubscriptionLevel",
///     scopes: ["/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7"],
///     severity: 3,
///     tags: {},
///     targetResourceRegion: "southcentralus",
///     targetResourceType: "Microsoft.Compute/virtualMachines",
///     windowSize: "PT15M",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metric_alert = azure_native.monitor.MetricAlert("metricAlert",
///     actions=[{
///         "action_group_id": "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         "web_hook_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     }],
///     auto_mitigate=True,
///     criteria={
///         "all_of": [{
///             "criterion_type": "StaticThresholdCriterion",
///             "dimensions": [],
///             "metric_name": "Percentage CPU",
///             "metric_namespace": "microsoft.compute/virtualmachines",
///             "name": "High_CPU_80",
///             "operator": azure_native.monitor.Operator.GREATER_THAN,
///             "threshold": 80.5,
///             "time_aggregation": azure_native.monitor.AggregationTypeEnum.AVERAGE,
///         }],
///         "odata_type": "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description="This is the description of the rule1",
///     enabled=True,
///     evaluation_frequency="PT1M",
///     location="global",
///     resource_group_name="gigtest",
///     rule_name="MetricAlertAtSubscriptionLevel",
///     scopes=["/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7"],
///     severity=3,
///     tags={},
///     target_resource_region="southcentralus",
///     target_resource_type="Microsoft.Compute/virtualMachines",
///     window_size="PT15M")
///
/// ```
///
/// ```yaml
/// resources:
///   metricAlert:
///     type: azure-native:monitor:MetricAlert
///     properties:
///       actions:
///         - actionGroupId: /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2
///           webHookProperties:
///             key11: value11
///             key12: value12
///       autoMitigate: true
///       criteria:
///         allOf:
///           - criterionType: StaticThresholdCriterion
///             dimensions: []
///             metricName: Percentage CPU
///             metricNamespace: microsoft.compute/virtualmachines
///             name: High_CPU_80
///             operator: GreaterThan
///             threshold: 80.5
///             timeAggregation: Average
///         odataType: Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria
///       description: This is the description of the rule1
///       enabled: true
///       evaluationFrequency: PT1M
///       location: global
///       resourceGroupName: gigtest
///       ruleName: MetricAlertAtSubscriptionLevel
///       scopes:
///         - /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7
///       severity: 3
///       tags: {}
///       targetResourceRegion: southcentralus
///       targetResourceType: Microsoft.Compute/virtualMachines
///       windowSize: PT15M
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update an alert rules with dimensions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var metricAlert = new AzureNative.Monitor.MetricAlert("metricAlert", new()
///     {
///         Actions = new[]
///         {
///             new AzureNative.Monitor.Inputs.MetricAlertActionArgs
///             {
///                 ActionGroupId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///                 WebHookProperties =
///                 {
///                     { "key11", "value11" },
///                     { "key12", "value12" },
///                 },
///             },
///         },
///         AutoMitigate = true,
///         Criteria = new AzureNative.Monitor.Inputs.MetricAlertMultipleResourceMultipleMetricCriteriaArgs
///         {
///             AllOf = new[]
///             {
///                 new AzureNative.Monitor.Inputs.MetricCriteriaArgs
///                 {
///                     CriterionType = "StaticThresholdCriterion",
///                     Dimensions = new[]
///                     {
///                         new AzureNative.Monitor.Inputs.MetricDimensionArgs
///                         {
///                             Name = "ActivityName",
///                             Operator = "Include",
///                             Values = new[]
///                             {
///                                 "*",
///                             },
///                         },
///                         new AzureNative.Monitor.Inputs.MetricDimensionArgs
///                         {
///                             Name = "StatusCode",
///                             Operator = "Include",
///                             Values = new[]
///                             {
///                                 "200",
///                             },
///                         },
///                     },
///                     MetricName = "Availability",
///                     MetricNamespace = "Microsoft.KeyVault/vaults",
///                     Name = "Metric1",
///                     Operator = AzureNative.Monitor.Operator.GreaterThan,
///                     Threshold = 55,
///                     TimeAggregation = AzureNative.Monitor.AggregationTypeEnum.Average,
///                 },
///             },
///             OdataType = "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///         },
///         Description = "This is the description of the rule1",
///         Enabled = true,
///         EvaluationFrequency = "PT1H",
///         Location = "global",
///         ResourceGroupName = "gigtest",
///         RuleName = "MetricAlertOnMultipleDimensions",
///         Scopes = new[]
///         {
///             "/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.KeyVault/vaults/keyVaultResource",
///         },
///         Severity = 3,
///         Tags = null,
///         WindowSize = "P1D",
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
/// 		_, err := monitor.NewMetricAlert(ctx, "metricAlert", &monitor.MetricAlertArgs{
/// 			Actions: monitor.MetricAlertActionArray{
/// 				&monitor.MetricAlertActionArgs{
/// 					ActionGroupId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2"),
/// 					WebHookProperties: pulumi.StringMap{
/// 						"key11": pulumi.String("value11"),
/// 						"key12": pulumi.String("value12"),
/// 					},
/// 				},
/// 			},
/// 			AutoMitigate: pulumi.Bool(true),
/// 			Criteria: &monitor.MetricAlertMultipleResourceMultipleMetricCriteriaArgs{
/// 				AllOf: pulumi.Array{
/// 					monitor.MetricCriteria{
/// 						CriterionType: "StaticThresholdCriterion",
/// 						Dimensions: []monitor.MetricDimension{
/// 							{
/// 								Name:     "ActivityName",
/// 								Operator: "Include",
/// 								Values: []string{
/// 									"*",
/// 								},
/// 							},
/// 							{
/// 								Name:     "StatusCode",
/// 								Operator: "Include",
/// 								Values: []string{
/// 									"200",
/// 								},
/// 							},
/// 						},
/// 						MetricName:      "Availability",
/// 						MetricNamespace: "Microsoft.KeyVault/vaults",
/// 						Name:            "Metric1",
/// 						Operator:        monitor.OperatorGreaterThan,
/// 						Threshold:       55,
/// 						TimeAggregation: monitor.AggregationTypeEnumAverage,
/// 					},
/// 				},
/// 				OdataType: pulumi.String("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria"),
/// 			},
/// 			Description:         pulumi.String("This is the description of the rule1"),
/// 			Enabled:             pulumi.Bool(true),
/// 			EvaluationFrequency: pulumi.String("PT1H"),
/// 			Location:            pulumi.String("global"),
/// 			ResourceGroupName:   pulumi.String("gigtest"),
/// 			RuleName:            pulumi.String("MetricAlertOnMultipleDimensions"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.KeyVault/vaults/keyVaultResource"),
/// 			},
/// 			Severity:   pulumi.Int(3),
/// 			Tags:       pulumi.StringMap{},
/// 			WindowSize: pulumi.String("P1D"),
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
/// import com.pulumi.azurenative.monitor.MetricAlert;
/// import com.pulumi.azurenative.monitor.MetricAlertArgs;
/// import com.pulumi.azurenative.monitor.inputs.MetricAlertActionArgs;
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
///         var metricAlert = new MetricAlert("metricAlert", MetricAlertArgs.builder()
///             .actions(MetricAlertActionArgs.builder()
///                 .actionGroupId("/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2")
///                 .webHookProperties(Map.ofEntries(
///                     Map.entry("key11", "value11"),
///                     Map.entry("key12", "value12")
///                 ))
///                 .build())
///             .autoMitigate(true)
///             .criteria(MetricAlertMultipleResourceMultipleMetricCriteriaArgs.builder()
///                 .allOf(MetricCriteriaArgs.builder()
///                     .criterionType("StaticThresholdCriterion")
///                     .dimensions(
///                         MetricDimensionArgs.builder()
///                             .name("ActivityName")
///                             .operator("Include")
///                             .values("*")
///                             .build(),
///                         MetricDimensionArgs.builder()
///                             .name("StatusCode")
///                             .operator("Include")
///                             .values("200")
///                             .build())
///                     .metricName("Availability")
///                     .metricNamespace("Microsoft.KeyVault/vaults")
///                     .name("Metric1")
///                     .operator("GreaterThan")
///                     .threshold(55)
///                     .timeAggregation("Average")
///                     .build())
///                 .odataType("Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria")
///                 .build())
///             .description("This is the description of the rule1")
///             .enabled(true)
///             .evaluationFrequency("PT1H")
///             .location("global")
///             .resourceGroupName("gigtest")
///             .ruleName("MetricAlertOnMultipleDimensions")
///             .scopes("/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.KeyVault/vaults/keyVaultResource")
///             .severity(3)
///             .tags(Map.ofEntries(
///             ))
///             .windowSize("P1D")
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
/// const metricAlert = new azure_native.monitor.MetricAlert("metricAlert", {
///     actions: [{
///         actionGroupId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         webHookProperties: {
///             key11: "value11",
///             key12: "value12",
///         },
///     }],
///     autoMitigate: true,
///     criteria: {
///         allOf: [{
///             criterionType: "StaticThresholdCriterion",
///             dimensions: [
///                 {
///                     name: "ActivityName",
///                     operator: "Include",
///                     values: ["*"],
///                 },
///                 {
///                     name: "StatusCode",
///                     operator: "Include",
///                     values: ["200"],
///                 },
///             ],
///             metricName: "Availability",
///             metricNamespace: "Microsoft.KeyVault/vaults",
///             name: "Metric1",
///             operator: azure_native.monitor.Operator.GreaterThan,
///             threshold: 55,
///             timeAggregation: azure_native.monitor.AggregationTypeEnum.Average,
///         }],
///         odataType: "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description: "This is the description of the rule1",
///     enabled: true,
///     evaluationFrequency: "PT1H",
///     location: "global",
///     resourceGroupName: "gigtest",
///     ruleName: "MetricAlertOnMultipleDimensions",
///     scopes: ["/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.KeyVault/vaults/keyVaultResource"],
///     severity: 3,
///     tags: {},
///     windowSize: "P1D",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// metric_alert = azure_native.monitor.MetricAlert("metricAlert",
///     actions=[{
///         "action_group_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2",
///         "web_hook_properties": {
///             "key11": "value11",
///             "key12": "value12",
///         },
///     }],
///     auto_mitigate=True,
///     criteria={
///         "all_of": [{
///             "criterion_type": "StaticThresholdCriterion",
///             "dimensions": [
///                 {
///                     "name": "ActivityName",
///                     "operator": "Include",
///                     "values": ["*"],
///                 },
///                 {
///                     "name": "StatusCode",
///                     "operator": "Include",
///                     "values": ["200"],
///                 },
///             ],
///             "metric_name": "Availability",
///             "metric_namespace": "Microsoft.KeyVault/vaults",
///             "name": "Metric1",
///             "operator": azure_native.monitor.Operator.GREATER_THAN,
///             "threshold": 55,
///             "time_aggregation": azure_native.monitor.AggregationTypeEnum.AVERAGE,
///         }],
///         "odata_type": "Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria",
///     },
///     description="This is the description of the rule1",
///     enabled=True,
///     evaluation_frequency="PT1H",
///     location="global",
///     resource_group_name="gigtest",
///     rule_name="MetricAlertOnMultipleDimensions",
///     scopes=["/subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.KeyVault/vaults/keyVaultResource"],
///     severity=3,
///     tags={},
///     window_size="P1D")
///
/// ```
///
/// ```yaml
/// resources:
///   metricAlert:
///     type: azure-native:monitor:MetricAlert
///     properties:
///       actions:
///         - actionGroupId: /subscriptions/00000000-0000-0000-0000-000000000000/resourcegroups/gigtest/providers/microsoft.insights/actiongroups/group2
///           webHookProperties:
///             key11: value11
///             key12: value12
///       autoMitigate: true
///       criteria:
///         allOf:
///           - criterionType: StaticThresholdCriterion
///             dimensions:
///               - name: ActivityName
///                 operator: Include
///                 values:
///                   - '*'
///               - name: StatusCode
///                 operator: Include
///                 values:
///                   - '200'
///             metricName: Availability
///             metricNamespace: Microsoft.KeyVault/vaults
///             name: Metric1
///             operator: GreaterThan
///             threshold: 55
///             timeAggregation: Average
///         odataType: Microsoft.Azure.Monitor.MultipleResourceMultipleMetricCriteria
///       description: This is the description of the rule1
///       enabled: true
///       evaluationFrequency: PT1H
///       location: global
///       resourceGroupName: gigtest
///       ruleName: MetricAlertOnMultipleDimensions
///       scopes:
///         - /subscriptions/14ddf0c5-77c5-4b53-84f6-e1fa43ad68f7/resourceGroups/gigtest/providers/Microsoft.KeyVault/vaults/keyVaultResource
///       severity: 3
///       tags: {}
///       windowSize: P1D
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
/// $ pulumi import azure-native:monitor:MetricAlert webtest-name-example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Insights/metricAlerts/{ruleName}
/// ```
class MetricAlert extends pulumi.CustomResource {
  /// the array of actions that are performed when the alert rule becomes active, and when an alert condition is resolved.
  late final pulumi.Output<List<Map<String, dynamic>>?> actions;
  /// the flag that indicates whether the alert should be auto resolved or not. The default is true.
  late final pulumi.Output<bool?> autoMitigate;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// defines the specific alert criteria information.
  late final pulumi.Output<MetricAlertMultipleResourceMultipleMetricCriteriaResponse> criteria;
  /// the description of the metric alert that will be included in the alert email.
  late final pulumi.Output<String?> description;
  /// the flag that indicates whether the metric alert is enabled.
  late final pulumi.Output<bool> enabled;
  /// how often the metric alert is evaluated represented in ISO 8601 duration format.
  late final pulumi.Output<String> evaluationFrequency;
  /// the value indicating whether this alert rule is migrated.
  late final pulumi.Output<bool> isMigrated;
  /// Last time the rule was updated in ISO8601 format.
  late final pulumi.Output<String> lastUpdatedTime;
  /// Resource location
  late final pulumi.Output<String> location;
  /// Azure resource name
  late final pulumi.Output<String> name;
  /// the list of resource id's that this metric alert is scoped to. You cannot change the scope of a metric rule based on logs.
  late final pulumi.Output<List<String>> scopes;
  /// Alert severity {0, 1, 2, 3, 4}
  late final pulumi.Output<int> severity;
  /// Resource tags
  late final pulumi.Output<Map<String, String>?> tags;
  /// the region of the target resource(s) on which the alert is created/updated. Mandatory if the scope contains a subscription, resource group, or more than one resource.
  late final pulumi.Output<String?> targetResourceRegion;
  /// the resource type of the target resource(s) on which the alert is created/updated. Mandatory if the scope contains a subscription, resource group, or more than one resource.
  late final pulumi.Output<String?> targetResourceType;
  /// Azure resource type
  late final pulumi.Output<String> type;
  /// the period of time (in ISO 8601 duration format) that is used to monitor alert activity based on the threshold.
  late final pulumi.Output<String> windowSize;

  /// Creates a new [MetricAlert].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MetricAlert]. {@macro pulumi_monitor_metric_alert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MetricAlert(
    String name, {
    MetricAlertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:MetricAlert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    actions = registerOutput<List<Map<String, dynamic>>?>('actions');
    autoMitigate = registerOutput<bool?>('autoMitigate');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    criteria = registerOutput<MetricAlertMultipleResourceMultipleMetricCriteriaResponse>('criteria', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MetricAlertMultipleResourceMultipleMetricCriteriaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    evaluationFrequency = registerOutput<String>('evaluationFrequency');
    isMigrated = registerOutput<bool>('isMigrated');
    lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    scopes = registerOutput<List<String>>('scopes');
    severity = registerOutput<int>('severity');
    tags = registerOutput<Map<String, String>?>('tags');
    targetResourceRegion = registerOutput<String?>('targetResourceRegion');
    targetResourceType = registerOutput<String?>('targetResourceType');
    type = registerOutput<String>('type');
    windowSize = registerOutput<String>('windowSize');
  }
}
