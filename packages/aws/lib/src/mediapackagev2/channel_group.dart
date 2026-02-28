import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_group_args.dart';

/// Creates an AWS Elemental MediaPackage Version 2 Channel Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mediapackagev2.ChannelGroup("example", {
///     name: "example",
///     description: "channel group for example channels",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mediapackagev2.ChannelGroup("example",
///     name="example",
///     description="channel group for example channels")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MediaPackageV2.ChannelGroup("example", new()
///     {
///         Name = "example",
///         Description = "channel group for example channels",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mediapackagev2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mediapackagev2.NewChannelGroup(ctx, "example", &mediapackagev2.ChannelGroupArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("channel group for example channels"),
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
/// import com.pulumi.aws.mediapackagev2.ChannelGroup;
/// import com.pulumi.aws.mediapackagev2.ChannelGroupArgs;
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
///         var example = new ChannelGroup("example", ChannelGroupArgs.builder()
///             .name("example")
///             .description("channel group for example channels")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:mediapackagev2:ChannelGroup
///     properties:
///       name: example
///       description: channel group for example channels
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Elemental MediaPackage Version 2 Channel Group using the channel group's `name`. For example:
///
/// ```sh
/// $ pulumi import aws:mediapackagev2/channelGroup:ChannelGroup example example
/// ```
class ChannelGroup extends pulumi.CustomResource {
  /// The ARN of the channel
  late final pulumi.Output<String> arn;

  /// A description of the channel group
  late final pulumi.Output<String?> description;

  /// The egress domain of the channel group
  late final pulumi.Output<String> egressDomain;

  /// A unique identifier naming the channel group
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ChannelGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChannelGroup]. {@macro pulumi_mediapackagev2_channel_group_channel_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChannelGroup(
    String name, {
    ChannelGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mediapackagev2/channelGroup:ChannelGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.egressDomain = registerOutput<String>('egressDomain');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
