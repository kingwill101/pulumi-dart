import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscale_setting_args.dart';
import 'autoscale_setting_response.dart';
import 'system_data_response.dart';

/// The autoscale setting resource.
///
/// Uses Azure REST API version 2021-05-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update an autoscale setting
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var autoscaleSetting = new AzureNative.Monitor.AutoscaleSetting("autoscaleSetting", new()
///     {
///         AutoscaleSettingName = "MySetting",
///         Enabled = true,
///         Location = "West US",
///         Notifications = new[]
///         {
///             new AzureNative.Monitor.Inputs.AutoscaleNotificationArgs
///             {
///                 Email = new AzureNative.Monitor.Inputs.EmailNotificationArgs
///                 {
///                     CustomEmails = new[]
///                     {
///                         "gu@ms.com",
///                         "ge@ns.net",
///                     },
///                     SendToSubscriptionAdministrator = true,
///                     SendToSubscriptionCoAdministrators = true,
///                 },
///                 Operation = AzureNative.Monitor.OperationType.Scale,
///                 Webhooks = new[]
///                 {
///                     new AzureNative.Monitor.Inputs.WebhookNotificationArgs
///                     {
///                         Properties = null,
///                         ServiceUri = "http://myservice.com",
///                     },
///                 },
///             },
///         },
///         PredictiveAutoscalePolicy = new AzureNative.Monitor.Inputs.PredictiveAutoscalePolicyArgs
///         {
///             ScaleMode = AzureNative.Monitor.PredictiveAutoscalePolicyScaleMode.Enabled,
///         },
///         Profiles = new[]
///         {
///             new AzureNative.Monitor.Inputs.AutoscaleProfileArgs
///             {
///                 Capacity = new AzureNative.Monitor.Inputs.ScaleCapacityArgs
///                 {
///                     Default = "1",
///                     Maximum = "10",
///                     Minimum = "1",
///                 },
///                 FixedDate = new AzureNative.Monitor.Inputs.TimeWindowArgs
///                 {
///                     End = "2015-03-05T14:30:00Z",
///                     Start = "2015-03-05T14:00:00Z",
///                     TimeZone = "UTC",
///                 },
///                 Name = "adios",
///                 Rules = new[]
///                 {
///                     new AzureNative.Monitor.Inputs.ScaleRuleArgs
///                     {
///                         MetricTrigger = new AzureNative.Monitor.Inputs.MetricTriggerArgs
///                         {
///                             DividePerInstance = false,
///                             MetricName = "Percentage CPU",
///                             MetricResourceUri = "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                             Operator = AzureNative.Monitor.ComparisonOperationType.GreaterThan,
///                             Statistic = AzureNative.Monitor.MetricStatisticType.Average,
///                             Threshold = 10,
///                             TimeAggregation = AzureNative.Monitor.TimeAggregationType.Average,
///                             TimeGrain = "PT1M",
///                             TimeWindow = "PT5M",
///                         },
///                         ScaleAction = new AzureNative.Monitor.Inputs.ScaleActionArgs
///                         {
///                             Cooldown = "PT5M",
///                             Direction = AzureNative.Monitor.ScaleDirection.Increase,
///                             Type = AzureNative.Monitor.ScaleType.ChangeCount,
///                             Value = "1",
///                         },
///                     },
///                     new AzureNative.Monitor.Inputs.ScaleRuleArgs
///                     {
///                         MetricTrigger = new AzureNative.Monitor.Inputs.MetricTriggerArgs
///                         {
///                             DividePerInstance = false,
///                             MetricName = "Percentage CPU",
///                             MetricResourceUri = "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                             Operator = AzureNative.Monitor.ComparisonOperationType.GreaterThan,
///                             Statistic = AzureNative.Monitor.MetricStatisticType.Average,
///                             Threshold = 15,
///                             TimeAggregation = AzureNative.Monitor.TimeAggregationType.Average,
///                             TimeGrain = "PT2M",
///                             TimeWindow = "PT5M",
///                         },
///                         ScaleAction = new AzureNative.Monitor.Inputs.ScaleActionArgs
///                         {
///                             Cooldown = "PT6M",
///                             Direction = AzureNative.Monitor.ScaleDirection.Decrease,
///                             Type = AzureNative.Monitor.ScaleType.ChangeCount,
///                             Value = "2",
///                         },
///                     },
///                 },
///             },
///             new AzureNative.Monitor.Inputs.AutoscaleProfileArgs
///             {
///                 Capacity = new AzureNative.Monitor.Inputs.ScaleCapacityArgs
///                 {
///                     Default = "1",
///                     Maximum = "10",
///                     Minimum = "1",
///                 },
///                 Name = "saludos",
///                 Recurrence = new AzureNative.Monitor.Inputs.RecurrenceArgs
///                 {
///                     Frequency = AzureNative.Monitor.RecurrenceFrequency.Week,
///                     Schedule = new AzureNative.Monitor.Inputs.RecurrentScheduleArgs
///                     {
///                         Days = new[]
///                         {
///                             "1",
///                         },
///                         Hours = new[]
///                         {
///                             5,
///                         },
///                         Minutes = new[]
///                         {
///                             15,
///                         },
///                         TimeZone = "UTC",
///                     },
///                 },
///                 Rules = new[]
///                 {
///                     new AzureNative.Monitor.Inputs.ScaleRuleArgs
///                     {
///                         MetricTrigger = new AzureNative.Monitor.Inputs.MetricTriggerArgs
///                         {
///                             DividePerInstance = false,
///                             MetricName = "Percentage CPU",
///                             MetricResourceUri = "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                             Operator = AzureNative.Monitor.ComparisonOperationType.GreaterThan,
///                             Statistic = AzureNative.Monitor.MetricStatisticType.Average,
///                             Threshold = 10,
///                             TimeAggregation = AzureNative.Monitor.TimeAggregationType.Average,
///                             TimeGrain = "PT1M",
///                             TimeWindow = "PT5M",
///                         },
///                         ScaleAction = new AzureNative.Monitor.Inputs.ScaleActionArgs
///                         {
///                             Cooldown = "PT5M",
///                             Direction = AzureNative.Monitor.ScaleDirection.Increase,
///                             Type = AzureNative.Monitor.ScaleType.ChangeCount,
///                             Value = "1",
///                         },
///                     },
///                     new AzureNative.Monitor.Inputs.ScaleRuleArgs
///                     {
///                         MetricTrigger = new AzureNative.Monitor.Inputs.MetricTriggerArgs
///                         {
///                             DividePerInstance = false,
///                             MetricName = "Percentage CPU",
///                             MetricResourceUri = "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                             Operator = AzureNative.Monitor.ComparisonOperationType.GreaterThan,
///                             Statistic = AzureNative.Monitor.MetricStatisticType.Average,
///                             Threshold = 15,
///                             TimeAggregation = AzureNative.Monitor.TimeAggregationType.Average,
///                             TimeGrain = "PT2M",
///                             TimeWindow = "PT5M",
///                         },
///                         ScaleAction = new AzureNative.Monitor.Inputs.ScaleActionArgs
///                         {
///                             Cooldown = "PT6M",
///                             Direction = AzureNative.Monitor.ScaleDirection.Decrease,
///                             Type = AzureNative.Monitor.ScaleType.ChangeCount,
///                             Value = "2",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "TestingMetricsScaleSet",
///         Tags =
///         {
///             { "key1", "value1" },
///             { "key2", "value2" },
///         },
///         TargetResourceUri = "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
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
/// 		_, err := monitor.NewAutoscaleSetting(ctx, "autoscaleSetting", &monitor.AutoscaleSettingArgs{
/// 			AutoscaleSettingName: pulumi.String("MySetting"),
/// 			Enabled:              pulumi.Bool(true),
/// 			Location:             pulumi.String("West US"),
/// 			Notifications: monitor.AutoscaleNotificationArray{
/// 				&monitor.AutoscaleNotificationArgs{
/// 					Email: &monitor.EmailNotificationArgs{
/// 						CustomEmails: pulumi.StringArray{
/// 							pulumi.String("gu@ms.com"),
/// 							pulumi.String("ge@ns.net"),
/// 						},
/// 						SendToSubscriptionAdministrator:    pulumi.Bool(true),
/// 						SendToSubscriptionCoAdministrators: pulumi.Bool(true),
/// 					},
/// 					Operation: monitor.OperationTypeScale,
/// 					Webhooks: monitor.WebhookNotificationArray{
/// 						&monitor.WebhookNotificationArgs{
/// 							Properties: pulumi.StringMap{},
/// 							ServiceUri: pulumi.String("http://myservice.com"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			PredictiveAutoscalePolicy: &monitor.PredictiveAutoscalePolicyArgs{
/// 				ScaleMode: monitor.PredictiveAutoscalePolicyScaleModeEnabled,
/// 			},
/// 			Profiles: monitor.AutoscaleProfileArray{
/// 				&monitor.AutoscaleProfileArgs{
/// 					Capacity: &monitor.ScaleCapacityArgs{
/// 						Default: pulumi.String("1"),
/// 						Maximum: pulumi.String("10"),
/// 						Minimum: pulumi.String("1"),
/// 					},
/// 					FixedDate: &monitor.TimeWindowArgs{
/// 						End:      pulumi.String("2015-03-05T14:30:00Z"),
/// 						Start:    pulumi.String("2015-03-05T14:00:00Z"),
/// 						TimeZone: pulumi.String("UTC"),
/// 					},
/// 					Name: pulumi.String("adios"),
/// 					Rules: monitor.ScaleRuleArray{
/// 						&monitor.ScaleRuleArgs{
/// 							MetricTrigger: &monitor.MetricTriggerArgs{
/// 								DividePerInstance: pulumi.Bool(false),
/// 								MetricName:        pulumi.String("Percentage CPU"),
/// 								MetricResourceUri: pulumi.String("/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc"),
/// 								Operator:          monitor.ComparisonOperationTypeGreaterThan,
/// 								Statistic:         monitor.MetricStatisticTypeAverage,
/// 								Threshold:         pulumi.Float64(10),
/// 								TimeAggregation:   monitor.TimeAggregationTypeAverage,
/// 								TimeGrain:         pulumi.String("PT1M"),
/// 								TimeWindow:        pulumi.String("PT5M"),
/// 							},
/// 							ScaleAction: &monitor.ScaleActionArgs{
/// 								Cooldown:  pulumi.String("PT5M"),
/// 								Direction: monitor.ScaleDirectionIncrease,
/// 								Type:      monitor.ScaleTypeChangeCount,
/// 								Value:     pulumi.String("1"),
/// 							},
/// 						},
/// 						&monitor.ScaleRuleArgs{
/// 							MetricTrigger: &monitor.MetricTriggerArgs{
/// 								DividePerInstance: pulumi.Bool(false),
/// 								MetricName:        pulumi.String("Percentage CPU"),
/// 								MetricResourceUri: pulumi.String("/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc"),
/// 								Operator:          monitor.ComparisonOperationTypeGreaterThan,
/// 								Statistic:         monitor.MetricStatisticTypeAverage,
/// 								Threshold:         pulumi.Float64(15),
/// 								TimeAggregation:   monitor.TimeAggregationTypeAverage,
/// 								TimeGrain:         pulumi.String("PT2M"),
/// 								TimeWindow:        pulumi.String("PT5M"),
/// 							},
/// 							ScaleAction: &monitor.ScaleActionArgs{
/// 								Cooldown:  pulumi.String("PT6M"),
/// 								Direction: monitor.ScaleDirectionDecrease,
/// 								Type:      monitor.ScaleTypeChangeCount,
/// 								Value:     pulumi.String("2"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&monitor.AutoscaleProfileArgs{
/// 					Capacity: &monitor.ScaleCapacityArgs{
/// 						Default: pulumi.String("1"),
/// 						Maximum: pulumi.String("10"),
/// 						Minimum: pulumi.String("1"),
/// 					},
/// 					Name: pulumi.String("saludos"),
/// 					Recurrence: &monitor.RecurrenceArgs{
/// 						Frequency: monitor.RecurrenceFrequencyWeek,
/// 						Schedule: &monitor.RecurrentScheduleArgs{
/// 							Days: pulumi.StringArray{
/// 								pulumi.String("1"),
/// 							},
/// 							Hours: pulumi.IntArray{
/// 								pulumi.Int(5),
/// 							},
/// 							Minutes: pulumi.IntArray{
/// 								pulumi.Int(15),
/// 							},
/// 							TimeZone: pulumi.String("UTC"),
/// 						},
/// 					},
/// 					Rules: monitor.ScaleRuleArray{
/// 						&monitor.ScaleRuleArgs{
/// 							MetricTrigger: &monitor.MetricTriggerArgs{
/// 								DividePerInstance: pulumi.Bool(false),
/// 								MetricName:        pulumi.String("Percentage CPU"),
/// 								MetricResourceUri: pulumi.String("/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc"),
/// 								Operator:          monitor.ComparisonOperationTypeGreaterThan,
/// 								Statistic:         monitor.MetricStatisticTypeAverage,
/// 								Threshold:         pulumi.Float64(10),
/// 								TimeAggregation:   monitor.TimeAggregationTypeAverage,
/// 								TimeGrain:         pulumi.String("PT1M"),
/// 								TimeWindow:        pulumi.String("PT5M"),
/// 							},
/// 							ScaleAction: &monitor.ScaleActionArgs{
/// 								Cooldown:  pulumi.String("PT5M"),
/// 								Direction: monitor.ScaleDirectionIncrease,
/// 								Type:      monitor.ScaleTypeChangeCount,
/// 								Value:     pulumi.String("1"),
/// 							},
/// 						},
/// 						&monitor.ScaleRuleArgs{
/// 							MetricTrigger: &monitor.MetricTriggerArgs{
/// 								DividePerInstance: pulumi.Bool(false),
/// 								MetricName:        pulumi.String("Percentage CPU"),
/// 								MetricResourceUri: pulumi.String("/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc"),
/// 								Operator:          monitor.ComparisonOperationTypeGreaterThan,
/// 								Statistic:         monitor.MetricStatisticTypeAverage,
/// 								Threshold:         pulumi.Float64(15),
/// 								TimeAggregation:   monitor.TimeAggregationTypeAverage,
/// 								TimeGrain:         pulumi.String("PT2M"),
/// 								TimeWindow:        pulumi.String("PT5M"),
/// 							},
/// 							ScaleAction: &monitor.ScaleActionArgs{
/// 								Cooldown:  pulumi.String("PT6M"),
/// 								Direction: monitor.ScaleDirectionDecrease,
/// 								Type:      monitor.ScaleTypeChangeCount,
/// 								Value:     pulumi.String("2"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestingMetricsScaleSet"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 				"key2": pulumi.String("value2"),
/// 			},
/// 			TargetResourceUri: pulumi.String("/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc"),
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
/// import com.pulumi.azurenative.monitor.AutoscaleSetting;
/// import com.pulumi.azurenative.monitor.AutoscaleSettingArgs;
/// import com.pulumi.azurenative.monitor.inputs.AutoscaleNotificationArgs;
/// import com.pulumi.azurenative.monitor.inputs.EmailNotificationArgs;
/// import com.pulumi.azurenative.monitor.inputs.PredictiveAutoscalePolicyArgs;
/// import com.pulumi.azurenative.monitor.inputs.AutoscaleProfileArgs;
/// import com.pulumi.azurenative.monitor.inputs.ScaleCapacityArgs;
/// import com.pulumi.azurenative.monitor.inputs.TimeWindowArgs;
/// import com.pulumi.azurenative.monitor.inputs.RecurrenceArgs;
/// import com.pulumi.azurenative.monitor.inputs.RecurrentScheduleArgs;
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
///         var autoscaleSetting = new AutoscaleSetting("autoscaleSetting", AutoscaleSettingArgs.builder()
///             .autoscaleSettingName("MySetting")
///             .enabled(true)
///             .location("West US")
///             .notifications(AutoscaleNotificationArgs.builder()
///                 .email(EmailNotificationArgs.builder()
///                     .customEmails(
///                         "gu@ms.com",
///                         "ge@ns.net")
///                     .sendToSubscriptionAdministrator(true)
///                     .sendToSubscriptionCoAdministrators(true)
///                     .build())
///                 .operation("Scale")
///                 .webhooks(WebhookNotificationArgs.builder()
///                     .properties(Map.ofEntries(
///                     ))
///                     .serviceUri("http://myservice.com")
///                     .build())
///                 .build())
///             .predictiveAutoscalePolicy(PredictiveAutoscalePolicyArgs.builder()
///                 .scaleMode("Enabled")
///                 .build())
///             .profiles(
///                 AutoscaleProfileArgs.builder()
///                     .capacity(ScaleCapacityArgs.builder()
///                         .default_("1")
///                         .maximum("10")
///                         .minimum("1")
///                         .build())
///                     .fixedDate(TimeWindowArgs.builder()
///                         .end("2015-03-05T14:30:00Z")
///                         .start("2015-03-05T14:00:00Z")
///                         .timeZone("UTC")
///                         .build())
///                     .name("adios")
///                     .rules(
///                         ScaleRuleArgs.builder()
///                             .metricTrigger(MetricTriggerArgs.builder()
///                                 .dividePerInstance(false)
///                                 .metricName("Percentage CPU")
///                                 .metricResourceUri("/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc")
///                                 .operator("GreaterThan")
///                                 .statistic("Average")
///                                 .threshold(10.0)
///                                 .timeAggregation("Average")
///                                 .timeGrain("PT1M")
///                                 .timeWindow("PT5M")
///                                 .build())
///                             .scaleAction(ScaleActionArgs.builder()
///                                 .cooldown("PT5M")
///                                 .direction("Increase")
///                                 .type("ChangeCount")
///                                 .value("1")
///                                 .build())
///                             .build(),
///                         ScaleRuleArgs.builder()
///                             .metricTrigger(MetricTriggerArgs.builder()
///                                 .dividePerInstance(false)
///                                 .metricName("Percentage CPU")
///                                 .metricResourceUri("/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc")
///                                 .operator("GreaterThan")
///                                 .statistic("Average")
///                                 .threshold(15.0)
///                                 .timeAggregation("Average")
///                                 .timeGrain("PT2M")
///                                 .timeWindow("PT5M")
///                                 .build())
///                             .scaleAction(ScaleActionArgs.builder()
///                                 .cooldown("PT6M")
///                                 .direction("Decrease")
///                                 .type("ChangeCount")
///                                 .value("2")
///                                 .build())
///                             .build())
///                     .build(),
///                 AutoscaleProfileArgs.builder()
///                     .capacity(ScaleCapacityArgs.builder()
///                         .default_("1")
///                         .maximum("10")
///                         .minimum("1")
///                         .build())
///                     .name("saludos")
///                     .recurrence(RecurrenceArgs.builder()
///                         .frequency("Week")
///                         .schedule(RecurrentScheduleArgs.builder()
///                             .days("1")
///                             .hours(5)
///                             .minutes(15)
///                             .timeZone("UTC")
///                             .build())
///                         .build())
///                     .rules(
///                         ScaleRuleArgs.builder()
///                             .metricTrigger(MetricTriggerArgs.builder()
///                                 .dividePerInstance(false)
///                                 .metricName("Percentage CPU")
///                                 .metricResourceUri("/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc")
///                                 .operator("GreaterThan")
///                                 .statistic("Average")
///                                 .threshold(10.0)
///                                 .timeAggregation("Average")
///                                 .timeGrain("PT1M")
///                                 .timeWindow("PT5M")
///                                 .build())
///                             .scaleAction(ScaleActionArgs.builder()
///                                 .cooldown("PT5M")
///                                 .direction("Increase")
///                                 .type("ChangeCount")
///                                 .value("1")
///                                 .build())
///                             .build(),
///                         ScaleRuleArgs.builder()
///                             .metricTrigger(MetricTriggerArgs.builder()
///                                 .dividePerInstance(false)
///                                 .metricName("Percentage CPU")
///                                 .metricResourceUri("/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc")
///                                 .operator("GreaterThan")
///                                 .statistic("Average")
///                                 .threshold(15.0)
///                                 .timeAggregation("Average")
///                                 .timeGrain("PT2M")
///                                 .timeWindow("PT5M")
///                                 .build())
///                             .scaleAction(ScaleActionArgs.builder()
///                                 .cooldown("PT6M")
///                                 .direction("Decrease")
///                                 .type("ChangeCount")
///                                 .value("2")
///                                 .build())
///                             .build())
///                     .build())
///             .resourceGroupName("TestingMetricsScaleSet")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "value1"),
///                 Map.entry("key2", "value2")
///             ))
///             .targetResourceUri("/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc")
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
/// const autoscaleSetting = new azure_native.monitor.AutoscaleSetting("autoscaleSetting", {
///     autoscaleSettingName: "MySetting",
///     enabled: true,
///     location: "West US",
///     notifications: [{
///         email: {
///             customEmails: [
///                 "gu@ms.com",
///                 "ge@ns.net",
///             ],
///             sendToSubscriptionAdministrator: true,
///             sendToSubscriptionCoAdministrators: true,
///         },
///         operation: azure_native.monitor.OperationType.Scale,
///         webhooks: [{
///             properties: {},
///             serviceUri: "http://myservice.com",
///         }],
///     }],
///     predictiveAutoscalePolicy: {
///         scaleMode: azure_native.monitor.PredictiveAutoscalePolicyScaleMode.Enabled,
///     },
///     profiles: [
///         {
///             capacity: {
///                 "default": "1",
///                 maximum: "10",
///                 minimum: "1",
///             },
///             fixedDate: {
///                 end: "2015-03-05T14:30:00Z",
///                 start: "2015-03-05T14:00:00Z",
///                 timeZone: "UTC",
///             },
///             name: "adios",
///             rules: [
///                 {
///                     metricTrigger: {
///                         dividePerInstance: false,
///                         metricName: "Percentage CPU",
///                         metricResourceUri: "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                         operator: azure_native.monitor.ComparisonOperationType.GreaterThan,
///                         statistic: azure_native.monitor.MetricStatisticType.Average,
///                         threshold: 10,
///                         timeAggregation: azure_native.monitor.TimeAggregationType.Average,
///                         timeGrain: "PT1M",
///                         timeWindow: "PT5M",
///                     },
///                     scaleAction: {
///                         cooldown: "PT5M",
///                         direction: azure_native.monitor.ScaleDirection.Increase,
///                         type: azure_native.monitor.ScaleType.ChangeCount,
///                         value: "1",
///                     },
///                 },
///                 {
///                     metricTrigger: {
///                         dividePerInstance: false,
///                         metricName: "Percentage CPU",
///                         metricResourceUri: "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                         operator: azure_native.monitor.ComparisonOperationType.GreaterThan,
///                         statistic: azure_native.monitor.MetricStatisticType.Average,
///                         threshold: 15,
///                         timeAggregation: azure_native.monitor.TimeAggregationType.Average,
///                         timeGrain: "PT2M",
///                         timeWindow: "PT5M",
///                     },
///                     scaleAction: {
///                         cooldown: "PT6M",
///                         direction: azure_native.monitor.ScaleDirection.Decrease,
///                         type: azure_native.monitor.ScaleType.ChangeCount,
///                         value: "2",
///                     },
///                 },
///             ],
///         },
///         {
///             capacity: {
///                 "default": "1",
///                 maximum: "10",
///                 minimum: "1",
///             },
///             name: "saludos",
///             recurrence: {
///                 frequency: azure_native.monitor.RecurrenceFrequency.Week,
///                 schedule: {
///                     days: ["1"],
///                     hours: [5],
///                     minutes: [15],
///                     timeZone: "UTC",
///                 },
///             },
///             rules: [
///                 {
///                     metricTrigger: {
///                         dividePerInstance: false,
///                         metricName: "Percentage CPU",
///                         metricResourceUri: "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                         operator: azure_native.monitor.ComparisonOperationType.GreaterThan,
///                         statistic: azure_native.monitor.MetricStatisticType.Average,
///                         threshold: 10,
///                         timeAggregation: azure_native.monitor.TimeAggregationType.Average,
///                         timeGrain: "PT1M",
///                         timeWindow: "PT5M",
///                     },
///                     scaleAction: {
///                         cooldown: "PT5M",
///                         direction: azure_native.monitor.ScaleDirection.Increase,
///                         type: azure_native.monitor.ScaleType.ChangeCount,
///                         value: "1",
///                     },
///                 },
///                 {
///                     metricTrigger: {
///                         dividePerInstance: false,
///                         metricName: "Percentage CPU",
///                         metricResourceUri: "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                         operator: azure_native.monitor.ComparisonOperationType.GreaterThan,
///                         statistic: azure_native.monitor.MetricStatisticType.Average,
///                         threshold: 15,
///                         timeAggregation: azure_native.monitor.TimeAggregationType.Average,
///                         timeGrain: "PT2M",
///                         timeWindow: "PT5M",
///                     },
///                     scaleAction: {
///                         cooldown: "PT6M",
///                         direction: azure_native.monitor.ScaleDirection.Decrease,
///                         type: azure_native.monitor.ScaleType.ChangeCount,
///                         value: "2",
///                     },
///                 },
///             ],
///         },
///     ],
///     resourceGroupName: "TestingMetricsScaleSet",
///     tags: {
///         key1: "value1",
///         key2: "value2",
///     },
///     targetResourceUri: "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// autoscale_setting = azure_native.monitor.AutoscaleSetting("autoscaleSetting",
///     autoscale_setting_name="MySetting",
///     enabled=True,
///     location="West US",
///     notifications=[{
///         "email": {
///             "custom_emails": [
///                 "gu@ms.com",
///                 "ge@ns.net",
///             ],
///             "send_to_subscription_administrator": True,
///             "send_to_subscription_co_administrators": True,
///         },
///         "operation": azure_native.monitor.OperationType.SCALE,
///         "webhooks": [{
///             "properties": {},
///             "service_uri": "http://myservice.com",
///         }],
///     }],
///     predictive_autoscale_policy={
///         "scale_mode": azure_native.monitor.PredictiveAutoscalePolicyScaleMode.ENABLED,
///     },
///     profiles=[
///         {
///             "capacity": {
///                 "default": "1",
///                 "maximum": "10",
///                 "minimum": "1",
///             },
///             "fixed_date": {
///                 "end": "2015-03-05T14:30:00Z",
///                 "start": "2015-03-05T14:00:00Z",
///                 "time_zone": "UTC",
///             },
///             "name": "adios",
///             "rules": [
///                 {
///                     "metric_trigger": {
///                         "divide_per_instance": False,
///                         "metric_name": "Percentage CPU",
///                         "metric_resource_uri": "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                         "operator": azure_native.monitor.ComparisonOperationType.GREATER_THAN,
///                         "statistic": azure_native.monitor.MetricStatisticType.AVERAGE,
///                         "threshold": 10,
///                         "time_aggregation": azure_native.monitor.TimeAggregationType.AVERAGE,
///                         "time_grain": "PT1M",
///                         "time_window": "PT5M",
///                     },
///                     "scale_action": {
///                         "cooldown": "PT5M",
///                         "direction": azure_native.monitor.ScaleDirection.INCREASE,
///                         "type": azure_native.monitor.ScaleType.CHANGE_COUNT,
///                         "value": "1",
///                     },
///                 },
///                 {
///                     "metric_trigger": {
///                         "divide_per_instance": False,
///                         "metric_name": "Percentage CPU",
///                         "metric_resource_uri": "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                         "operator": azure_native.monitor.ComparisonOperationType.GREATER_THAN,
///                         "statistic": azure_native.monitor.MetricStatisticType.AVERAGE,
///                         "threshold": 15,
///                         "time_aggregation": azure_native.monitor.TimeAggregationType.AVERAGE,
///                         "time_grain": "PT2M",
///                         "time_window": "PT5M",
///                     },
///                     "scale_action": {
///                         "cooldown": "PT6M",
///                         "direction": azure_native.monitor.ScaleDirection.DECREASE,
///                         "type": azure_native.monitor.ScaleType.CHANGE_COUNT,
///                         "value": "2",
///                     },
///                 },
///             ],
///         },
///         {
///             "capacity": {
///                 "default": "1",
///                 "maximum": "10",
///                 "minimum": "1",
///             },
///             "name": "saludos",
///             "recurrence": {
///                 "frequency": azure_native.monitor.RecurrenceFrequency.WEEK,
///                 "schedule": {
///                     "days": ["1"],
///                     "hours": [5],
///                     "minutes": [15],
///                     "time_zone": "UTC",
///                 },
///             },
///             "rules": [
///                 {
///                     "metric_trigger": {
///                         "divide_per_instance": False,
///                         "metric_name": "Percentage CPU",
///                         "metric_resource_uri": "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                         "operator": azure_native.monitor.ComparisonOperationType.GREATER_THAN,
///                         "statistic": azure_native.monitor.MetricStatisticType.AVERAGE,
///                         "threshold": 10,
///                         "time_aggregation": azure_native.monitor.TimeAggregationType.AVERAGE,
///                         "time_grain": "PT1M",
///                         "time_window": "PT5M",
///                     },
///                     "scale_action": {
///                         "cooldown": "PT5M",
///                         "direction": azure_native.monitor.ScaleDirection.INCREASE,
///                         "type": azure_native.monitor.ScaleType.CHANGE_COUNT,
///                         "value": "1",
///                     },
///                 },
///                 {
///                     "metric_trigger": {
///                         "divide_per_instance": False,
///                         "metric_name": "Percentage CPU",
///                         "metric_resource_uri": "/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc",
///                         "operator": azure_native.monitor.ComparisonOperationType.GREATER_THAN,
///                         "statistic": azure_native.monitor.MetricStatisticType.AVERAGE,
///                         "threshold": 15,
///                         "time_aggregation": azure_native.monitor.TimeAggregationType.AVERAGE,
///                         "time_grain": "PT2M",
///                         "time_window": "PT5M",
///                     },
///                     "scale_action": {
///                         "cooldown": "PT6M",
///                         "direction": azure_native.monitor.ScaleDirection.DECREASE,
///                         "type": azure_native.monitor.ScaleType.CHANGE_COUNT,
///                         "value": "2",
///                     },
///                 },
///             ],
///         },
///     ],
///     resource_group_name="TestingMetricsScaleSet",
///     tags={
///         "key1": "value1",
///         "key2": "value2",
///     },
///     target_resource_uri="/subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc")
///
/// ```
///
/// ```yaml
/// resources:
///   autoscaleSetting:
///     type: azure-native:monitor:AutoscaleSetting
///     properties:
///       autoscaleSettingName: MySetting
///       enabled: true
///       location: West US
///       notifications:
///         - email:
///             customEmails:
///               - gu@ms.com
///               - ge@ns.net
///             sendToSubscriptionAdministrator: true
///             sendToSubscriptionCoAdministrators: true
///           operation: Scale
///           webhooks:
///             - properties: {}
///               serviceUri: http://myservice.com
///       predictiveAutoscalePolicy:
///         scaleMode: Enabled
///       profiles:
///         - capacity:
///             default: '1'
///             maximum: '10'
///             minimum: '1'
///           fixedDate:
///             end: 2015-03-05T14:30:00Z
///             start: 2015-03-05T14:00:00Z
///             timeZone: UTC
///           name: adios
///           rules:
///             - metricTrigger:
///                 dividePerInstance: false
///                 metricName: Percentage CPU
///                 metricResourceUri: /subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc
///                 operator: GreaterThan
///                 statistic: Average
///                 threshold: 10
///                 timeAggregation: Average
///                 timeGrain: PT1M
///                 timeWindow: PT5M
///               scaleAction:
///                 cooldown: PT5M
///                 direction: Increase
///                 type: ChangeCount
///                 value: '1'
///             - metricTrigger:
///                 dividePerInstance: false
///                 metricName: Percentage CPU
///                 metricResourceUri: /subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc
///                 operator: GreaterThan
///                 statistic: Average
///                 threshold: 15
///                 timeAggregation: Average
///                 timeGrain: PT2M
///                 timeWindow: PT5M
///               scaleAction:
///                 cooldown: PT6M
///                 direction: Decrease
///                 type: ChangeCount
///                 value: '2'
///         - capacity:
///             default: '1'
///             maximum: '10'
///             minimum: '1'
///           name: saludos
///           recurrence:
///             frequency: Week
///             schedule:
///               days:
///                 - '1'
///               hours:
///                 - 5
///               minutes:
///                 - 15
///               timeZone: UTC
///           rules:
///             - metricTrigger:
///                 dividePerInstance: false
///                 metricName: Percentage CPU
///                 metricResourceUri: /subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc
///                 operator: GreaterThan
///                 statistic: Average
///                 threshold: 10
///                 timeAggregation: Average
///                 timeGrain: PT1M
///                 timeWindow: PT5M
///               scaleAction:
///                 cooldown: PT5M
///                 direction: Increase
///                 type: ChangeCount
///                 value: '1'
///             - metricTrigger:
///                 dividePerInstance: false
///                 metricName: Percentage CPU
///                 metricResourceUri: /subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc
///                 operator: GreaterThan
///                 statistic: Average
///                 threshold: 15
///                 timeAggregation: Average
///                 timeGrain: PT2M
///                 timeWindow: PT5M
///               scaleAction:
///                 cooldown: PT6M
///                 direction: Decrease
///                 type: ChangeCount
///                 value: '2'
///       resourceGroupName: TestingMetricsScaleSet
///       tags:
///         key1: value1
///         key2: value2
///       targetResourceUri: /subscriptions/b67f7fec-69fc-4974-9099-a26bd6ffeda3/resourceGroups/TestingMetricsScaleSet/providers/Microsoft.Compute/virtualMachineScaleSets/testingsc
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
/// $ pulumi import azure-native:monitor:AutoscaleSetting MySetting /subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.Insights/autoscalesettings/{autoscaleSettingName}
/// ```
class AutoscaleSetting extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource location
  late final pulumi.Output<String> location;

  /// Azure resource name
  late final pulumi.Output<String> name;

  /// The autoscale setting of the resource.
  late final pulumi.Output<AutoscaleSettingResponse> properties;

  /// The system metadata related to the response.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater in length than 128 characters and a value no greater in length than 256 characters.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Azure resource type
  late final pulumi.Output<String> type;

  /// Creates a new [AutoscaleSetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoscaleSetting]. {@macro pulumi_monitor_autoscale_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoscaleSetting(
    String name, {
    AutoscaleSettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:monitor:AutoscaleSetting',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<AutoscaleSettingResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return AutoscaleSettingResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
