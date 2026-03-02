// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowTriggerConfigTriggerPropertiesScheduled {
  /// Whether a scheduled flow has an incremental data transfer or a complete data transfer for each flow run. Valid values are `Incremental` and `Complete`.
  final pulumi.Input<String>? dataPullMode;
  /// Date range for the records to import from the connector in the first flow run. Must be a valid RFC3339 timestamp.
  final pulumi.Input<String>? firstExecutionFrom;
  /// Scheduled end time for a schedule-triggered flow. Must be a valid RFC3339 timestamp.
  final pulumi.Input<String>? scheduleEndTime;
  /// Scheduling expression that determines the rate at which the schedule will run, for example `rate(5minutes)`.
  final pulumi.Input<String> scheduleExpression;
  /// Optional offset that is added to the time interval for a schedule-triggered flow. Maximum value of 36000.
  final pulumi.Input<int>? scheduleOffset;
  /// Scheduled start time for a schedule-triggered flow. Must be a valid RFC3339 timestamp.
  final pulumi.Input<String>? scheduleStartTime;
  /// Time zone used when referring to the date and time of a scheduled-triggered flow, such as `America/New_York`.
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const example = new aws.appflow.Flow("example", {triggerConfig: {
  ///     scheduled: [{
  ///         scheduleExpression: "rate(1minutes)",
  ///     }],
  /// }});
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// example = aws.appflow.Flow("example", trigger_config={
  ///     "scheduled": [{
  ///         "scheduleExpression": "rate(1minutes)",
  ///     }],
  /// })
  /// ```
  /// ```csharp
  /// using System.Collections.Generic;
  /// using System.Linq;
  /// using Pulumi;
  /// using Aws = Pulumi.Aws;
  ///
  /// return await Deployment.RunAsync(() =>
  /// {
  ///     var example = new Aws.AppFlow.Flow("example", new()
  ///     {
  ///         TriggerConfig = new Aws.AppFlow.Inputs.FlowTriggerConfigArgs
  ///         {
  ///             Scheduled = new[]
  ///             {
  ///
  ///                 {
  ///                     { "scheduleExpression", "rate(1minutes)" },
  ///                 },
  ///             },
  ///         },
  ///     });
  ///
  /// });
  /// ```
  /// ```go
  /// package main
  ///
  /// import (
  /// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appflow"
  /// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
  /// )
  ///
  /// func main() {
  /// 	pulumi.Run(func(ctx *pulumi.Context) error {
  /// 		_, err := appflow.NewFlow(ctx, "example", &appflow.FlowArgs{
  /// 			TriggerConfig: &appflow.FlowTriggerConfigArgs{
  /// 				Scheduled: []map[string]interface{}{
  /// 					map[string]interface{}{
  /// 						"scheduleExpression": "rate(1minutes)",
  /// 					},
  /// 				},
  /// 			},
  /// 		})
  /// 		if err != nil {
  /// 			return err
  /// 		}
  /// 		return nil
  /// 	})
  /// }
  /// ```
  /// ```java
  /// package generated_program;
  ///
  /// import com.pulumi.Context;
  /// import com.pulumi.Pulumi;
  /// import com.pulumi.core.Output;
  /// import com.pulumi.aws.appflow.Flow;
  /// import com.pulumi.aws.appflow.FlowArgs;
  /// import com.pulumi.aws.appflow.inputs.FlowTriggerConfigArgs;
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
  ///         var example = new Flow("example", FlowArgs.builder()
  ///             .triggerConfig(FlowTriggerConfigArgs.builder()
  ///                 .scheduled(List.of(Map.of("scheduleExpression", "rate(1minutes)")))
  ///                 .build())
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// resources:
  ///   example:
  ///     type: aws:appflow:Flow
  ///     properties:
  ///       triggerConfig:
  ///         scheduled:
  ///           - scheduleExpression: rate(1minutes)
  /// ```
  final pulumi.Input<String>? timezone;

  /// Creates a new [FlowTriggerConfigTriggerPropertiesScheduled].
  /// [dataPullMode] Whether a scheduled flow has an incremental data transfer or a complete data transfer for each flow run. Valid values are `Incremental` and `Complete`.
  /// [firstExecutionFrom] Date range for the records to import from the connector in the first flow run. Must be a valid RFC3339 timestamp.
  /// [scheduleEndTime] Scheduled end time for a schedule-triggered flow. Must be a valid RFC3339 timestamp.
  /// [scheduleExpression] Scheduling expression that determines the rate at which the schedule will run, for example `rate(5minutes)`.
  /// [scheduleOffset] Optional offset that is added to the time interval for a schedule-triggered flow. Maximum value of 36000.
  /// [scheduleStartTime] Scheduled start time for a schedule-triggered flow. Must be a valid RFC3339 timestamp.
  /// [timezone] Time zone used when referring to the date and time of a scheduled-triggered flow, such as `America/New_York`.
  FlowTriggerConfigTriggerPropertiesScheduled({
    this.dataPullMode,
    this.firstExecutionFrom,
    this.scheduleEndTime,
    required this.scheduleExpression,
    this.scheduleOffset,
    this.scheduleStartTime,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPullMode': ?dataPullMode,
      'firstExecutionFrom': ?firstExecutionFrom,
      'scheduleEndTime': ?scheduleEndTime,
      'scheduleExpression': scheduleExpression,
      'scheduleOffset': ?scheduleOffset,
      'scheduleStartTime': ?scheduleStartTime,
      'timezone': ?timezone,
    };
  }

  factory FlowTriggerConfigTriggerPropertiesScheduled.fromMap(Map<String, dynamic> map) {
    return FlowTriggerConfigTriggerPropertiesScheduled(
      dataPullMode: map['dataPullMode'] == null ? null : (map['dataPullMode'] as String).input(),
      firstExecutionFrom: map['firstExecutionFrom'] == null ? null : (map['firstExecutionFrom'] as String).input(),
      scheduleEndTime: map['scheduleEndTime'] == null ? null : (map['scheduleEndTime'] as String).input(),
      scheduleExpression: (map['scheduleExpression'] as String).input(),
      scheduleOffset: map['scheduleOffset'] == null ? null : (map['scheduleOffset'] as int).input(),
      scheduleStartTime: map['scheduleStartTime'] == null ? null : (map['scheduleStartTime'] as String).input(),
      timezone: map['timezone'] == null ? null : (map['timezone'] as String).input(),
    );
  }
}

