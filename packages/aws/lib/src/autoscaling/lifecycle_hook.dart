import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_hook_args.dart';

/// Provides an AutoScaling Lifecycle Hook resource.
///
/// > **NOTE:** This provider has two types of ways you can add lifecycle hooks - via
/// the `initial_lifecycle_hook` attribute from the
/// `aws.autoscaling.Group`
/// resource, or via this one. Hooks added via this resource will not be added
/// until the autoscaling group has been created, and depending on your
/// capacity
/// settings, after the initial instances have been launched, creating unintended
/// behavior. If you need hooks to run on all instances, add them with
/// `initial_lifecycle_hook` in
/// `aws.autoscaling.Group`,
/// but take care to not duplicate those hooks with this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foobar = new aws.autoscaling.Group("foobar", {
///     availabilityZones: ["us-west-2a"],
///     name: "test-foobar5",
///     healthCheckType: "EC2",
///     terminationPolicies: ["OldestInstance"],
///     tags: [{
///         key: "Foo",
///         value: "foo-bar",
///         propagateAtLaunch: true,
///     }],
/// });
/// const foobarLifecycleHook = new aws.autoscaling.LifecycleHook("foobar", {
///     name: "foobar",
///     autoscalingGroupName: foobar.name,
///     defaultResult: "CONTINUE",
///     heartbeatTimeout: 2000,
///     lifecycleTransition: "autoscaling:EC2_INSTANCE_LAUNCHING",
///     notificationMetadata: JSON.stringify({
///         foo: "bar",
///     }),
///     notificationTargetArn: "arn:aws:sqs:us-east-1:444455556666:queue1*",
///     roleArn: "arn:aws:iam::123456789012:role/S3Access",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// foobar = aws.autoscaling.Group("foobar",
///     availability_zones=["us-west-2a"],
///     name="test-foobar5",
///     health_check_type="EC2",
///     termination_policies=["OldestInstance"],
///     tags=[{
///         "key": "Foo",
///         "value": "foo-bar",
///         "propagate_at_launch": True,
///     }])
/// foobar_lifecycle_hook = aws.autoscaling.LifecycleHook("foobar",
///     name="foobar",
///     autoscaling_group_name=foobar.name,
///     default_result="CONTINUE",
///     heartbeat_timeout=2000,
///     lifecycle_transition="autoscaling:EC2_INSTANCE_LAUNCHING",
///     notification_metadata=json.dumps({
///         "foo": "bar",
///     }),
///     notification_target_arn="arn:aws:sqs:us-east-1:444455556666:queue1*",
///     role_arn="arn:aws:iam::123456789012:role/S3Access")
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
///     var foobar = new Aws.AutoScaling.Group("foobar", new()
///     {
///         AvailabilityZones = new[]
///         {
///             "us-west-2a",
///         },
///         Name = "test-foobar5",
///         HealthCheckType = "EC2",
///         TerminationPolicies = new[]
///         {
///             "OldestInstance",
///         },
///         Tags = new[]
///         {
///             new Aws.AutoScaling.Inputs.GroupTagArgs
///             {
///                 Key = "Foo",
///                 Value = "foo-bar",
///                 PropagateAtLaunch = true,
///             },
///         },
///     });
///
///     var foobarLifecycleHook = new Aws.AutoScaling.LifecycleHook("foobar", new()
///     {
///         Name = "foobar",
///         AutoscalingGroupName = foobar.Name,
///         DefaultResult = "CONTINUE",
///         HeartbeatTimeout = 2000,
///         LifecycleTransition = "autoscaling:EC2_INSTANCE_LAUNCHING",
///         NotificationMetadata = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["foo"] = "bar",
///         }),
///         NotificationTargetArn = "arn:aws:sqs:us-east-1:444455556666:queue1*",
///         RoleArn = "arn:aws:iam::123456789012:role/S3Access",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foobar, err := autoscaling.NewGroup(ctx, "foobar", &autoscaling.GroupArgs{
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String("us-west-2a"),
/// 			},
/// 			Name:            pulumi.String("test-foobar5"),
/// 			HealthCheckType: pulumi.String("EC2"),
/// 			TerminationPolicies: pulumi.StringArray{
/// 				pulumi.String("OldestInstance"),
/// 			},
/// 			Tags: autoscaling.GroupTagArray{
/// 				&autoscaling.GroupTagArgs{
/// 					Key:               pulumi.String("Foo"),
/// 					Value:             pulumi.String("foo-bar"),
/// 					PropagateAtLaunch: pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"foo": "bar",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = autoscaling.NewLifecycleHook(ctx, "foobar", &autoscaling.LifecycleHookArgs{
/// 			Name:                  pulumi.String("foobar"),
/// 			AutoscalingGroupName:  foobar.Name,
/// 			DefaultResult:         pulumi.String("CONTINUE"),
/// 			HeartbeatTimeout:      pulumi.Int(2000),
/// 			LifecycleTransition:   pulumi.String("autoscaling:EC2_INSTANCE_LAUNCHING"),
/// 			NotificationMetadata:  pulumi.String(json0),
/// 			NotificationTargetArn: pulumi.String("arn:aws:sqs:us-east-1:444455556666:queue1*"),
/// 			RoleArn:               pulumi.String("arn:aws:iam::123456789012:role/S3Access"),
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
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.inputs.GroupTagArgs;
/// import com.pulumi.aws.autoscaling.LifecycleHook;
/// import com.pulumi.aws.autoscaling.LifecycleHookArgs;
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
///         var foobar = new Group("foobar", GroupArgs.builder()
///             .availabilityZones("us-west-2a")
///             .name("test-foobar5")
///             .healthCheckType("EC2")
///             .terminationPolicies("OldestInstance")
///             .tags(GroupTagArgs.builder()
///                 .key("Foo")
///                 .value("foo-bar")
///                 .propagateAtLaunch(true)
///                 .build())
///             .build());
///
///         var foobarLifecycleHook = new LifecycleHook("foobarLifecycleHook", LifecycleHookArgs.builder()
///             .name("foobar")
///             .autoscalingGroupName(foobar.name())
///             .defaultResult("CONTINUE")
///             .heartbeatTimeout(2000)
///             .lifecycleTransition("autoscaling:EC2_INSTANCE_LAUNCHING")
///             .notificationMetadata(serializeJson(
///                 jsonObject(
///                     jsonProperty("foo", "bar")
///                 )))
///             .notificationTargetArn("arn:aws:sqs:us-east-1:444455556666:queue1*")
///             .roleArn("arn:aws:iam::123456789012:role/S3Access")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foobar:
///     type: aws:autoscaling:Group
///     properties:
///       availabilityZones:
///         - us-west-2a
///       name: test-foobar5
///       healthCheckType: EC2
///       terminationPolicies:
///         - OldestInstance
///       tags:
///         - key: Foo
///           value: foo-bar
///           propagateAtLaunch: true
///   foobarLifecycleHook:
///     type: aws:autoscaling:LifecycleHook
///     name: foobar
///     properties:
///       name: foobar
///       autoscalingGroupName: ${foobar.name}
///       defaultResult: CONTINUE
///       heartbeatTimeout: 2000
///       lifecycleTransition: autoscaling:EC2_INSTANCE_LAUNCHING
///       notificationMetadata:
///         fn::toJSON:
///           foo: bar
///       notificationTargetArn: arn:aws:sqs:us-east-1:444455556666:queue1*
///       roleArn: arn:aws:iam::123456789012:role/S3Access
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AutoScaling Lifecycle Hooks using the role autoscaling_group_name and name separated by `/`. For example:
///
/// ```sh
/// $ pulumi import aws:autoscaling/lifecycleHook:LifecycleHook test-lifecycle-hook asg-name/lifecycle-hook-name
/// ```
class LifecycleHook extends pulumi.CustomResource {
  /// Name of the Auto Scaling group to which you want to assign the lifecycle hook
  late final pulumi.Output<String> autoscalingGroupName;

  /// Defines the action the Auto Scaling group should take when the lifecycle hook timeout elapses or if an unexpected failure occurs. The value for this parameter can be either CONTINUE or ABANDON. The default value for this parameter is ABANDON.
  late final pulumi.Output<String> defaultResult;

  /// Defines the amount of time, in seconds, that can elapse before the lifecycle hook times out. When the lifecycle hook times out, Auto Scaling performs the action defined in the DefaultResult parameter
  late final pulumi.Output<int?> heartbeatTimeout;

  /// Instance state to which you want to attach the lifecycle hook. For a list of lifecycle hook types, see [describe-lifecycle-hook-types](https://docs.aws.amazon.com/cli/latest/reference/autoscaling/describe-lifecycle-hook-types.html#examples)
  late final pulumi.Output<String> lifecycleTransition;

  /// Name of the lifecycle hook.
  late final pulumi.Output<String> name;

  /// Contains additional information that you want to include any time Auto Scaling sends a message to the notification target.
  late final pulumi.Output<String?> notificationMetadata;

  /// ARN of the notification target that Auto Scaling will use to notify you when an instance is in the transition state for the lifecycle hook. This ARN target can be either an SQS queue, an SNS topic, or a Lambda function.
  late final pulumi.Output<String?> notificationTargetArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the IAM role that allows the Auto Scaling group to publish to the specified notification target.
  late final pulumi.Output<String?> roleArn;

  /// Creates a new [LifecycleHook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LifecycleHook]. {@macro pulumi_autoscaling_lifecycle_hook_lifecycle_hook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LifecycleHook(
    String name, {
    LifecycleHookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/lifecycleHook:LifecycleHook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoscalingGroupName = registerOutput<String>('autoscalingGroupName');
    this.defaultResult = registerOutput<String>('defaultResult');
    this.heartbeatTimeout = registerOutput<int?>('heartbeatTimeout');
    this.lifecycleTransition = registerOutput<String>('lifecycleTransition');
    this.name = registerOutput<String>('name');
    this.notificationMetadata = registerOutput<String?>('notificationMetadata');
    this.notificationTargetArn =
        registerOutput<String?>('notificationTargetArn');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
  }
}
