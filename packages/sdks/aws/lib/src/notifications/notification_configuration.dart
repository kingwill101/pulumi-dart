import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_configuration_args.dart';
import 'notification_configuration_state.dart';

/// Resource for managing an AWS User Notifications Notification Configuration.
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
/// const example = new aws.notifications.NotificationConfiguration("example", {
///     name: "example",
///     description: "Example notification configuration",
///     tags: {
///         Environment: "production",
///         Project: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.NotificationConfiguration("example",
///     name="example",
///     description="Example notification configuration",
///     tags={
///         "Environment": "production",
///         "Project": "example",
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
///     var example = new Aws.Notifications.NotificationConfiguration("example", new()
///     {
///         Name = "example",
///         Description = "Example notification configuration",
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Project", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notifications.NewNotificationConfiguration(ctx, "example", &notifications.NotificationConfigurationArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Example notification configuration"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Project":     pulumi.String("example"),
/// 			},
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
/// resource "aws_notifications_notificationconfiguration" "example" {
///   name        = "example"
///   description = "Example notification configuration"
///   tags = {
///     "Environment" = "production"
///     "Project"     = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.notifications.NotificationConfiguration;
/// import com.pulumi.aws.notifications.NotificationConfigurationArgs;
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
///         var example = new NotificationConfiguration("example", NotificationConfigurationArgs.builder()
///             .name("example")
///             .description("Example notification configuration")
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Project", "example")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:notifications:NotificationConfiguration
///     properties:
///       name: example
///       description: Example notification configuration
///       tags:
///         Environment: production
///         Project: example
/// ```
///
///
/// ### With Aggregation Duration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.notifications.NotificationConfiguration("example", {
///     name: "example-aggregation",
///     description: "Example notification configuration with aggregation",
///     aggregationDuration: "SHORT",
///     tags: {
///         Environment: "production",
///         Project: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.notifications.NotificationConfiguration("example",
///     name="example-aggregation",
///     description="Example notification configuration with aggregation",
///     aggregation_duration="SHORT",
///     tags={
///         "Environment": "production",
///         "Project": "example",
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
///     var example = new Aws.Notifications.NotificationConfiguration("example", new()
///     {
///         Name = "example-aggregation",
///         Description = "Example notification configuration with aggregation",
///         AggregationDuration = "SHORT",
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Project", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/notifications"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := notifications.NewNotificationConfiguration(ctx, "example", &notifications.NotificationConfigurationArgs{
/// 			Name:                pulumi.String("example-aggregation"),
/// 			Description:         pulumi.String("Example notification configuration with aggregation"),
/// 			AggregationDuration: pulumi.String("SHORT"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Project":     pulumi.String("example"),
/// 			},
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
/// resource "aws_notifications_notificationconfiguration" "example" {
///   name                 = "example-aggregation"
///   description          = "Example notification configuration with aggregation"
///   aggregation_duration = "SHORT"
///   tags = {
///     "Environment" = "production"
///     "Project"     = "example"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.notifications.NotificationConfiguration;
/// import com.pulumi.aws.notifications.NotificationConfigurationArgs;
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
///         var example = new NotificationConfiguration("example", NotificationConfigurationArgs.builder()
///             .name("example-aggregation")
///             .description("Example notification configuration with aggregation")
///             .aggregationDuration("SHORT")
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Project", "example")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:notifications:NotificationConfiguration
///     properties:
///       name: example-aggregation
///       description: Example notification configuration with aggregation
///       aggregationDuration: SHORT
///       tags:
///         Environment: production
///         Project: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import User Notifications Notification Configuration using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:notifications/notificationConfiguration:NotificationConfiguration example arn:aws:notifications::123456789012:configuration/abcdef1234567890abcdef1234567890
/// ```
class NotificationConfiguration extends pulumi.CustomResource {
  /// Aggregation preference of the NotificationConfiguration. Valid values: `LONG` (
  /// aggregate notifications for 12 hours), `SHORT` (aggregate notifications for 5 minutes), `NONE` (don't aggregate
  /// notifications). Default: `NONE`.
  late final pulumi.Output<String> aggregationDuration;
  /// Amazon Resource Name (ARN) of the NotificationConfiguration.
  late final pulumi.Output<String> arn;
  /// Description of the NotificationConfiguration. Length constraints: Minimum length of 0,
  /// maximum length of 256.
  late final pulumi.Output<String> description;
  /// Name of the NotificationConfiguration. Supports RFC 3986's unreserved characters. Length
  /// constraints: Minimum length of 1, maximum length of 64. Pattern: `[A-Za-z0-9_\-]+`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Map of tags to assign to the resource. A tag is a string-to-string map of key-value pairs. If
  /// configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those
  /// defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags`
  /// configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [NotificationConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotificationConfiguration]. {@macro pulumi_notifications_notification_configuration_notification_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotificationConfiguration(
    String name, {
    NotificationConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/notificationConfiguration:NotificationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregationDuration = registerOutput<String>('aggregationDuration');
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [NotificationConfiguration] resource's state with the given [name] and [id].
  static NotificationConfiguration get(
    String name,
    pulumi.Input<String> id, {
    NotificationConfigurationState? state,
  }) {
    return NotificationConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NotificationConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:notifications/notificationConfiguration:NotificationConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aggregationDuration = registerOutput<String>('aggregationDuration');
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
