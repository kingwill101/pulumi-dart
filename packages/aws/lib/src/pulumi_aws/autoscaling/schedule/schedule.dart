import 'package:pulumi/pulumi.dart';
import 'schedule_args.dart';

/// Provides an AutoScaling Schedule resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foobar = new aws.autoscaling.Group("foobar", {
/// availabilityZones: ["us-west-2a"],
/// name: "test-foobar5",
/// maxSize: 1,
/// minSize: 1,
/// healthCheckGracePeriod: 300,
/// healthCheckType: "ELB",
/// forceDelete: true,
/// terminationPolicies: ["OldestInstance"],
/// });
/// const foobarSchedule = new aws.autoscaling.Schedule("foobar", {
/// scheduledActionName: "foobar",
/// minSize: 0,
/// maxSize: 1,
/// desiredCapacity: 0,
/// startTime: "2016-12-11T18:00:00Z",
/// endTime: "2016-12-12T06:00:00Z",
/// autoscalingGroupName: foobar.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foobar = aws.autoscaling.Group("foobar",
/// availability_zones=["us-west-2a"],
/// name="test-foobar5",
/// max_size=1,
/// min_size=1,
/// health_check_grace_period=300,
/// health_check_type="ELB",
/// force_delete=True,
/// termination_policies=["OldestInstance"])
/// foobar_schedule = aws.autoscaling.Schedule("foobar",
/// scheduled_action_name="foobar",
/// min_size=0,
/// max_size=1,
/// desired_capacity=0,
/// start_time="2016-12-11T18:00:00Z",
/// end_time="2016-12-12T06:00:00Z",
/// autoscaling_group_name=foobar.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foobar = new Aws.AutoScaling.Group("foobar", new()
/// {
/// AvailabilityZones = new[]
/// {
/// "us-west-2a",
/// },
/// Name = "test-foobar5",
/// MaxSize = 1,
/// MinSize = 1,
/// HealthCheckGracePeriod = 300,
/// HealthCheckType = "ELB",
/// ForceDelete = true,
/// TerminationPolicies = new[]
/// {
/// "OldestInstance",
/// },
/// });
///
/// var foobarSchedule = new Aws.AutoScaling.Schedule("foobar", new()
/// {
/// ScheduledActionName = "foobar",
/// MinSize = 0,
/// MaxSize = 1,
/// DesiredCapacity = 0,
/// StartTime = "2016-12-11T18:00:00Z",
/// EndTime = "2016-12-12T06:00:00Z",
/// AutoscalingGroupName = foobar.Name,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// foobar, err := autoscaling.NewGroup(ctx, "foobar", &autoscaling.GroupArgs{
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String("us-west-2a"),
/// },
/// Name:                   pulumi.String("test-foobar5"),
/// MaxSize:                pulumi.Int(1),
/// MinSize:                pulumi.Int(1),
/// HealthCheckGracePeriod: pulumi.Int(300),
/// HealthCheckType:        pulumi.String("ELB"),
/// ForceDelete:            pulumi.Bool(true),
/// TerminationPolicies: pulumi.StringArray{
/// pulumi.String("OldestInstance"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = autoscaling.NewSchedule(ctx, "foobar", &autoscaling.ScheduleArgs{
/// ScheduledActionName:  pulumi.String("foobar"),
/// MinSize:              pulumi.Int(0),
/// MaxSize:              pulumi.Int(1),
/// DesiredCapacity:      pulumi.Int(0),
/// StartTime:            pulumi.String("2016-12-11T18:00:00Z"),
/// EndTime:              pulumi.String("2016-12-12T06:00:00Z"),
/// AutoscalingGroupName: foobar.Name,
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.Schedule;
/// import com.pulumi.aws.autoscaling.ScheduleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var foobar = new Group("foobar", GroupArgs.builder()
/// .availabilityZones("us-west-2a")
/// .name("test-foobar5")
/// .maxSize(1)
/// .minSize(1)
/// .healthCheckGracePeriod(300)
/// .healthCheckType("ELB")
/// .forceDelete(true)
/// .terminationPolicies("OldestInstance")
/// .build());
///
/// var foobarSchedule = new Schedule("foobarSchedule", ScheduleArgs.builder()
/// .scheduledActionName("foobar")
/// .minSize(0)
/// .maxSize(1)
/// .desiredCapacity(0)
/// .startTime("2016-12-11T18:00:00Z")
/// .endTime("2016-12-12T06:00:00Z")
/// .autoscalingGroupName(foobar.name())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foobar:
/// type: aws:autoscaling:Group
/// properties:
/// availabilityZones:
/// - us-west-2a
/// name: test-foobar5
/// maxSize: 1
/// minSize: 1
/// healthCheckGracePeriod: 300
/// healthCheckType: ELB
/// forceDelete: true
/// terminationPolicies:
/// - OldestInstance
/// foobarSchedule:
/// type: aws:autoscaling:Schedule
/// name: foobar
/// properties:
/// scheduledActionName: foobar
/// minSize: 0
/// maxSize: 1
/// desiredCapacity: 0
/// startTime: 2016-12-11T18:00:00Z
/// endTime: 2016-12-12T06:00:00Z
/// autoscalingGroupName: ${foobar.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import AutoScaling ScheduledAction using the `auto-scaling-group-name` and `scheduled-action-name`. For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/schedule:Schedule resource-name auto-scaling-group-name/scheduled-action-name
/// ```
class Schedule extends CustomResource {
  /// ARN assigned by AWS to the autoscaling schedule.
  late final Output<String> arn;

  /// The name of the Auto Scaling group.
  late final Output<String> autoscalingGroupName;

  /// The initial capacity of the Auto Scaling group after the scheduled action runs and the capacity it attempts to maintain. Set to `-1` if you don't want to change the desired capacity at the scheduled time. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  late final Output<int> desiredCapacity;

  /// The date and time for the recurring schedule to end, in UTC with the format `"YYYY-MM-DDThh:mm:ssZ"` (e.g. `"2021-06-01T00:00:00Z"`).
  late final Output<String> endTime;

  /// The maximum size of the Auto Scaling group. Set to `-1` if you don't want to change the maximum size at the scheduled time. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  late final Output<int> maxSize;

  /// The minimum size of the Auto Scaling group. Set to `-1` if you don't want to change the minimum size at the scheduled time. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  late final Output<int> minSize;

  /// The recurring schedule for this action specified using the Unix cron syntax format.
  late final Output<String> recurrence;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of this scaling action.
  ///
  /// The following arguments are optional:
  late final Output<String> scheduledActionName;

  /// The date and time for the recurring schedule to start, in UTC with the format `"YYYY-MM-DDThh:mm:ssZ"` (e.g. `"2021-06-01T00:00:00Z"`).
  late final Output<String> startTime;

  /// Specifies the time zone for a cron expression. Valid values are the canonical names of the IANA time zones (such as `Etc/GMT+9` or `Pacific/Tahiti`).
  ///
  /// > **NOTE:** When <span pulumi-lang-nodejs="`startTime`" pulumi-lang-dotnet="`StartTime`" pulumi-lang-go="`startTime`" pulumi-lang-python="`start_time`" pulumi-lang-yaml="`startTime`" pulumi-lang-java="`startTime`">`start_time`</span> and <span pulumi-lang-nodejs="`endTime`" pulumi-lang-dotnet="`EndTime`" pulumi-lang-go="`endTime`" pulumi-lang-python="`end_time`" pulumi-lang-yaml="`endTime`" pulumi-lang-java="`endTime`">`end_time`</span> are specified with <span pulumi-lang-nodejs="`recurrence`" pulumi-lang-dotnet="`Recurrence`" pulumi-lang-go="`recurrence`" pulumi-lang-python="`recurrence`" pulumi-lang-yaml="`recurrence`" pulumi-lang-java="`recurrence`">`recurrence`</span> , they form the boundaries of when the recurring action will start and stop.
  late final Output<String> timeZone;

  Schedule(
    String name, {
    ScheduleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/schedule:Schedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.autoscalingGroupName = Output.createUnknown<String>();
    this.desiredCapacity = Output.createUnknown<int>();
    this.endTime = Output.createUnknown<String>();
    this.maxSize = Output.createUnknown<int>();
    this.minSize = Output.createUnknown<int>();
    this.recurrence = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.scheduledActionName = Output.createUnknown<String>();
    this.startTime = Output.createUnknown<String>();
    this.timeZone = Output.createUnknown<String>();
  }
}
