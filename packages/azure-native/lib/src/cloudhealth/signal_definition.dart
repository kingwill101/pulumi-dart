import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_analytics_query_signal_definition_properties_response.dart';
import 'signal_definition_args.dart';
import 'system_data_response.dart';

/// A signal definition in a health model
///
/// Uses Azure REST API version 2025-05-01-preview.
///
/// Other available API versions: 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cloudhealth [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var signalDefinition = new AzureNative.CloudHealth.SignalDefinition("signalDefinition", new()
///     {
///         HealthModelName = "myHealthModel",
///         Properties = new AzureNative.CloudHealth.Inputs.ResourceMetricSignalDefinitionPropertiesArgs
///         {
///             AggregationType = AzureNative.CloudHealth.MetricAggregationType.None,
///             DataUnit = "byte",
///             Dimension = "nodename",
///             DimensionFilter = "node1",
///             DisplayName = "cpu usage",
///             EvaluationRules = new AzureNative.CloudHealth.Inputs.EvaluationRuleArgs
///             {
///                 DegradedRule = new AzureNative.CloudHealth.Inputs.ThresholdRuleArgs
///                 {
///                     Operator = AzureNative.CloudHealth.SignalOperator.LowerThan,
///                     Threshold = "65",
///                 },
///                 UnhealthyRule = new AzureNative.CloudHealth.Inputs.ThresholdRuleArgs
///                 {
///                     Operator = AzureNative.CloudHealth.SignalOperator.LowerThan,
///                     Threshold = "60",
///                 },
///             },
///             Labels =
///             {
///                 { "key4788", "ixfvzsfnpvkkbrce" },
///             },
///             MetricName = "cpuusage",
///             MetricNamespace = "microsoft.compute/virtualMachines",
///             RefreshInterval = AzureNative.CloudHealth.RefreshInterval.PT1M,
///             SignalKind = "AzureResourceMetric",
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
/// 	cloudhealth "github.com/pulumi/pulumi-azure-native-sdk/cloudhealth/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudhealth.NewSignalDefinition(ctx, "signalDefinition", &cloudhealth.SignalDefinitionArgs{
/// 			HealthModelName: pulumi.String("myHealthModel"),
/// 			Properties: &cloudhealth.ResourceMetricSignalDefinitionPropertiesArgs{
/// 				AggregationType: pulumi.String(cloudhealth.MetricAggregationTypeNone),
/// 				DataUnit:        pulumi.String("byte"),
/// 				Dimension:       pulumi.String("nodename"),
/// 				DimensionFilter: pulumi.String("node1"),
/// 				DisplayName:     pulumi.String("cpu usage"),
/// 				EvaluationRules: &cloudhealth.EvaluationRuleArgs{
/// 					DegradedRule: &cloudhealth.ThresholdRuleArgs{
/// 						Operator:  pulumi.String(cloudhealth.SignalOperatorLowerThan),
/// 						Threshold: pulumi.String("65"),
/// 					},
/// 					UnhealthyRule: &cloudhealth.ThresholdRuleArgs{
/// 						Operator:  pulumi.String(cloudhealth.SignalOperatorLowerThan),
/// 						Threshold: pulumi.String("60"),
/// 					},
/// 				},
/// 				Labels: pulumi.StringMap{
/// 					"key4788": pulumi.String("ixfvzsfnpvkkbrce"),
/// 				},
/// 				MetricName:      pulumi.String("cpuusage"),
/// 				MetricNamespace: pulumi.String("microsoft.compute/virtualMachines"),
/// 				RefreshInterval: pulumi.String(cloudhealth.RefreshIntervalPT1M),
/// 				SignalKind:      pulumi.String("AzureResourceMetric"),
/// 				TimeGrain:       pulumi.String("PT1M"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.cloudhealth.SignalDefinition;
/// import com.pulumi.azurenative.cloudhealth.SignalDefinitionArgs;
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
///         var signalDefinition = new SignalDefinition("signalDefinition", SignalDefinitionArgs.builder()
///             .healthModelName("myHealthModel")
///             .properties(ResourceMetricSignalDefinitionPropertiesArgs.builder()
///                 .aggregationType("None")
///                 .dataUnit("byte")
///                 .dimension("nodename")
///                 .dimensionFilter("node1")
///                 .displayName("cpu usage")
///                 .evaluationRules(EvaluationRuleArgs.builder()
///                     .degradedRule(ThresholdRuleArgs.builder()
///                         .operator("LowerThan")
///                         .threshold("65")
///                         .build())
///                     .unhealthyRule(ThresholdRuleArgs.builder()
///                         .operator("LowerThan")
///                         .threshold("60")
///                         .build())
///                     .build())
///                 .labels(Map.of("key4788", "ixfvzsfnpvkkbrce"))
///                 .metricName("cpuusage")
///                 .metricNamespace("microsoft.compute/virtualMachines")
///                 .refreshInterval("PT1M")
///                 .signalKind("AzureResourceMetric")
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
/// const signalDefinition = new azure_native.cloudhealth.SignalDefinition("signalDefinition", {
///     healthModelName: "myHealthModel",
///     properties: {
///         aggregationType: azure_native.cloudhealth.MetricAggregationType.None,
///         dataUnit: "byte",
///         dimension: "nodename",
///         dimensionFilter: "node1",
///         displayName: "cpu usage",
///         evaluationRules: {
///             degradedRule: {
///                 operator: azure_native.cloudhealth.SignalOperator.LowerThan,
///                 threshold: "65",
///             },
///             unhealthyRule: {
///                 operator: azure_native.cloudhealth.SignalOperator.LowerThan,
///                 threshold: "60",
///             },
///         },
///         labels: {
///             key4788: "ixfvzsfnpvkkbrce",
///         },
///         metricName: "cpuusage",
///         metricNamespace: "microsoft.compute/virtualMachines",
///         refreshInterval: azure_native.cloudhealth.RefreshInterval.PT1M,
///         signalKind: "AzureResourceMetric",
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
/// signal_definition = azure_native.cloudhealth.SignalDefinition("signalDefinition",
///     health_model_name="myHealthModel",
///     properties={
///         "aggregation_type": azure_native.cloudhealth.MetricAggregationType.NONE,
///         "data_unit": "byte",
///         "dimension": "nodename",
///         "dimension_filter": "node1",
///         "display_name": "cpu usage",
///         "evaluation_rules": {
///             "degraded_rule": {
///                 "operator": azure_native.cloudhealth.SignalOperator.LOWER_THAN,
///                 "threshold": "65",
///             },
///             "unhealthy_rule": {
///                 "operator": azure_native.cloudhealth.SignalOperator.LOWER_THAN,
///                 "threshold": "60",
///             },
///         },
///         "labels": {
///             "key4788": "ixfvzsfnpvkkbrce",
///         },
///         "metric_name": "cpuusage",
///         "metric_namespace": "microsoft.compute/virtualMachines",
///         "refresh_interval": azure_native.cloudhealth.RefreshInterval.PT1_M,
///         "signal_kind": "AzureResourceMetric",
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
///     type: azure-native:cloudhealth:SignalDefinition
///     properties:
///       healthModelName: myHealthModel
///       properties:
///         aggregationType: None
///         dataUnit: byte
///         dimension: nodename
///         dimensionFilter: node1
///         displayName: cpu usage
///         evaluationRules:
///           degradedRule:
///             operator: LowerThan
///             threshold: '65'
///           unhealthyRule:
///             operator: LowerThan
///             threshold: '60'
///         labels:
///           key4788: ixfvzsfnpvkkbrce
///         metricName: cpuusage
///         metricNamespace: microsoft.compute/virtualMachines
///         refreshInterval: PT1M
///         signalKind: AzureResourceMetric
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
/// $ pulumi import azure-native:cloudhealth:SignalDefinition sig1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CloudHealth/healthmodels/{healthModelName}/signaldefinitions/{signalDefinitionName}
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
  /// [args] Arguments used to configure this [SignalDefinition]. {@macro pulumi_cloudhealth_signal_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SignalDefinition(
    String name, {
    SignalDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cloudhealth:SignalDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<LogAnalyticsQuerySignalDefinitionPropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
