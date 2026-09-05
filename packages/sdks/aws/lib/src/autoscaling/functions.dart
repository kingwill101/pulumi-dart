import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_ids_args.dart';
import 'get_ami_ids_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';

/// The Autoscaling Groups data source allows access to the list of AWS
/// ASGs within a specific region. This will allow you to pass a list of AutoScaling Groups to other resources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const groups = aws.autoscaling.getAmiIds({
///     filters: [
///         {
///             name: "tag:Team",
///             values: ["Pets"],
///         },
///         {
///             name: "tag-key",
///             values: ["Environment"],
///         },
///     ],
/// });
/// const slackNotifications = new aws.autoscaling.Notification("slack_notifications", {
///     groupNames: groups.then(groups => groups.names),
///     notifications: [
///         aws.autoscaling.NotificationType.InstanceLaunch,
///         aws.autoscaling.NotificationType.InstanceTerminate,
///         aws.autoscaling.NotificationType.InstanceLaunchError,
///         aws.autoscaling.NotificationType.InstanceTerminateError,
///     ],
///     topicArn: "TOPIC ARN",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// groups = aws.autoscaling.get_ami_ids(filters=[
///     {
///         "name": "tag:Team",
///         "values": ["Pets"],
///     },
///     {
///         "name": "tag-key",
///         "values": ["Environment"],
///     },
/// ])
/// slack_notifications = aws.autoscaling.Notification("slack_notifications",
///     group_names=groups.names,
///     notifications=[
///         aws.autoscaling.NotificationType.INSTANCE_LAUNCH,
///         aws.autoscaling.NotificationType.INSTANCE_TERMINATE,
///         aws.autoscaling.NotificationType.INSTANCE_LAUNCH_ERROR,
///         aws.autoscaling.NotificationType.INSTANCE_TERMINATE_ERROR,
///     ],
///     topic_arn="TOPIC ARN")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var groups = Aws.AutoScaling.GetAmiIds.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.AutoScaling.Inputs.GetAmiIdsFilterInputArgs
///             {
///                 Name = "tag:Team",
///                 Values = new[]
///                 {
///                     "Pets",
///                 },
///             },
///             new Aws.AutoScaling.Inputs.GetAmiIdsFilterInputArgs
///             {
///                 Name = "tag-key",
///                 Values = new[]
///                 {
///                     "Environment",
///                 },
///             },
///         },
///     });
///
///     var slackNotifications = new Aws.AutoScaling.Notification("slack_notifications", new()
///     {
///         GroupNames = groups.Apply(getAmiIdsResult => getAmiIdsResult.Names),
///         Notifications = new[]
///         {
///             Aws.AutoScaling.NotificationType.InstanceLaunch,
///             Aws.AutoScaling.NotificationType.InstanceTerminate,
///             Aws.AutoScaling.NotificationType.InstanceLaunchError,
///             Aws.AutoScaling.NotificationType.InstanceTerminateError,
///         },
///         TopicArn = "TOPIC ARN",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		groups, err := autoscaling.GetAmiIds(ctx, &autoscaling.GetAmiIdsArgs{
/// 			Filters: []autoscaling.GetAmiIdsFilter{
/// 				{
/// 					Name: "tag:Team",
/// 					Values: []string{
/// 						"Pets",
/// 					},
/// 				},
/// 				{
/// 					Name: "tag-key",
/// 					Values: []string{
/// 						"Environment",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = autoscaling.NewNotification(ctx, "slack_notifications", &autoscaling.NotificationArgs{
/// 			GroupNames: toPulumiStringArray(groups.Names),
/// 			Notifications: autoscaling.NotificationTypeArray{
/// 				autoscaling.NotificationTypeInstanceLaunch,
/// 				autoscaling.NotificationTypeInstanceTerminate,
/// 				autoscaling.NotificationTypeInstanceLaunchError,
/// 				autoscaling.NotificationTypeInstanceTerminateError,
/// 			},
/// 			TopicArn: pulumi.String("TOPIC ARN"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// func toPulumiStringArray(arr []string) pulumi.StringArray {
/// 	var pulumiArr pulumi.StringArray
/// 	for _, v := range arr {
/// 		pulumiArr = append(pulumiArr, pulumi.String(v))
/// 	}
/// 	return pulumiArr
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
/// data "aws_autoscaling_getamiids" "groups" {
///   filters {
///     name   = "tag:Team"
///     values = ["Pets"]
///   }
///   filters {
///     name   = "tag-key"
///     values = ["Environment"]
///   }
/// }
///
/// resource "aws_autoscaling_notification" "slack_notifications" {
///   group_names   = data.aws_autoscaling_getamiids.groups.names
///   notifications = ["autoscaling:EC2_INSTANCE_LAUNCH", "autoscaling:EC2_INSTANCE_TERMINATE", "autoscaling:EC2_INSTANCE_LAUNCH_ERROR", "autoscaling:EC2_INSTANCE_TERMINATE_ERROR"]
///   topic_arn     = "TOPIC ARN"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.autoscaling.AutoscalingFunctions;
/// import com.pulumi.aws.autoscaling.inputs.GetAmiIdsArgs;
/// import com.pulumi.aws.autoscaling.inputs.GetAmiIdsFilterArgs;
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
///         final var groups = AutoscalingFunctions.getAmiIds(GetAmiIdsArgs.builder()
///             .filters(
///                 GetAmiIdsFilterArgs.builder()
///                     .name("tag:Team")
///                     .values("Pets")
///                     .build(),
///                 GetAmiIdsFilterArgs.builder()
///                     .name("tag-key")
///                     .values("Environment")
///                     .build())
///             .build());
///
///         var slackNotifications = new Notification("slackNotifications", NotificationArgs.builder()
///             .groupNames(groups.names())
///             .notifications(
///                 "autoscaling:EC2_INSTANCE_LAUNCH",
///                 "autoscaling:EC2_INSTANCE_TERMINATE",
///                 "autoscaling:EC2_INSTANCE_LAUNCH_ERROR",
///                 "autoscaling:EC2_INSTANCE_TERMINATE_ERROR")
///             .topicArn("TOPIC ARN")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   slackNotifications:
///     type: aws:autoscaling:Notification
///     name: slack_notifications
///     properties:
///       groupNames: ${groups.names}
///       notifications:
///         - autoscaling:EC2_INSTANCE_LAUNCH
///         - autoscaling:EC2_INSTANCE_TERMINATE
///         - autoscaling:EC2_INSTANCE_LAUNCH_ERROR
///         - autoscaling:EC2_INSTANCE_TERMINATE_ERROR
///       topicArn: TOPIC ARN
/// variables:
///   groups:
///     fn::invoke:
///       function: aws:autoscaling:getAmiIds
///       arguments:
///         filters:
///           - name: tag:Team
///             values:
///               - Pets
///           - name: tag-key
///             values:
///               - Environment
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_autoscaling_get_ami_ids_get_ami_ids_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAmiIdsResult> getAmiIds(
  GetAmiIdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:autoscaling/getAmiIds:getAmiIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAmiIdsResult.fromMap(result);
}

pulumi.Output<GetAmiIdsResult> getAmiIdsOutput(
  GetAmiIdsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:autoscaling/getAmiIds:getAmiIds',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAmiIdsResult.fromMap);
}

/// Use this data source to get information on an existing autoscaling group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = aws.autoscaling.getGroup({
///     name: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.autoscaling.get_group(name="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.AutoScaling.GetGroup.Invoke(new()
///     {
///         Name = "foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/autoscaling"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := autoscaling.LookupGroup(ctx, &autoscaling.LookupGroupArgs{
/// 			Name: "foo",
/// 		}, nil)
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
/// data "aws_autoscaling_getgroup" "foo" {
///   name = "foo"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.autoscaling.AutoscalingFunctions;
/// import com.pulumi.aws.autoscaling.inputs.GetGroupArgs;
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
///         final var foo = AutoscalingFunctions.getGroup(GetGroupArgs.builder()
///             .name("foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:autoscaling:getGroup
///       arguments:
///         name: foo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_autoscaling_get_group_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:autoscaling/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

pulumi.Output<GetGroupResult> getGroupOutput(
  GetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:autoscaling/getGroup:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupResult.fromMap);
}
