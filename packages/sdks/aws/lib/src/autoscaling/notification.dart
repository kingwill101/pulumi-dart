import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_args.dart';
import 'notification_state.dart';
import 'notification_type.dart';

/// Provides an AutoScaling Group with Notification support, via SNS Topics. Each of
/// the `notifications` map to a [Notification Configuration](https://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_DescribeNotificationConfigurations.html) inside Amazon Web
/// Services, and are applied to each AutoScaling Group you supply.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sns.Topic("example", {name: "example-topic"});
/// const bar = new aws.autoscaling.Group("bar", {name: "foobar1-test"});
/// const foo = new aws.autoscaling.Group("foo", {name: "barfoo-test"});
/// const exampleNotifications = new aws.autoscaling.Notification("example_notifications", {
///     groupNames: [
///         bar.name,
///         foo.name,
///     ],
///     notifications: [
///         aws.autoscaling.NotificationType.InstanceLaunch,
///         aws.autoscaling.NotificationType.InstanceTerminate,
///         aws.autoscaling.NotificationType.InstanceLaunchError,
///         aws.autoscaling.NotificationType.InstanceTerminateError,
///     ],
///     topicArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sns.Topic("example", name="example-topic")
/// bar = aws.autoscaling.Group("bar", name="foobar1-test")
/// foo = aws.autoscaling.Group("foo", name="barfoo-test")
/// example_notifications = aws.autoscaling.Notification("example_notifications",
///     group_names=[
///         bar.name,
///         foo.name,
///     ],
///     notifications=[
///         aws.autoscaling.NotificationType.INSTANCE_LAUNCH,
///         aws.autoscaling.NotificationType.INSTANCE_TERMINATE,
///         aws.autoscaling.NotificationType.INSTANCE_LAUNCH_ERROR,
///         aws.autoscaling.NotificationType.INSTANCE_TERMINATE_ERROR,
///     ],
///     topic_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sns.Topic("example", new()
///     {
///         Name = "example-topic",
///     });
///
///     var bar = new Aws.AutoScaling.Group("bar", new()
///     {
///         Name = "foobar1-test",
///     });
///
///     var foo = new Aws.AutoScaling.Group("foo", new()
///     {
///         Name = "barfoo-test",
///     });
///
///     var exampleNotifications = new Aws.AutoScaling.Notification("example_notifications", new()
///     {
///         GroupNames = new[]
///         {
///             bar.Name,
///             foo.Name,
///         },
///         Notifications = new[]
///         {
///             Aws.AutoScaling.NotificationType.InstanceLaunch,
///             Aws.AutoScaling.NotificationType.InstanceTerminate,
///             Aws.AutoScaling.NotificationType.InstanceLaunchError,
///             Aws.AutoScaling.NotificationType.InstanceTerminateError,
///         },
///         TopicArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sns.NewTopic(ctx, "example", &sns.TopicArgs{
/// 			Name: pulumi.String("example-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := autoscaling.NewGroup(ctx, "bar", &autoscaling.GroupArgs{
/// 			Name: pulumi.String("foobar1-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		foo, err := autoscaling.NewGroup(ctx, "foo", &autoscaling.GroupArgs{
/// 			Name: pulumi.String("barfoo-test"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = autoscaling.NewNotification(ctx, "example_notifications", &autoscaling.NotificationArgs{
/// 			GroupNames: pulumi.StringArray{
/// 				bar.Name,
/// 				foo.Name,
/// 			},
/// 			Notifications: autoscaling.NotificationTypeArray{
/// 				autoscaling.NotificationTypeInstanceLaunch,
/// 				autoscaling.NotificationTypeInstanceTerminate,
/// 				autoscaling.NotificationTypeInstanceLaunchError,
/// 				autoscaling.NotificationTypeInstanceTerminateError,
/// 			},
/// 			TopicArn: example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_autoscaling_notification" "example_notifications" {
///   group_names   = [aws_autoscaling_group.bar.name, aws_autoscaling_group.foo.name]
///   notifications = ["autoscaling:EC2_INSTANCE_LAUNCH", "autoscaling:EC2_INSTANCE_TERMINATE", "autoscaling:EC2_INSTANCE_LAUNCH_ERROR", "autoscaling:EC2_INSTANCE_TERMINATE_ERROR"]
///   topic_arn     = aws_sns_topic.example.arn
/// }
/// resource "aws_sns_topic" "example" {
///   name = "example-topic"
/// }
/// resource "aws_autoscaling_group" "bar" {
///   name = "foobar1-test"
/// }
/// resource "aws_autoscaling_group" "foo" {
///   name = "barfoo-test"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sns.Topic;
/// import com.pulumi.aws.sns.TopicArgs;
/// import com.pulumi.aws.autoscaling.Group;
/// import com.pulumi.aws.autoscaling.GroupArgs;
/// import com.pulumi.aws.autoscaling.Notification;
/// import com.pulumi.aws.autoscaling.NotificationArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("example-topic")
///             .build());
///
///         var bar = new Group("bar", GroupArgs.builder()
///             .name("foobar1-test")
///             .build());
///
///         var foo = new Group("foo", GroupArgs.builder()
///             .name("barfoo-test")
///             .build());
///
///         var exampleNotifications = new Notification("exampleNotifications", NotificationArgs.builder()
///             .groupNames(
///                 bar.name(),
///                 foo.name())
///             .notifications(
///                 "autoscaling:EC2_INSTANCE_LAUNCH",
///                 "autoscaling:EC2_INSTANCE_TERMINATE",
///                 "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
///                 "autoscaling:EC2_INSTANCE_TERMINATE_ERROR")
///             .topicArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleNotifications:
///     type: aws:autoscaling:Notification
///     name: example_notifications
///     properties:
///       groupNames:
///         - ${bar.name}
///         - ${foo.name}
///       notifications:
///         - autoscaling:EC2_INSTANCE_LAUNCH
///         - autoscaling:EC2_INSTANCE_TERMINATE
///         - autoscaling:EC2_INSTANCE_LAUNCH_ERROR
///         - autoscaling:EC2_INSTANCE_TERMINATE_ERROR
///       topicArn: ${example.arn}
///   example:
///     type: aws:sns:Topic
///     properties:
///       name: example-topic
///   bar:
///     type: aws:autoscaling:Group
///     properties:
///       name: foobar1-test
///   foo:
///     type: aws:autoscaling:Group
///     properties:
///       name: barfoo-test
/// ```
class Notification extends pulumi.CustomResource {
  /// List of AutoScaling Group Names
  late final pulumi.Output<List<String>> groupNames;
  /// List of Notification Types that trigger
  /// notifications. Acceptable values are documented [in the AWS documentation here](https://docs.aws.amazon.com/AutoScaling/latest/APIReference/API_NotificationConfiguration.html)
  late final pulumi.Output<List<NotificationType>> notifications;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Topic ARN for notifications to be sent through
  late final pulumi.Output<String> topicArn;

  /// Creates a new [Notification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Notification]. {@macro pulumi_autoscaling_notification_notification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Notification(
    String name, {
    NotificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/notification:Notification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    groupNames = registerOutput<List<String>>('groupNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    notifications = registerOutput<List<NotificationType>>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NotificationType>(guardedValue, (value) => NotificationType.fromValue(value as String)); });
    region = registerOutput<String>('region');
    topicArn = registerOutput<String>('topicArn');
  }

  /// Gets an existing [Notification] resource's state with the given [name] and [id].
  static Notification get(
    String name,
    pulumi.Input<String> id, {
    NotificationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Notification._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Notification._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:autoscaling/notification:Notification',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupNames = registerOutput<List<String>>('groupNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    notifications = registerOutput<List<NotificationType>>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NotificationType>(guardedValue, (value) => NotificationType.fromValue(value as String)); });
    region = registerOutput<String>('region');
    topicArn = registerOutput<String>('topicArn');
  }

  /// Creates a typed reference to an existing [Notification] resource.
  Notification.reference(String urn)
    : super(
        'aws:autoscaling/notification:Notification',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    groupNames = registerOutput<List<String>>('groupNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    notifications = registerOutput<List<NotificationType>>('notifications', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<NotificationType>(guardedValue, (value) => NotificationType.fromValue(value as String)); });
    region = registerOutput<String>('region');
    topicArn = registerOutput<String>('topicArn');
  }
}
