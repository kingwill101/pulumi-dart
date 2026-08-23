import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_insights_configuration.dart';
import 'group_state.dart';

/// Creates and manages an AWS XRay Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.xray.Group("example", {
///     groupName: "example",
///     filterExpression: "responsetime > 5",
///     insightsConfiguration: {
///         insightsEnabled: true,
///         notificationsEnabled: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.xray.Group("example",
///     group_name="example",
///     filter_expression="responsetime > 5",
///     insights_configuration={
///         "insights_enabled": True,
///         "notifications_enabled": True,
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
///     var example = new Aws.Xray.Group("example", new()
///     {
///         GroupName = "example",
///         FilterExpression = "responsetime > 5",
///         InsightsConfiguration = new Aws.Xray.Inputs.GroupInsightsConfigurationArgs
///         {
///             InsightsEnabled = true,
///             NotificationsEnabled = true,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/xray"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := xray.NewGroup(ctx, "example", &xray.GroupArgs{
/// 			GroupName:        pulumi.String("example"),
/// 			FilterExpression: pulumi.String("responsetime > 5"),
/// 			InsightsConfiguration: &xray.GroupInsightsConfigurationArgs{
/// 				InsightsEnabled:      pulumi.Bool(true),
/// 				NotificationsEnabled: pulumi.Bool(true),
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
/// resource "aws_xray_group" "example" {
///   group_name        = "example"
///   filter_expression = "responsetime > 5"
///   insights_configuration = {
///     insights_enabled      = true
///     notifications_enabled = true
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.xray.Group;
/// import com.pulumi.aws.xray.GroupArgs;
/// import com.pulumi.aws.xray.inputs.GroupInsightsConfigurationArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .groupName("example")
///             .filterExpression("responsetime > 5")
///             .insightsConfiguration(GroupInsightsConfigurationArgs.builder()
///                 .insightsEnabled(true)
///                 .notificationsEnabled(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:xray:Group
///     properties:
///       groupName: example
///       filterExpression: responsetime > 5
///       insightsConfiguration:
///         insightsEnabled: true
///         notificationsEnabled: true
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the X-Ray group.
///
///
/// Using `pulumi import`, import XRay Groups using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:xray/group:Group example arn:aws:xray:us-west-2:1234567890:group/example-group/TNGX7SW5U6QY36T4ZMOUA3HVLBYCZTWDIOOXY3CJAXTHSS3YCWUA
/// ```
class Group extends pulumi.CustomResource {
  /// The ARN of the Group.
  late final pulumi.Output<String> arn;
  /// The filter expression defining criteria by which to group traces. more info can be found in official [docs](https://docs.aws.amazon.com/xray/latest/devguide/xray-console-filters.html).
  late final pulumi.Output<String> filterExpression;
  /// The name of the group.
  late final pulumi.Output<String> groupName;
  /// Configuration options for enabling insights.
  late final pulumi.Output<GroupInsightsConfiguration> insightsConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_xray_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:xray/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    filterExpression = registerOutput<String>('filterExpression');
    groupName = registerOutput<String>('groupName');
    insightsConfiguration = registerOutput<GroupInsightsConfiguration>('insightsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupInsightsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:xray/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    filterExpression = registerOutput<String>('filterExpression');
    groupName = registerOutput<String>('groupName');
    insightsConfiguration = registerOutput<GroupInsightsConfiguration>('insightsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupInsightsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
