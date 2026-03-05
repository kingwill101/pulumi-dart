import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitored_subscription_args.dart';
import 'subscription_list_response.dart';

/// The request to update subscriptions needed to be monitored by the Datadog monitor resource.
///
/// Uses Azure REST API version 2023-10-20. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2023-01-01, 2023-07-07, 2024-03-01, 2025-01-07, 2025-06-11, 2025-11-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datadog [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Monitors_AddMonitoredSubscriptions
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var monitoredSubscription = new AzureNative.Datadog.MonitoredSubscription("monitoredSubscription", new()
///     {
///         ConfigurationName = "default",
///         MonitorName = "myMonitor",
///         Properties = new AzureNative.Datadog.Inputs.SubscriptionListArgs
///         {
///             MonitoredSubscriptionList = new[]
///             {
///                 new AzureNative.Datadog.Inputs.MonitoredSubscriptionArgs
///                 {
///                     Status = AzureNative.Datadog.Status.Active,
///                     SubscriptionId = "/subscriptions/00000000-0000-0000-0000-000000000000",
///                     TagRules = new AzureNative.Datadog.Inputs.MonitoringTagRulesPropertiesArgs
///                     {
///                         Automuting = true,
///                         LogRules = new AzureNative.Datadog.Inputs.LogRulesArgs
///                         {
///                             FilteringTags = new[]
///                             {
///                                 new AzureNative.Datadog.Inputs.FilteringTagArgs
///                                 {
///                                     Action = AzureNative.Datadog.TagAction.Include,
///                                     Name = "Environment",
///                                     Value = "Prod",
///                                 },
///                                 new AzureNative.Datadog.Inputs.FilteringTagArgs
///                                 {
///                                     Action = AzureNative.Datadog.TagAction.Exclude,
///                                     Name = "Environment",
///                                     Value = "Dev",
///                                 },
///                             },
///                             SendAadLogs = false,
///                             SendResourceLogs = true,
///                             SendSubscriptionLogs = true,
///                         },
///                         MetricRules = new AzureNative.Datadog.Inputs.MetricRulesArgs
///                         {
///                             FilteringTags = new() { },
///                         },
///                     },
///                 },
///                 new AzureNative.Datadog.Inputs.MonitoredSubscriptionArgs
///                 {
///                     Status = AzureNative.Datadog.Status.Failed,
///                     SubscriptionId = "/subscriptions/00000000-0000-0000-0000-000000000001",
///                     TagRules = new AzureNative.Datadog.Inputs.MonitoringTagRulesPropertiesArgs
///                     {
///                         Automuting = true,
///                         LogRules = new AzureNative.Datadog.Inputs.LogRulesArgs
///                         {
///                             FilteringTags = new[]
///                             {
///                                 new AzureNative.Datadog.Inputs.FilteringTagArgs
///                                 {
///                                     Action = AzureNative.Datadog.TagAction.Include,
///                                     Name = "Environment",
///                                     Value = "Prod",
///                                 },
///                                 new AzureNative.Datadog.Inputs.FilteringTagArgs
///                                 {
///                                     Action = AzureNative.Datadog.TagAction.Exclude,
///                                     Name = "Environment",
///                                     Value = "Dev",
///                                 },
///                             },
///                             SendAadLogs = false,
///                             SendResourceLogs = true,
///                             SendSubscriptionLogs = true,
///                         },
///                         MetricRules = new AzureNative.Datadog.Inputs.MetricRulesArgs
///                         {
///                             FilteringTags = new() { },
///                         },
///                     },
///                 },
///             },
///             Operation = AzureNative.Datadog.Operation.AddBegin,
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 	datadog "github.com/pulumi/pulumi-azure-native-sdk/datadog/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datadog.NewMonitoredSubscription(ctx, "monitoredSubscription", &datadog.MonitoredSubscriptionArgs{
/// 			ConfigurationName: pulumi.String("default"),
/// 			MonitorName:       pulumi.String("myMonitor"),
/// 			Properties: &datadog.SubscriptionListArgs{
/// 				MonitoredSubscriptionList: datadog.MonitoredSubscriptionTypeArray{
/// 					&datadog.MonitoredSubscriptionTypeArgs{
/// 						Status:         pulumi.String(datadog.StatusActive),
/// 						SubscriptionId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000"),
/// 						TagRules: &datadog.MonitoringTagRulesPropertiesArgs{
/// 							Automuting: pulumi.Bool(true),
/// 							LogRules: &datadog.LogRulesArgs{
/// 								FilteringTags: datadog.FilteringTagArray{
/// 									&datadog.FilteringTagArgs{
/// 										Action: pulumi.String(datadog.TagActionInclude),
/// 										Name:   pulumi.String("Environment"),
/// 										Value:  pulumi.String("Prod"),
/// 									},
/// 									&datadog.FilteringTagArgs{
/// 										Action: pulumi.String(datadog.TagActionExclude),
/// 										Name:   pulumi.String("Environment"),
/// 										Value:  pulumi.String("Dev"),
/// 									},
/// 								},
/// 								SendAadLogs:          pulumi.Bool(false),
/// 								SendResourceLogs:     pulumi.Bool(true),
/// 								SendSubscriptionLogs: pulumi.Bool(true),
/// 							},
/// 							MetricRules: &datadog.MetricRulesArgs{
/// 								FilteringTags: datadog.FilteringTagArray{},
/// 							},
/// 						},
/// 					},
/// 					&datadog.MonitoredSubscriptionTypeArgs{
/// 						Status:         pulumi.String(datadog.StatusFailed),
/// 						SubscriptionId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000001"),
/// 						TagRules: &datadog.MonitoringTagRulesPropertiesArgs{
/// 							Automuting: pulumi.Bool(true),
/// 							LogRules: &datadog.LogRulesArgs{
/// 								FilteringTags: datadog.FilteringTagArray{
/// 									&datadog.FilteringTagArgs{
/// 										Action: pulumi.String(datadog.TagActionInclude),
/// 										Name:   pulumi.String("Environment"),
/// 										Value:  pulumi.String("Prod"),
/// 									},
/// 									&datadog.FilteringTagArgs{
/// 										Action: pulumi.String(datadog.TagActionExclude),
/// 										Name:   pulumi.String("Environment"),
/// 										Value:  pulumi.String("Dev"),
/// 									},
/// 								},
/// 								SendAadLogs:          pulumi.Bool(false),
/// 								SendResourceLogs:     pulumi.Bool(true),
/// 								SendSubscriptionLogs: pulumi.Bool(true),
/// 							},
/// 							MetricRules: &datadog.MetricRulesArgs{
/// 								FilteringTags: datadog.FilteringTagArray{},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Operation: pulumi.String(datadog.OperationAddBegin),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// import com.pulumi.azurenative.datadog.MonitoredSubscription;
/// import com.pulumi.azurenative.datadog.MonitoredSubscriptionArgs;
/// import com.pulumi.azurenative.datadog.inputs.SubscriptionListArgs;
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
///         var monitoredSubscription = new MonitoredSubscription("monitoredSubscription", MonitoredSubscriptionArgs.builder()
///             .configurationName("default")
///             .monitorName("myMonitor")
///             .properties(SubscriptionListArgs.builder()
///                 .monitoredSubscriptionList(
///                     MonitoredSubscriptionArgs.builder()
///                         .status("Active")
///                         .subscriptionId("/subscriptions/00000000-0000-0000-0000-000000000000")
///                         .tagRules(MonitoringTagRulesPropertiesArgs.builder()
///                             .automuting(true)
///                             .logRules(LogRulesArgs.builder()
///                                 .filteringTags(
///                                     FilteringTagArgs.builder()
///                                         .action("Include")
///                                         .name("Environment")
///                                         .value("Prod")
///                                         .build(),
///                                     FilteringTagArgs.builder()
///                                         .action("Exclude")
///                                         .name("Environment")
///                                         .value("Dev")
///                                         .build())
///                                 .sendAadLogs(false)
///                                 .sendResourceLogs(true)
///                                 .sendSubscriptionLogs(true)
///                                 .build())
///                             .metricRules(MetricRulesArgs.builder()
///                                 .filteringTags()
///                                 .build())
///                             .build())
///                         .build(),
///                     MonitoredSubscriptionArgs.builder()
///                         .status("Failed")
///                         .subscriptionId("/subscriptions/00000000-0000-0000-0000-000000000001")
///                         .tagRules(MonitoringTagRulesPropertiesArgs.builder()
///                             .automuting(true)
///                             .logRules(LogRulesArgs.builder()
///                                 .filteringTags(
///                                     FilteringTagArgs.builder()
///                                         .action("Include")
///                                         .name("Environment")
///                                         .value("Prod")
///                                         .build(),
///                                     FilteringTagArgs.builder()
///                                         .action("Exclude")
///                                         .name("Environment")
///                                         .value("Dev")
///                                         .build())
///                                 .sendAadLogs(false)
///                                 .sendResourceLogs(true)
///                                 .sendSubscriptionLogs(true)
///                                 .build())
///                             .metricRules(MetricRulesArgs.builder()
///                                 .filteringTags()
///                                 .build())
///                             .build())
///                         .build())
///                 .operation("AddBegin")
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const monitoredSubscription = new azure_native.datadog.MonitoredSubscription("monitoredSubscription", {
///     configurationName: "default",
///     monitorName: "myMonitor",
///     properties: {
///         monitoredSubscriptionList: [
///             {
///                 status: azure_native.datadog.Status.Active,
///                 subscriptionId: "/subscriptions/00000000-0000-0000-0000-000000000000",
///                 tagRules: {
///                     automuting: true,
///                     logRules: {
///                         filteringTags: [
///                             {
///                                 action: azure_native.datadog.TagAction.Include,
///                                 name: "Environment",
///                                 value: "Prod",
///                             },
///                             {
///                                 action: azure_native.datadog.TagAction.Exclude,
///                                 name: "Environment",
///                                 value: "Dev",
///                             },
///                         ],
///                         sendAadLogs: false,
///                         sendResourceLogs: true,
///                         sendSubscriptionLogs: true,
///                     },
///                     metricRules: {
///                         filteringTags: [],
///                     },
///                 },
///             },
///             {
///                 status: azure_native.datadog.Status.Failed,
///                 subscriptionId: "/subscriptions/00000000-0000-0000-0000-000000000001",
///                 tagRules: {
///                     automuting: true,
///                     logRules: {
///                         filteringTags: [
///                             {
///                                 action: azure_native.datadog.TagAction.Include,
///                                 name: "Environment",
///                                 value: "Prod",
///                             },
///                             {
///                                 action: azure_native.datadog.TagAction.Exclude,
///                                 name: "Environment",
///                                 value: "Dev",
///                             },
///                         ],
///                         sendAadLogs: false,
///                         sendResourceLogs: true,
///                         sendSubscriptionLogs: true,
///                     },
///                     metricRules: {
///                         filteringTags: [],
///                     },
///                 },
///             },
///         ],
///         operation: azure_native.datadog.Operation.AddBegin,
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// monitored_subscription = azure_native.datadog.MonitoredSubscription("monitoredSubscription",
///     configuration_name="default",
///     monitor_name="myMonitor",
///     properties={
///         "monitored_subscription_list": [
///             {
///                 "status": azure_native.datadog.Status.ACTIVE,
///                 "subscription_id": "/subscriptions/00000000-0000-0000-0000-000000000000",
///                 "tag_rules": {
///                     "automuting": True,
///                     "log_rules": {
///                         "filtering_tags": [
///                             {
///                                 "action": azure_native.datadog.TagAction.INCLUDE,
///                                 "name": "Environment",
///                                 "value": "Prod",
///                             },
///                             {
///                                 "action": azure_native.datadog.TagAction.EXCLUDE,
///                                 "name": "Environment",
///                                 "value": "Dev",
///                             },
///                         ],
///                         "send_aad_logs": False,
///                         "send_resource_logs": True,
///                         "send_subscription_logs": True,
///                     },
///                     "metric_rules": {
///                         "filtering_tags": [],
///                     },
///                 },
///             },
///             {
///                 "status": azure_native.datadog.Status.FAILED,
///                 "subscription_id": "/subscriptions/00000000-0000-0000-0000-000000000001",
///                 "tag_rules": {
///                     "automuting": True,
///                     "log_rules": {
///                         "filtering_tags": [
///                             {
///                                 "action": azure_native.datadog.TagAction.INCLUDE,
///                                 "name": "Environment",
///                                 "value": "Prod",
///                             },
///                             {
///                                 "action": azure_native.datadog.TagAction.EXCLUDE,
///                                 "name": "Environment",
///                                 "value": "Dev",
///                             },
///                         ],
///                         "send_aad_logs": False,
///                         "send_resource_logs": True,
///                         "send_subscription_logs": True,
///                     },
///                     "metric_rules": {
///                         "filtering_tags": [],
///                     },
///                 },
///             },
///         ],
///         "operation": azure_native.datadog.Operation.ADD_BEGIN,
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   monitoredSubscription:
///     type: azure-native:datadog:MonitoredSubscription
///     properties:
///       configurationName: default
///       monitorName: myMonitor
///       properties:
///         monitoredSubscriptionList:
///           - status: Active
///             subscriptionId: /subscriptions/00000000-0000-0000-0000-000000000000
///             tagRules:
///               automuting: true
///               logRules:
///                 filteringTags:
///                   - action: Include
///                     name: Environment
///                     value: Prod
///                   - action: Exclude
///                     name: Environment
///                     value: Dev
///                 sendAadLogs: false
///                 sendResourceLogs: true
///                 sendSubscriptionLogs: true
///               metricRules:
///                 filteringTags: []
///           - status: Failed
///             subscriptionId: /subscriptions/00000000-0000-0000-0000-000000000001
///             tagRules:
///               automuting: true
///               logRules:
///                 filteringTags:
///                   - action: Include
///                     name: Environment
///                     value: Prod
///                   - action: Exclude
///                     name: Environment
///                     value: Dev
///                 sendAadLogs: false
///                 sendResourceLogs: true
///                 sendSubscriptionLogs: true
///               metricRules:
///                 filteringTags: []
///         operation: AddBegin
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:datadog:MonitoredSubscription default /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Datadog/monitors/{monitorName}/monitoredSubscriptions/{configurationName}
/// ```
class MonitoredSubscriptionDatadog extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Name of the monitored subscription resource.
  late final pulumi.Output<String> name;
  /// The request to update subscriptions needed to be monitored by the Datadog monitor resource.
  late final pulumi.Output<SubscriptionListResponse> properties;
  /// The type of the monitored subscription resource.
  late final pulumi.Output<String> type;

  /// Creates a new [MonitoredSubscriptionDatadog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitoredSubscriptionDatadog]. {@macro pulumi_datadog_monitored_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitoredSubscriptionDatadog(
    String name, {
    MonitoredSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datadog:MonitoredSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SubscriptionListResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubscriptionListResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
