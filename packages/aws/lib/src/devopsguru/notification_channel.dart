import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_channel_args.dart';
import 'notification_channel_filters.dart';
import 'notification_channel_sns.dart';

/// Resource for managing an AWS DevOps Guru Notification Channel.
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
/// const example = new aws.devopsguru.NotificationChannel("example", {sns: {
///     topicArn: exampleAwsSnsTopic.arn,
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.NotificationChannel("example", sns={
///     "topic_arn": example_aws_sns_topic["arn"],
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
///     var example = new Aws.DevOpsGuru.NotificationChannel("example", new()
///     {
///         Sns = new Aws.DevOpsGuru.Inputs.NotificationChannelSnsArgs
///         {
///             TopicArn = exampleAwsSnsTopic.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsguru.NewNotificationChannel(ctx, "example", &devopsguru.NotificationChannelArgs{
/// 			Sns: &devopsguru.NotificationChannelSnsArgs{
/// 				TopicArn: pulumi.Any(exampleAwsSnsTopic.Arn),
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
/// import com.pulumi.aws.devopsguru.NotificationChannel;
/// import com.pulumi.aws.devopsguru.NotificationChannelArgs;
/// import com.pulumi.aws.devopsguru.inputs.NotificationChannelSnsArgs;
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
///         var example = new NotificationChannel("example", NotificationChannelArgs.builder()
///             .sns(NotificationChannelSnsArgs.builder()
///                 .topicArn(exampleAwsSnsTopic.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsguru:NotificationChannel
///     properties:
///       sns:
///         topicArn: ${exampleAwsSnsTopic.arn}
/// ```
///
///
/// ### Filters
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsguru.NotificationChannel("example", {
///     sns: {
///         topicArn: exampleAwsSnsTopic.arn,
///     },
///     filters: {
///         messageTypes: ["NEW_INSIGHT"],
///         severities: ["HIGH"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.NotificationChannel("example",
///     sns={
///         "topic_arn": example_aws_sns_topic["arn"],
///     },
///     filters={
///         "message_types": ["NEW_INSIGHT"],
///         "severities": ["HIGH"],
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
///     var example = new Aws.DevOpsGuru.NotificationChannel("example", new()
///     {
///         Sns = new Aws.DevOpsGuru.Inputs.NotificationChannelSnsArgs
///         {
///             TopicArn = exampleAwsSnsTopic.Arn,
///         },
///         Filters = new Aws.DevOpsGuru.Inputs.NotificationChannelFiltersArgs
///         {
///             MessageTypes = new[]
///             {
///                 "NEW_INSIGHT",
///             },
///             Severities = new[]
///             {
///                 "HIGH",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsguru.NewNotificationChannel(ctx, "example", &devopsguru.NotificationChannelArgs{
/// 			Sns: &devopsguru.NotificationChannelSnsArgs{
/// 				TopicArn: pulumi.Any(exampleAwsSnsTopic.Arn),
/// 			},
/// 			Filters: &devopsguru.NotificationChannelFiltersArgs{
/// 				MessageTypes: pulumi.StringArray{
/// 					pulumi.String("NEW_INSIGHT"),
/// 				},
/// 				Severities: pulumi.StringArray{
/// 					pulumi.String("HIGH"),
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
/// import com.pulumi.aws.devopsguru.NotificationChannel;
/// import com.pulumi.aws.devopsguru.NotificationChannelArgs;
/// import com.pulumi.aws.devopsguru.inputs.NotificationChannelSnsArgs;
/// import com.pulumi.aws.devopsguru.inputs.NotificationChannelFiltersArgs;
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
///         var example = new NotificationChannel("example", NotificationChannelArgs.builder()
///             .sns(NotificationChannelSnsArgs.builder()
///                 .topicArn(exampleAwsSnsTopic.arn())
///                 .build())
///             .filters(NotificationChannelFiltersArgs.builder()
///                 .messageTypes("NEW_INSIGHT")
///                 .severities("HIGH")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsguru:NotificationChannel
///     properties:
///       sns:
///         topicArn: ${exampleAwsSnsTopic.arn}
///       filters:
///         messageTypes:
///           - NEW_INSIGHT
///         severities:
///           - HIGH
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DevOps Guru Notification Channel using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/notificationChannel:NotificationChannel example id-12345678
/// ```
class NotificationChannel extends pulumi.CustomResource {
  /// Filter configurations for the Amazon SNS notification topic. See the `filters` argument reference below.
  late final pulumi.Output<NotificationChannelFilters?> filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// SNS noficiation channel configurations. See the `sns` argument reference below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<NotificationChannelSns> sns;

  /// Creates a new [NotificationChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationChannel]. {@macro pulumi_devopsguru_notification_channel_notification_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationChannel(
    String name, {
    NotificationChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/notificationChannel:NotificationChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.filters = registerOutput<NotificationChannelFilters?>('filters');
    this.region = registerOutput<String>('region');
    this.sns = registerOutput<NotificationChannelSns>('sns');
  }
}
