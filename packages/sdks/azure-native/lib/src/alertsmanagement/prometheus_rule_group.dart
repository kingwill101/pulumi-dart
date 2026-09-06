import 'package:pulumi/pulumi.dart' as pulumi;
import 'prometheus_rule_group_args.dart';
import 'prometheus_rule_response.dart';
import 'system_data_response.dart';

/// The Prometheus rule group resource.
///
/// Uses Azure REST API version 2023-03-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2021-07-22-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native alertsmanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update a PrometheusRuleGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prometheusRuleGroup = new AzureNative.AlertsManagement.PrometheusRuleGroup("prometheusRuleGroup", new()
///     {
///         ClusterName = "myClusterName",
///         Description = "This is the description of the following rule group",
///         Enabled = true,
///         Interval = "PT10M",
///         Location = "East US",
///         ResourceGroupName = "promResourceGroup",
///         RuleGroupName = "myPrometheusRuleGroup",
///         Rules = new[]
///         {
///             new AzureNative.AlertsManagement.Inputs.PrometheusRuleArgs
///             {
///                 Expression = "histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\"billing-processing\"}[5m])) by (job_type))",
///                 Labels =
///                 {
///                     { "team", "prod" },
///                 },
///                 Record = "job_type:billing_jobs_duration_seconds:99p5m",
///             },
///             new AzureNative.AlertsManagement.Inputs.PrometheusRuleArgs
///             {
///                 Actions = new[]
///                 {
///                     new AzureNative.AlertsManagement.Inputs.PrometheusRuleGroupActionArgs
///                     {
///                         ActionGroupId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myactiongroup",
///                         ActionProperties =
///                         {
///                             { "key11", "value11" },
///                             { "key12", "value12" },
///                         },
///                     },
///                     new AzureNative.AlertsManagement.Inputs.PrometheusRuleGroupActionArgs
///                     {
///                         ActionGroupId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myotheractiongroup",
///                         ActionProperties =
///                         {
///                             { "key21", "value21" },
///                             { "key22", "value22" },
///                         },
///                     },
///                 },
///                 Alert = "Billing_Processing_Very_Slow",
///                 Annotations =
///                 {
///                     { "annotationName1", "annotationValue1" },
///                 },
///                 Enabled = true,
///                 Expression = "job_type:billing_jobs_duration_seconds:99p5m > 30",
///                 For = "PT5M",
///                 Labels =
///                 {
///                     { "team", "prod" },
///                 },
///                 ResolveConfiguration = new AzureNative.AlertsManagement.Inputs.PrometheusRuleResolveConfigurationArgs
///                 {
///                     AutoResolved = true,
///                     TimeToResolve = "PT10M",
///                 },
///                 Severity = 2,
///             },
///         },
///         Scopes = new[]
///         {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace",
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
/// 	alertsmanagement "github.com/pulumi/pulumi-azure-native-sdk/alertsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alertsmanagement.NewPrometheusRuleGroup(ctx, "prometheusRuleGroup", &alertsmanagement.PrometheusRuleGroupArgs{
/// 			ClusterName:       pulumi.String("myClusterName"),
/// 			Description:       pulumi.String("This is the description of the following rule group"),
/// 			Enabled:           pulumi.Bool(true),
/// 			Interval:          pulumi.String("PT10M"),
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("promResourceGroup"),
/// 			RuleGroupName:     pulumi.String("myPrometheusRuleGroup"),
/// 			Rules: alertsmanagement.PrometheusRuleArray{
/// 				&alertsmanagement.PrometheusRuleArgs{
/// 					Expression: pulumi.String("histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\"billing-processing\"}[5m])) by (job_type))"),
/// 					Labels: pulumi.StringMap{
/// 						"team": pulumi.String("prod"),
/// 					},
/// 					Record: pulumi.String("job_type:billing_jobs_duration_seconds:99p5m"),
/// 				},
/// 				&alertsmanagement.PrometheusRuleArgs{
/// 					Actions: alertsmanagement.PrometheusRuleGroupActionArray{
/// 						&alertsmanagement.PrometheusRuleGroupActionArgs{
/// 							ActionGroupId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myactiongroup"),
/// 							ActionProperties: pulumi.StringMap{
/// 								"key11": pulumi.String("value11"),
/// 								"key12": pulumi.String("value12"),
/// 							},
/// 						},
/// 						&alertsmanagement.PrometheusRuleGroupActionArgs{
/// 							ActionGroupId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myotheractiongroup"),
/// 							ActionProperties: pulumi.StringMap{
/// 								"key21": pulumi.String("value21"),
/// 								"key22": pulumi.String("value22"),
/// 							},
/// 						},
/// 					},
/// 					Alert: pulumi.String("Billing_Processing_Very_Slow"),
/// 					Annotations: pulumi.StringMap{
/// 						"annotationName1": pulumi.String("annotationValue1"),
/// 					},
/// 					Enabled:    pulumi.Bool(true),
/// 					Expression: pulumi.String("job_type:billing_jobs_duration_seconds:99p5m > 30"),
/// 					For:        pulumi.String("PT5M"),
/// 					Labels: pulumi.StringMap{
/// 						"team": pulumi.String("prod"),
/// 					},
/// 					ResolveConfiguration: &alertsmanagement.PrometheusRuleResolveConfigurationArgs{
/// 						AutoResolved:  pulumi.Bool(true),
/// 						TimeToResolve: pulumi.String("PT10M"),
/// 					},
/// 					Severity: pulumi.Int(2),
/// 				},
/// 			},
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace"),
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
/// resource "azure-native_alertsmanagement_prometheusrulegroup" "prometheusRuleGroup" {
///   cluster_name        = "myClusterName"
///   description         = "This is the description of the following rule group"
///   enabled             = true
///   interval            = "PT10M"
///   location            = "East US"
///   resource_group_name = "promResourceGroup"
///   rule_group_name     = "myPrometheusRuleGroup"
///   rules {
///     expression = "histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\"billing-processing\"}[5m])) by (job_type))"
///     labels = {
///       "team" = "prod"
///     }
///     record = "job_type:billing_jobs_duration_seconds:99p5m"
///   }
///   rules {
///     actions {
///       action_group_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myactiongroup"
///       action_properties = {
///         "key11" = "value11"
///         "key12" = "value12"
///       }
///     }
///     actions {
///       action_group_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myotheractiongroup"
///       action_properties = {
///         "key21" = "value21"
///         "key22" = "value22"
///       }
///     }
///     alert = "Billing_Processing_Very_Slow"
///     annotations = {
///       "annotationName1" = "annotationValue1"
///     }
///     enabled    = true
///     expression = "job_type:billing_jobs_duration_seconds:99p5m > 30"
///     for        = "PT5M"
///     labels = {
///       "team" = "prod"
///     }
///     resolve_configuration = {
///       auto_resolved   = true
///       time_to_resolve = "PT10M"
///     }
///     severity = 2
///   }
///   scopes = ["/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace"]
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
/// import com.pulumi.azurenative.alertsmanagement.PrometheusRuleGroup;
/// import com.pulumi.azurenative.alertsmanagement.PrometheusRuleGroupArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.PrometheusRuleArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.PrometheusRuleResolveConfigurationArgs;
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
///         var prometheusRuleGroup = new PrometheusRuleGroup("prometheusRuleGroup", PrometheusRuleGroupArgs.builder()
///             .clusterName("myClusterName")
///             .description("This is the description of the following rule group")
///             .enabled(true)
///             .interval("PT10M")
///             .location("East US")
///             .resourceGroupName("promResourceGroup")
///             .ruleGroupName("myPrometheusRuleGroup")
///             .rules(
///                 PrometheusRuleArgs.builder()
///                     .expression("histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\"billing-processing\"}[5m])) by (job_type))")
///                     .labels(Map.of("team", "prod"))
///                     .record("job_type:billing_jobs_duration_seconds:99p5m")
///                     .build(),
///                 PrometheusRuleArgs.builder()
///                     .actions(
///                         PrometheusRuleGroupActionArgs.builder()
///                             .actionGroupId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myactiongroup")
///                             .actionProperties(Map.ofEntries(
///                                 Map.entry("key11", "value11"),
///                                 Map.entry("key12", "value12")
///                             ))
///                             .build(),
///                         PrometheusRuleGroupActionArgs.builder()
///                             .actionGroupId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myotheractiongroup")
///                             .actionProperties(Map.ofEntries(
///                                 Map.entry("key21", "value21"),
///                                 Map.entry("key22", "value22")
///                             ))
///                             .build())
///                     .alert("Billing_Processing_Very_Slow")
///                     .annotations(Map.of("annotationName1", "annotationValue1"))
///                     .enabled(true)
///                     .expression("job_type:billing_jobs_duration_seconds:99p5m > 30")
///                     .for_("PT5M")
///                     .labels(Map.of("team", "prod"))
///                     .resolveConfiguration(PrometheusRuleResolveConfigurationArgs.builder()
///                         .autoResolved(true)
///                         .timeToResolve("PT10M")
///                         .build())
///                     .severity(2)
///                     .build())
///             .scopes("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace")
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
/// const prometheusRuleGroup = new azure_native.alertsmanagement.PrometheusRuleGroup("prometheusRuleGroup", {
///     clusterName: "myClusterName",
///     description: "This is the description of the following rule group",
///     enabled: true,
///     interval: "PT10M",
///     location: "East US",
///     resourceGroupName: "promResourceGroup",
///     ruleGroupName: "myPrometheusRuleGroup",
///     rules: [
///         {
///             expression: "histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\"billing-processing\"}[5m])) by (job_type))",
///             labels: {
///                 team: "prod",
///             },
///             record: "job_type:billing_jobs_duration_seconds:99p5m",
///         },
///         {
///             actions: [
///                 {
///                     actionGroupId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myactiongroup",
///                     actionProperties: {
///                         key11: "value11",
///                         key12: "value12",
///                     },
///                 },
///                 {
///                     actionGroupId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myotheractiongroup",
///                     actionProperties: {
///                         key21: "value21",
///                         key22: "value22",
///                     },
///                 },
///             ],
///             alert: "Billing_Processing_Very_Slow",
///             annotations: {
///                 annotationName1: "annotationValue1",
///             },
///             enabled: true,
///             expression: "job_type:billing_jobs_duration_seconds:99p5m > 30",
///             "for": "PT5M",
///             labels: {
///                 team: "prod",
///             },
///             resolveConfiguration: {
///                 autoResolved: true,
///                 timeToResolve: "PT10M",
///             },
///             severity: 2,
///         },
///     ],
///     scopes: ["/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// prometheus_rule_group = azure_native.alertsmanagement.PrometheusRuleGroup("prometheusRuleGroup",
///     cluster_name="myClusterName",
///     description="This is the description of the following rule group",
///     enabled=True,
///     interval="PT10M",
///     location="East US",
///     resource_group_name="promResourceGroup",
///     rule_group_name="myPrometheusRuleGroup",
///     rules=[
///         {
///             "expression": "histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service=\"billing-processing\"}[5m])) by (job_type))",
///             "labels": {
///                 "team": "prod",
///             },
///             "record": "job_type:billing_jobs_duration_seconds:99p5m",
///         },
///         {
///             "actions": [
///                 {
///                     "action_group_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myactiongroup",
///                     "action_properties": {
///                         "key11": "value11",
///                         "key12": "value12",
///                     },
///                 },
///                 {
///                     "action_group_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myotheractiongroup",
///                     "action_properties": {
///                         "key21": "value21",
///                         "key22": "value22",
///                     },
///                 },
///             ],
///             "alert": "Billing_Processing_Very_Slow",
///             "annotations": {
///                 "annotationName1": "annotationValue1",
///             },
///             "enabled": True,
///             "expression": "job_type:billing_jobs_duration_seconds:99p5m > 30",
///             "for_": "PT5M",
///             "labels": {
///                 "team": "prod",
///             },
///             "resolve_configuration": {
///                 "auto_resolved": True,
///                 "time_to_resolve": "PT10M",
///             },
///             "severity": 2,
///         },
///     ],
///     scopes=["/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace"])
///
/// ```
///
/// ```yaml
/// resources:
///   prometheusRuleGroup:
///     type: azure-native:alertsmanagement:PrometheusRuleGroup
///     properties:
///       clusterName: myClusterName
///       description: This is the description of the following rule group
///       enabled: true
///       interval: PT10M
///       location: East US
///       resourceGroupName: promResourceGroup
///       ruleGroupName: myPrometheusRuleGroup
///       rules:
///         - expression: histogram_quantile(0.99, sum(rate(jobs_duration_seconds_bucket{service="billing-processing"}[5m])) by (job_type))
///           labels:
///             team: prod
///           record: job_type:billing_jobs_duration_seconds:99p5m
///         - actions:
///             - actionGroupId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myactiongroup
///               actionProperties:
///                 key11: value11
///                 key12: value12
///             - actionGroupId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/myrg/providers/microsoft.insights/actiongroups/myotheractiongroup
///               actionProperties:
///                 key21: value21
///                 key22: value22
///           alert: Billing_Processing_Very_Slow
///           annotations:
///             annotationName1: annotationValue1
///           enabled: true
///           expression: job_type:billing_jobs_duration_seconds:99p5m > 30
///           for: PT5M
///           labels:
///             team: prod
///           resolveConfiguration:
///             autoResolved: true
///             timeToResolve: PT10M
///           severity: 2
///       scopes:
///         - /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update a cluster centric PrometheusRuleGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prometheusRuleGroup = new AzureNative.AlertsManagement.PrometheusRuleGroup("prometheusRuleGroup", new()
///     {
///         ClusterName = "myClusterName",
///         Description = "This is a rule group with culster centric configuration",
///         Interval = "PT10M",
///         Location = "East US",
///         ResourceGroupName = "promResourceGroup",
///         RuleGroupName = "myPrometheusRuleGroup",
///         Rules = new[]
///         {
///             new AzureNative.AlertsManagement.Inputs.PrometheusRuleArgs
///             {
///                 Actions = new() { },
///                 Alert = "Billing_Processing_Very_Slow",
///                 Annotations =
///                 {
///                     { "annotationName1", "annotationValue1" },
///                 },
///                 Enabled = true,
///                 Expression = "job_type:billing_jobs_duration_seconds:99p5m > 30",
///                 For = "PT5M",
///                 Labels =
///                 {
///                     { "team", "prod" },
///                 },
///                 ResolveConfiguration = new AzureNative.AlertsManagement.Inputs.PrometheusRuleResolveConfigurationArgs
///                 {
///                     AutoResolved = true,
///                     TimeToResolve = "PT10M",
///                 },
///                 Severity = 2,
///             },
///         },
///         Scopes = new[]
///         {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace",
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myClusterName",
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
/// 	alertsmanagement "github.com/pulumi/pulumi-azure-native-sdk/alertsmanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alertsmanagement.NewPrometheusRuleGroup(ctx, "prometheusRuleGroup", &alertsmanagement.PrometheusRuleGroupArgs{
/// 			ClusterName:       pulumi.String("myClusterName"),
/// 			Description:       pulumi.String("This is a rule group with culster centric configuration"),
/// 			Interval:          pulumi.String("PT10M"),
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("promResourceGroup"),
/// 			RuleGroupName:     pulumi.String("myPrometheusRuleGroup"),
/// 			Rules: alertsmanagement.PrometheusRuleArray{
/// 				&alertsmanagement.PrometheusRuleArgs{
/// 					Actions: alertsmanagement.PrometheusRuleGroupActionArray{},
/// 					Alert:   pulumi.String("Billing_Processing_Very_Slow"),
/// 					Annotations: pulumi.StringMap{
/// 						"annotationName1": pulumi.String("annotationValue1"),
/// 					},
/// 					Enabled:    pulumi.Bool(true),
/// 					Expression: pulumi.String("job_type:billing_jobs_duration_seconds:99p5m > 30"),
/// 					For:        pulumi.String("PT5M"),
/// 					Labels: pulumi.StringMap{
/// 						"team": pulumi.String("prod"),
/// 					},
/// 					ResolveConfiguration: &alertsmanagement.PrometheusRuleResolveConfigurationArgs{
/// 						AutoResolved:  pulumi.Bool(true),
/// 						TimeToResolve: pulumi.String("PT10M"),
/// 					},
/// 					Severity: pulumi.Int(2),
/// 				},
/// 			},
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace"),
/// 				pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myClusterName"),
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
/// resource "azure-native_alertsmanagement_prometheusrulegroup" "prometheusRuleGroup" {
///   cluster_name        = "myClusterName"
///   description         = "This is a rule group with culster centric configuration"
///   interval            = "PT10M"
///   location            = "East US"
///   resource_group_name = "promResourceGroup"
///   rule_group_name     = "myPrometheusRuleGroup"
///   rules {
///     alert = "Billing_Processing_Very_Slow"
///     annotations = {
///       "annotationName1" = "annotationValue1"
///     }
///     enabled    = true
///     expression = "job_type:billing_jobs_duration_seconds:99p5m > 30"
///     for        = "PT5M"
///     labels = {
///       "team" = "prod"
///     }
///     resolve_configuration = {
///       auto_resolved   = true
///       time_to_resolve = "PT10M"
///     }
///     severity = 2
///   }
///   scopes = ["/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace", "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myClusterName"]
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
/// import com.pulumi.azurenative.alertsmanagement.PrometheusRuleGroup;
/// import com.pulumi.azurenative.alertsmanagement.PrometheusRuleGroupArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.PrometheusRuleArgs;
/// import com.pulumi.azurenative.alertsmanagement.inputs.PrometheusRuleResolveConfigurationArgs;
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
///         var prometheusRuleGroup = new PrometheusRuleGroup("prometheusRuleGroup", PrometheusRuleGroupArgs.builder()
///             .clusterName("myClusterName")
///             .description("This is a rule group with culster centric configuration")
///             .interval("PT10M")
///             .location("East US")
///             .resourceGroupName("promResourceGroup")
///             .ruleGroupName("myPrometheusRuleGroup")
///             .rules(PrometheusRuleArgs.builder()
///                 .actions()
///                 .alert("Billing_Processing_Very_Slow")
///                 .annotations(Map.of("annotationName1", "annotationValue1"))
///                 .enabled(true)
///                 .expression("job_type:billing_jobs_duration_seconds:99p5m > 30")
///                 .for_("PT5M")
///                 .labels(Map.of("team", "prod"))
///                 .resolveConfiguration(PrometheusRuleResolveConfigurationArgs.builder()
///                     .autoResolved(true)
///                     .timeToResolve("PT10M")
///                     .build())
///                 .severity(2)
///                 .build())
///             .scopes(
///                 "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace",
///                 "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myClusterName")
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
/// const prometheusRuleGroup = new azure_native.alertsmanagement.PrometheusRuleGroup("prometheusRuleGroup", {
///     clusterName: "myClusterName",
///     description: "This is a rule group with culster centric configuration",
///     interval: "PT10M",
///     location: "East US",
///     resourceGroupName: "promResourceGroup",
///     ruleGroupName: "myPrometheusRuleGroup",
///     rules: [{
///         actions: [],
///         alert: "Billing_Processing_Very_Slow",
///         annotations: {
///             annotationName1: "annotationValue1",
///         },
///         enabled: true,
///         expression: "job_type:billing_jobs_duration_seconds:99p5m > 30",
///         "for": "PT5M",
///         labels: {
///             team: "prod",
///         },
///         resolveConfiguration: {
///             autoResolved: true,
///             timeToResolve: "PT10M",
///         },
///         severity: 2,
///     }],
///     scopes: [
///         "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace",
///         "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myClusterName",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// prometheus_rule_group = azure_native.alertsmanagement.PrometheusRuleGroup("prometheusRuleGroup",
///     cluster_name="myClusterName",
///     description="This is a rule group with culster centric configuration",
///     interval="PT10M",
///     location="East US",
///     resource_group_name="promResourceGroup",
///     rule_group_name="myPrometheusRuleGroup",
///     rules=[{
///         "actions": [],
///         "alert": "Billing_Processing_Very_Slow",
///         "annotations": {
///             "annotationName1": "annotationValue1",
///         },
///         "enabled": True,
///         "expression": "job_type:billing_jobs_duration_seconds:99p5m > 30",
///         "for_": "PT5M",
///         "labels": {
///             "team": "prod",
///         },
///         "resolve_configuration": {
///             "auto_resolved": True,
///             "time_to_resolve": "PT10M",
///         },
///         "severity": 2,
///     }],
///     scopes=[
///         "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace",
///         "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myClusterName",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   prometheusRuleGroup:
///     type: azure-native:alertsmanagement:PrometheusRuleGroup
///     properties:
///       clusterName: myClusterName
///       description: This is a rule group with culster centric configuration
///       interval: PT10M
///       location: East US
///       resourceGroupName: promResourceGroup
///       ruleGroupName: myPrometheusRuleGroup
///       rules:
///         - actions: []
///           alert: Billing_Processing_Very_Slow
///           annotations:
///             annotationName1: annotationValue1
///           enabled: true
///           expression: job_type:billing_jobs_duration_seconds:99p5m > 30
///           for: PT5M
///           labels:
///             team: prod
///           resolveConfiguration:
///             autoResolved: true
///             timeToResolve: PT10M
///           severity: 2
///       scopes:
///         - /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/microsoft.monitor/accounts/myAzureMonitorWorkspace
///         - /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/myResourceGroup/providers/Microsoft.ContainerService/managedClusters/myClusterName
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
/// $ pulumi import azure-native:alertsmanagement:PrometheusRuleGroup myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AlertsManagement/prometheusRuleGroups/{ruleGroupName}
/// ```
class PrometheusRuleGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Apply rule to data from a specific cluster.
  late final pulumi.Output<String?> clusterName;
  /// Rule group description.
  late final pulumi.Output<String?> description;
  /// Enable/disable rule group.
  late final pulumi.Output<bool?> enabled;
  /// The interval in which to run the Prometheus rule group represented in ISO 8601 duration format. Should be between 1 and 15 minutes
  late final pulumi.Output<String?> interval;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Defines the rules in the Prometheus rule group.
  late final pulumi.Output<List<PrometheusRuleResponse>> rules;
  /// Target Azure Monitor workspaces resource ids. This api-version is currently limited to creating with one scope. This may change in future.
  late final pulumi.Output<List<String>> scopes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [PrometheusRuleGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrometheusRuleGroup]. {@macro pulumi_alertsmanagement_prometheus_rule_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrometheusRuleGroup(
    String name, {
    PrometheusRuleGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:alertsmanagement:PrometheusRuleGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterName = registerOutput<String?>('clusterName');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    interval = registerOutput<String?>('interval');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    rules = registerOutput<List<PrometheusRuleResponse>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrometheusRuleResponse>(guardedValue, (value) => PrometheusRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [PrometheusRuleGroup] resource.
  PrometheusRuleGroup.reference(String urn)
    : super(
        'azure-native:alertsmanagement:PrometheusRuleGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterName = registerOutput<String?>('clusterName');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool?>('enabled');
    interval = registerOutput<String?>('interval');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    rules = registerOutput<List<PrometheusRuleResponse>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrometheusRuleResponse>(guardedValue, (value) => PrometheusRuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    scopes = registerOutput<List<String>>('scopes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
