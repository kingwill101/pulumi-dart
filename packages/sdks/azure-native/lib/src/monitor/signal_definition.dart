import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_query_signal_definition_properties_response.dart';
import 'signal_definition_args.dart';
import 'system_data_response.dart';

/// A signal definition in a health model
///
/// Uses Azure REST API version 2025-05-03-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SignalDefinitions_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var signalDefinition = new AzureNative.Monitor.SignalDefinition("signalDefinition", new()
///     {
///         AzureMonitorWorkspaceName = "myWorkspace",
///         HealthModelName = "myHealthModel",
///         Properties = new AzureNative.Monitor.Inputs.ResourceMetricSignalDefinitionPropertiesArgs
///         {
///             AggregationType = AzureNative.Monitor.MetricAggregationType.Average,
///             DataUnit = "byte",
///             Dimension = "nodename",
///             DimensionFilter = "node1",
///             DisplayName = "cpu usage",
///             EvaluationRules = new AzureNative.Monitor.Inputs.EvaluationRuleArgs
///             {
///                 DegradedRule = new AzureNative.Monitor.Inputs.ThresholdRuleArgs
///                 {
///                     Operator = AzureNative.Monitor.SignalOperator.LessThan,
///                     Threshold = "65",
///                 },
///                 UnhealthyRule = new AzureNative.Monitor.Inputs.ThresholdRuleArgs
///                 {
///                     Operator = AzureNative.Monitor.SignalOperator.LessThan,
///                     Threshold = "60",
///                 },
///             },
///             MetricName = "cpuusage",
///             MetricNamespace = "microsoft.compute/virtualMachines",
///             RefreshInterval = AzureNative.Monitor.RefreshInterval.PT1M,
///             SignalKind = "AzureResourceMetric",
///             Tags =
///             {
///                 { "key4788", "ixfvzsfnpvkkbrce" },
///             },
///             TimeGrain = "PT1M",
///         },
///         ResourceGroupName = "rgopenapi",
///         SignalDefinitionName = "sig1",
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
/// 		_, err := monitor.NewSignalDefinition(ctx, "signalDefinition", &monitor.SignalDefinitionArgs{
/// 			AzureMonitorWorkspaceName: pulumi.String("myWorkspace"),
/// 			HealthModelName:           pulumi.String("myHealthModel"),
/// 			Properties: &monitor.ResourceMetricSignalDefinitionPropertiesArgs{
/// 				AggregationType: pulumi.String(monitor.MetricAggregationTypeAverage),
/// 				DataUnit:        pulumi.String("byte"),
/// 				Dimension:       pulumi.String("nodename"),
/// 				DimensionFilter: pulumi.String("node1"),
/// 				DisplayName:     pulumi.String("cpu usage"),
/// 				EvaluationRules: &monitor.EvaluationRuleArgs{
/// 					DegradedRule: &monitor.ThresholdRuleArgs{
/// 						Operator:  pulumi.String(monitor.SignalOperatorLessThan),
/// 						Threshold: pulumi.String("65"),
/// 					},
/// 					UnhealthyRule: &monitor.ThresholdRuleArgs{
/// 						Operator:  pulumi.String(monitor.SignalOperatorLessThan),
/// 						Threshold: pulumi.String("60"),
/// 					},
/// 				},
/// 				MetricName:      pulumi.String("cpuusage"),
/// 				MetricNamespace: pulumi.String("microsoft.compute/virtualMachines"),
/// 				RefreshInterval: pulumi.String(monitor.RefreshIntervalPT1M),
/// 				SignalKind:      pulumi.String("AzureResourceMetric"),
/// 				Tags: pulumi.StringMap{
/// 					"key4788": pulumi.String("ixfvzsfnpvkkbrce"),
/// 				},
/// 				TimeGrain: pulumi.String("PT1M"),
/// 			},
/// 			ResourceGroupName:    pulumi.String("rgopenapi"),
/// 			SignalDefinitionName: pulumi.String("sig1"),
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
/// resource "azure-native_monitor_signaldefinition" "signalDefinition" {
///   azure_monitor_workspace_name = "myWorkspace"
///   health_model_name            = "myHealthModel"
///   properties = {
///     "aggregationType" = "Average"
///     "dataUnit"        = "byte"
///     "dimension"       = "nodename"
///     "dimensionFilter" = "node1"
///     "displayName"     = "cpu usage"
///     "evaluationRules" = {
///       "degradedRule" = {
///         "operator"  = "LessThan"
///         "threshold" = "65"
///       }
///       "unhealthyRule" = {
///         "operator"  = "LessThan"
///         "threshold" = "60"
///       }
///     }
///     "metricName"      = "cpuusage"
///     "metricNamespace" = "microsoft.compute/virtualMachines"
///     "refreshInterval" = "PT1M"
///     "signalKind"      = "AzureResourceMetric"
///     "tags" = {
///       "key4788" = "ixfvzsfnpvkkbrce"
///     }
///     "timeGrain" = "PT1M"
///   }
///   resource_group_name    = "rgopenapi"
///   signal_definition_name = "sig1"
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
/// import com.pulumi.azurenative.monitor.SignalDefinition;
/// import com.pulumi.azurenative.monitor.SignalDefinitionArgs;
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
///         var signalDefinition = new SignalDefinition("signalDefinition", SignalDefinitionArgs.builder()
///             .azureMonitorWorkspaceName("myWorkspace")
///             .healthModelName("myHealthModel")
///             .properties(ResourceMetricSignalDefinitionPropertiesArgs.builder()
///                 .aggregationType("Average")
///                 .dataUnit("byte")
///                 .dimension("nodename")
///                 .dimensionFilter("node1")
///                 .displayName("cpu usage")
///                 .evaluationRules(EvaluationRuleArgs.builder()
///                     .degradedRule(ThresholdRuleArgs.builder()
///                         .operator("LessThan")
///                         .threshold("65")
///                         .build())
///                     .unhealthyRule(ThresholdRuleArgs.builder()
///                         .operator("LessThan")
///                         .threshold("60")
///                         .build())
///                     .build())
///                 .metricName("cpuusage")
///                 .metricNamespace("microsoft.compute/virtualMachines")
///                 .refreshInterval("PT1M")
///                 .signalKind("AzureResourceMetric")
///                 .tags(Map.of("key4788", "ixfvzsfnpvkkbrce"))
///                 .timeGrain("PT1M")
///                 .build())
///             .resourceGroupName("rgopenapi")
///             .signalDefinitionName("sig1")
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
/// const signalDefinition = new azure_native.monitor.SignalDefinition("signalDefinition", {
///     azureMonitorWorkspaceName: "myWorkspace",
///     healthModelName: "myHealthModel",
///     properties: {
///         aggregationType: azure_native.monitor.MetricAggregationType.Average,
///         dataUnit: "byte",
///         dimension: "nodename",
///         dimensionFilter: "node1",
///         displayName: "cpu usage",
///         evaluationRules: {
///             degradedRule: {
///                 operator: azure_native.monitor.SignalOperator.LessThan,
///                 threshold: "65",
///             },
///             unhealthyRule: {
///                 operator: azure_native.monitor.SignalOperator.LessThan,
///                 threshold: "60",
///             },
///         },
///         metricName: "cpuusage",
///         metricNamespace: "microsoft.compute/virtualMachines",
///         refreshInterval: azure_native.monitor.RefreshInterval.PT1M,
///         signalKind: "AzureResourceMetric",
///         tags: {
///             key4788: "ixfvzsfnpvkkbrce",
///         },
///         timeGrain: "PT1M",
///     },
///     resourceGroupName: "rgopenapi",
///     signalDefinitionName: "sig1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// signal_definition = azure_native.monitor.SignalDefinition("signalDefinition",
///     azure_monitor_workspace_name="myWorkspace",
///     health_model_name="myHealthModel",
///     properties={
///         "aggregation_type": azure_native.monitor.MetricAggregationType.AVERAGE,
///         "data_unit": "byte",
///         "dimension": "nodename",
///         "dimension_filter": "node1",
///         "display_name": "cpu usage",
///         "evaluation_rules": {
///             "degraded_rule": {
///                 "operator": azure_native.monitor.SignalOperator.LESS_THAN,
///                 "threshold": "65",
///             },
///             "unhealthy_rule": {
///                 "operator": azure_native.monitor.SignalOperator.LESS_THAN,
///                 "threshold": "60",
///             },
///         },
///         "metric_name": "cpuusage",
///         "metric_namespace": "microsoft.compute/virtualMachines",
///         "refresh_interval": azure_native.monitor.RefreshInterval.PT1_M,
///         "signal_kind": "AzureResourceMetric",
///         "tags": {
///             "key4788": "ixfvzsfnpvkkbrce",
///         },
///         "time_grain": "PT1M",
///     },
///     resource_group_name="rgopenapi",
///     signal_definition_name="sig1")
///
/// ```
///
/// ```yaml
/// resources:
///   signalDefinition:
///     type: azure-native:monitor:SignalDefinition
///     properties:
///       azureMonitorWorkspaceName: myWorkspace
///       healthModelName: myHealthModel
///       properties:
///         aggregationType: Average
///         dataUnit: byte
///         dimension: nodename
///         dimensionFilter: node1
///         displayName: cpu usage
///         evaluationRules:
///           degradedRule:
///             operator: LessThan
///             threshold: '65'
///           unhealthyRule:
///             operator: LessThan
///             threshold: '60'
///         metricName: cpuusage
///         metricNamespace: microsoft.compute/virtualMachines
///         refreshInterval: PT1M
///         signalKind: AzureResourceMetric
///         tags:
///           key4788: ixfvzsfnpvkkbrce
///         timeGrain: PT1M
///       resourceGroupName: rgopenapi
///       signalDefinitionName: sig1
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
/// $ pulumi import azure-native:monitor:SignalDefinition sig1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Monitor/accounts/{azureMonitorWorkspaceName}/healthmodels/{healthModelName}/signaldefinitions/{signalDefinitionName}
/// ```
class SignalDefinition extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<LogAnalyticsQuerySignalDefinitionPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SignalDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SignalDefinition]. {@macro pulumi_monitor_signal_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SignalDefinition(
    String name, {
    SignalDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:monitor:SignalDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LogAnalyticsQuerySignalDefinitionPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LogAnalyticsQuerySignalDefinitionPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
