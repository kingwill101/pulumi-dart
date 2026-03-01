import 'package:pulumi/pulumi.dart' as pulumi;
import 'schedule_args.dart';
import 'schedule_flexible_time_window.dart';
import 'schedule_target.dart';

/// Provides an EventBridge Scheduler Schedule resource.
///
/// You can find out more about EventBridge Scheduler in the [User Guide](https://docs.aws.amazon.com/scheduler/latest/UserGuide/what-is-scheduler.html).
///
/// > **Note:** EventBridge was formerly known as CloudWatch Events. The functionality is identical.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.scheduler.Schedule("example", {
///     name: "my-schedule",
///     groupName: "default",
///     flexibleTimeWindow: {
///         mode: "OFF",
///     },
///     scheduleExpression: "rate(1 hours)",
///     target: {
///         arn: exampleAwsSqsQueue.arn,
///         roleArn: exampleAwsIamRole.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.scheduler.Schedule("example",
///     name="my-schedule",
///     group_name="default",
///     flexible_time_window={
///         "mode": "OFF",
///     },
///     schedule_expression="rate(1 hours)",
///     target={
///         "arn": example_aws_sqs_queue["arn"],
///         "role_arn": example_aws_iam_role["arn"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Scheduler.Schedule("example", new()
///     {
///         Name = "my-schedule",
///         GroupName = "default",
///         FlexibleTimeWindow = new Aws.Scheduler.Inputs.ScheduleFlexibleTimeWindowArgs
///         {
///             Mode = "OFF",
///         },
///         ScheduleExpression = "rate(1 hours)",
///         Target = new Aws.Scheduler.Inputs.ScheduleTargetArgs
///         {
///             Arn = exampleAwsSqsQueue.Arn,
///             RoleArn = exampleAwsIamRole.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/scheduler"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := scheduler.NewSchedule(ctx, "example", &scheduler.ScheduleArgs{
/// 			Name:      pulumi.String("my-schedule"),
/// 			GroupName: pulumi.String("default"),
/// 			FlexibleTimeWindow: &scheduler.ScheduleFlexibleTimeWindowArgs{
/// 				Mode: pulumi.String("OFF"),
/// 			},
/// 			ScheduleExpression: pulumi.String("rate(1 hours)"),
/// 			Target: &scheduler.ScheduleTargetArgs{
/// 				Arn:     pulumi.Any(exampleAwsSqsQueue.Arn),
/// 				RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// import com.pulumi.aws.scheduler.Schedule;
/// import com.pulumi.aws.scheduler.ScheduleArgs;
/// import com.pulumi.aws.scheduler.inputs.ScheduleFlexibleTimeWindowArgs;
/// import com.pulumi.aws.scheduler.inputs.ScheduleTargetArgs;
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
///         var example = new Schedule("example", ScheduleArgs.builder()
///             .name("my-schedule")
///             .groupName("default")
///             .flexibleTimeWindow(ScheduleFlexibleTimeWindowArgs.builder()
///                 .mode("OFF")
///                 .build())
///             .scheduleExpression("rate(1 hours)")
///             .target(ScheduleTargetArgs.builder()
///                 .arn(exampleAwsSqsQueue.arn())
///                 .roleArn(exampleAwsIamRole.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:scheduler:Schedule
///     properties:
///       name: my-schedule
///       groupName: default
///       flexibleTimeWindow:
///         mode: OFF
///       scheduleExpression: rate(1 hours)
///       target:
///         arn: ${exampleAwsSqsQueue.arn}
///         roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ### Universal Target
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sqs.Queue("example", {});
/// const exampleSchedule = new aws.scheduler.Schedule("example", {
///     name: "my-schedule",
///     flexibleTimeWindow: {
///         mode: "OFF",
///     },
///     scheduleExpression: "rate(1 hours)",
///     target: {
///         arn: "arn:aws:scheduler:::aws-sdk:sqs:sendMessage",
///         roleArn: exampleAwsIamRole.arn,
///         input: pulumi.jsonStringify({
///             MessageBody: "Greetings, programs!",
///             QueueUrl: example.url,
///         }),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.sqs.Queue("example")
/// example_schedule = aws.scheduler.Schedule("example",
///     name="my-schedule",
///     flexible_time_window={
///         "mode": "OFF",
///     },
///     schedule_expression="rate(1 hours)",
///     target={
///         "arn": "arn:aws:scheduler:::aws-sdk:sqs:sendMessage",
///         "role_arn": example_aws_iam_role["arn"],
///         "input": pulumi.Output.json_dumps({
///             "MessageBody": "Greetings, programs!",
///             "QueueUrl": example.url,
///         }),
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sqs.Queue("example");
///
///     var exampleSchedule = new Aws.Scheduler.Schedule("example", new()
///     {
///         Name = "my-schedule",
///         FlexibleTimeWindow = new Aws.Scheduler.Inputs.ScheduleFlexibleTimeWindowArgs
///         {
///             Mode = "OFF",
///         },
///         ScheduleExpression = "rate(1 hours)",
///         Target = new Aws.Scheduler.Inputs.ScheduleTargetArgs
///         {
///             Arn = "arn:aws:scheduler:::aws-sdk:sqs:sendMessage",
///             RoleArn = exampleAwsIamRole.Arn,
///             Input = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///             {
///                 ["MessageBody"] = "Greetings, programs!",
///                 ["QueueUrl"] = example.Url,
///             })),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/scheduler"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sqs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sqs.NewQueue(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = scheduler.NewSchedule(ctx, "example", &scheduler.ScheduleArgs{
/// 			Name: pulumi.String("my-schedule"),
/// 			FlexibleTimeWindow: &scheduler.ScheduleFlexibleTimeWindowArgs{
/// 				Mode: pulumi.String("OFF"),
/// 			},
/// 			ScheduleExpression: pulumi.String("rate(1 hours)"),
/// 			Target: &scheduler.ScheduleTargetArgs{
/// 				Arn:     pulumi.String("arn:aws:scheduler:::aws-sdk:sqs:sendMessage"),
/// 				RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 				Input: example.Url.ApplyT(func(url string) (pulumi.String, error) {
/// 					var _zero pulumi.String
/// 					tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 						"MessageBody": "Greetings, programs!",
/// 						"QueueUrl":    url,
/// 					})
/// 					if err != nil {
/// 						return _zero, err
/// 					}
/// 					json0 := string(tmpJSON0)
/// 					return pulumi.String(json0), nil
/// 				}).(pulumi.StringOutput),
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
/// import com.pulumi.aws.sqs.Queue;
/// import com.pulumi.aws.scheduler.Schedule;
/// import com.pulumi.aws.scheduler.ScheduleArgs;
/// import com.pulumi.aws.scheduler.inputs.ScheduleFlexibleTimeWindowArgs;
/// import com.pulumi.aws.scheduler.inputs.ScheduleTargetArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new Queue("example");
///
///         var exampleSchedule = new Schedule("exampleSchedule", ScheduleArgs.builder()
///             .name("my-schedule")
///             .flexibleTimeWindow(ScheduleFlexibleTimeWindowArgs.builder()
///                 .mode("OFF")
///                 .build())
///             .scheduleExpression("rate(1 hours)")
///             .target(ScheduleTargetArgs.builder()
///                 .arn("arn:aws:scheduler:::aws-sdk:sqs:sendMessage")
///                 .roleArn(exampleAwsIamRole.arn())
///                 .input(example.url().applyValue(_url -> serializeJson(
///                     jsonObject(
///                         jsonProperty("MessageBody", "Greetings, programs!"),
///                         jsonProperty("QueueUrl", _url)
///                     ))))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sqs:Queue
///   exampleSchedule:
///     type: aws:scheduler:Schedule
///     name: example
///     properties:
///       name: my-schedule
///       flexibleTimeWindow:
///         mode: OFF
///       scheduleExpression: rate(1 hours)
///       target:
///         arn: arn:aws:scheduler:::aws-sdk:sqs:sendMessage
///         roleArn: ${exampleAwsIamRole.arn}
///         input:
///           fn::toJSON:
///             MessageBody: Greetings, programs!
///             QueueUrl: ${example.url}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import schedules using the combination `group_name/name`. For example:
///
/// ```sh
/// $ pulumi import aws:scheduler/schedule:Schedule example my-schedule-group/my-schedule
/// ```
class Schedule extends pulumi.CustomResource {
  /// Action that applies to the schedule after completing invocation of the target. Valid values are `NONE` and `DELETE`. Defaults to `NONE`.
  late final pulumi.Output<String> actionAfterCompletion;

  /// ARN of the schedule.
  late final pulumi.Output<String> arn;

  /// Brief description of the schedule.
  late final pulumi.Output<String?> description;

  /// The date, in UTC, before which the schedule can invoke its target. Depending on the schedule's recurrence expression, invocations might stop on, or before, the end date you specify. EventBridge Scheduler ignores the end date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  late final pulumi.Output<String?> endDate;

  /// Configures a time window during which EventBridge Scheduler invokes the schedule. Detailed below.
  late final pulumi.Output<ScheduleFlexibleTimeWindow> flexibleTimeWindow;

  /// Name of the schedule group to associate with this schedule. When omitted, the `default` schedule group is used.
  late final pulumi.Output<String> groupName;

  /// ARN for the customer managed KMS key that EventBridge Scheduler will use to encrypt and decrypt your data.
  late final pulumi.Output<String?> kmsKeyArn;

  /// Name of the schedule. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Defines when the schedule runs. Read more in [Schedule types on EventBridge Scheduler](https://docs.aws.amazon.com/scheduler/latest/UserGuide/schedule-types.html).
  late final pulumi.Output<String> scheduleExpression;

  /// Timezone in which the scheduling expression is evaluated. Defaults to `UTC`. Example: `Australia/Sydney`.
  late final pulumi.Output<String?> scheduleExpressionTimezone;

  /// The date, in UTC, after which the schedule can begin invoking its target. Depending on the schedule's recurrence expression, invocations might occur on, or after, the start date you specify. EventBridge Scheduler ignores the start date for one-time schedules. Example: `2030-01-01T01:00:00Z`.
  late final pulumi.Output<String?> startDate;

  /// Specifies whether the schedule is enabled or disabled. One of: `ENABLED` (default), `DISABLED`.
  late final pulumi.Output<String?> state;

  /// Configures the target of the schedule. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ScheduleTarget> target;

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_scheduler_schedule_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:scheduler/schedule:Schedule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.actionAfterCompletion = registerOutput<String>(
      'actionAfterCompletion',
    );
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.endDate = registerOutput<String?>('endDate');
    this.flexibleTimeWindow = registerOutput<ScheduleFlexibleTimeWindow>(
      'flexibleTimeWindow',
    );
    this.groupName = registerOutput<String>('groupName');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.scheduleExpression = registerOutput<String>('scheduleExpression');
    this.scheduleExpressionTimezone = registerOutput<String?>(
      'scheduleExpressionTimezone',
    );
    this.startDate = registerOutput<String?>('startDate');
    this.state = registerOutput<String?>('state');
    this.target = registerOutput<ScheduleTarget>('target');
  }
}
