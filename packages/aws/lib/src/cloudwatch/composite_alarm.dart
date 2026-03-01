import 'package:pulumi/pulumi.dart' as pulumi;
import 'composite_alarm_actions_suppressor.dart';
import 'composite_alarm_args.dart';

/// Provides a CloudWatch Composite Alarm resource.
///
/// > **NOTE:** An alarm (composite or metric) cannot be destroyed when there are other composite alarms depending on it. This can lead to a cyclical dependency on update, as the provider will unsuccessfully attempt to destroy alarms before updating the rule. Consider using `depends_on`, references to alarm names, and two-stage updates.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.CompositeAlarm("example", {
///     alarmDescription: "This is a composite alarm!",
///     alarmName: "example-composite-alarm",
///     alarmActions: exampleAwsSnsTopic.arn,
///     okActions: exampleAwsSnsTopic.arn,
///     alarmRule: `ALARM(${alpha.alarmName}) OR
/// ALARM(${bravo.alarmName})
/// `,
///     actionsSuppressor: {
///         alarm: "suppressor-alarm",
///         extensionPeriod: 10,
///         waitPeriod: 20,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.CompositeAlarm("example",
///     alarm_description="This is a composite alarm!",
///     alarm_name="example-composite-alarm",
///     alarm_actions=example_aws_sns_topic["arn"],
///     ok_actions=example_aws_sns_topic["arn"],
///     alarm_rule=f"""ALARM({alpha["alarmName"]}) OR
/// ALARM({bravo["alarmName"]})
/// """,
///     actions_suppressor={
///         "alarm": "suppressor-alarm",
///         "extension_period": 10,
///         "wait_period": 20,
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
///     var example = new Aws.CloudWatch.CompositeAlarm("example", new()
///     {
///         AlarmDescription = "This is a composite alarm!",
///         AlarmName = "example-composite-alarm",
///         AlarmActions = exampleAwsSnsTopic.Arn,
///         OkActions = exampleAwsSnsTopic.Arn,
///         AlarmRule = @$"ALARM({alpha.AlarmName}) OR
/// ALARM({bravo.AlarmName})
/// ",
///         ActionsSuppressor = new Aws.CloudWatch.Inputs.CompositeAlarmActionsSuppressorArgs
///         {
///             Alarm = "suppressor-alarm",
///             ExtensionPeriod = 10,
///             WaitPeriod = 20,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewCompositeAlarm(ctx, "example", &cloudwatch.CompositeAlarmArgs{
/// 			AlarmDescription: pulumi.String("This is a composite alarm!"),
/// 			AlarmName:        pulumi.String("example-composite-alarm"),
/// 			AlarmActions:     pulumi.Any(exampleAwsSnsTopic.Arn),
/// 			OkActions:        pulumi.Any(exampleAwsSnsTopic.Arn),
/// 			AlarmRule:        pulumi.Sprintf("ALARM(%v) OR\nALARM(%v)\n", alpha.AlarmName, bravo.AlarmName),
/// 			ActionsSuppressor: &cloudwatch.CompositeAlarmActionsSuppressorArgs{
/// 				Alarm:           pulumi.String("suppressor-alarm"),
/// 				ExtensionPeriod: pulumi.Int(10),
/// 				WaitPeriod:      pulumi.Int(20),
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
/// import com.pulumi.aws.cloudwatch.CompositeAlarm;
/// import com.pulumi.aws.cloudwatch.CompositeAlarmArgs;
/// import com.pulumi.aws.cloudwatch.inputs.CompositeAlarmActionsSuppressorArgs;
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
///         var example = new CompositeAlarm("example", CompositeAlarmArgs.builder()
///             .alarmDescription("This is a composite alarm!")
///             .alarmName("example-composite-alarm")
///             .alarmActions(exampleAwsSnsTopic.arn())
///             .okActions(exampleAwsSnsTopic.arn())
///             .alarmRule("""
/// ALARM(%s) OR
/// ALARM(%s)
/// ", alpha.alarmName(),bravo.alarmName()))
///             .actionsSuppressor(CompositeAlarmActionsSuppressorArgs.builder()
///                 .alarm("suppressor-alarm")
///                 .extensionPeriod(10)
///                 .waitPeriod(20)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:CompositeAlarm
///     properties:
///       alarmDescription: This is a composite alarm!
///       alarmName: example-composite-alarm
///       alarmActions: ${exampleAwsSnsTopic.arn}
///       okActions: ${exampleAwsSnsTopic.arn}
///       alarmRule: |
///         ALARM(${alpha.alarmName}) OR
///         ALARM(${bravo.alarmName})
///       actionsSuppressor:
///         alarm: suppressor-alarm
///         extensionPeriod: 10
///         waitPeriod: 20
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a CloudWatch Composite Alarm using the `alarm_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/compositeAlarm:CompositeAlarm test my-alarm
/// ```
class CompositeAlarm extends pulumi.CustomResource {
  /// Indicates whether actions should be executed during any changes to the alarm state of the composite alarm. Defaults to `true`.
  late final pulumi.Output<bool?> actionsEnabled;

  /// Actions will be suppressed if the suppressor alarm is in the ALARM state.
  late final pulumi.Output<CompositeAlarmActionsSuppressor?> actionsSuppressor;

  /// The set of actions to execute when this alarm transitions to the `ALARM` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  late final pulumi.Output<List<String>?> alarmActions;

  /// The description for the composite alarm.
  late final pulumi.Output<String?> alarmDescription;

  /// The name for the composite alarm. This name must be unique within the region.
  late final pulumi.Output<String> alarmName;

  /// An expression that specifies which other alarms are to be evaluated to determine this composite alarm's state. For syntax, see [Creating a Composite Alarm](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Create_Composite_Alarm.html). The maximum length is 10240 characters.
  late final pulumi.Output<String> alarmRule;

  /// The ARN of the composite alarm.
  late final pulumi.Output<String> arn;

  /// The set of actions to execute when this alarm transitions to the `INSUFFICIENT_DATA` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  late final pulumi.Output<List<String>?> insufficientDataActions;

  /// The set of actions to execute when this alarm transitions to an `OK` state from any other state. Each action is specified as an ARN. Up to 5 actions are allowed.
  late final pulumi.Output<List<String>?> okActions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to associate with the alarm. Up to 50 tags are allowed. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [CompositeAlarm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CompositeAlarm]. {@macro pulumi_cloudwatch_composite_alarm_composite_alarm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CompositeAlarm(
    String name, {
    CompositeAlarmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudwatch/compositeAlarm:CompositeAlarm',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.actionsEnabled = registerOutput<bool?>('actionsEnabled');
    this.actionsSuppressor = registerOutput<CompositeAlarmActionsSuppressor?>(
      'actionsSuppressor',
    );
    this.alarmActions = registerOutput<List<String>?>('alarmActions');
    this.alarmDescription = registerOutput<String?>('alarmDescription');
    this.alarmName = registerOutput<String>('alarmName');
    this.alarmRule = registerOutput<String>('alarmRule');
    this.arn = registerOutput<String>('arn');
    this.insufficientDataActions = registerOutput<List<String>?>(
      'insufficientDataActions',
    );
    this.okActions = registerOutput<List<String>?>('okActions');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
