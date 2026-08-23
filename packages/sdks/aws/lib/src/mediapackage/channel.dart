import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_args.dart';
import 'channel_state.dart';

/// Provides an AWS Elemental MediaPackage Channel.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const kittens = new aws.mediapackage.Channel("kittens", {
///     channelId: "kitten-channel",
///     description: "A channel dedicated to amusing videos of kittens.",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// kittens = aws.mediapackage.Channel("kittens",
///     channel_id="kitten-channel",
///     description="A channel dedicated to amusing videos of kittens.")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var kittens = new Aws.MediaPackage.Channel("kittens", new()
///     {
///         ChannelId = "kitten-channel",
///         Description = "A channel dedicated to amusing videos of kittens.",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mediapackage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mediapackage.NewChannel(ctx, "kittens", &mediapackage.ChannelArgs{
/// 			ChannelId:   pulumi.String("kitten-channel"),
/// 			Description: pulumi.String("A channel dedicated to amusing videos of kittens."),
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
/// resource "aws_mediapackage_channel" "kittens" {
///   channel_id  = "kitten-channel"
///   description = "A channel dedicated to amusing videos of kittens."
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.mediapackage.Channel;
/// import com.pulumi.aws.mediapackage.ChannelArgs;
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
///         var kittens = new Channel("kittens", ChannelArgs.builder()
///             .channelId("kitten-channel")
///             .description("A channel dedicated to amusing videos of kittens.")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   kittens:
///     type: aws:mediapackage:Channel
///     properties:
///       channelId: kitten-channel
///       description: A channel dedicated to amusing videos of kittens.
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Media Package Channels using the channel ID. For example:
///
/// ```sh
/// $ pulumi import aws:mediapackage/channel:Channel kittens kittens-channel
/// ```
class Channel extends pulumi.CustomResource {
  /// The ARN of the channel
  late final pulumi.Output<String> arn;
  /// A unique identifier describing the channel
  late final pulumi.Output<String> channelId;
  /// A description of the channel
  late final pulumi.Output<String> description;
  /// A single item list of HLS ingest information
  late final pulumi.Output<List<Map<String, dynamic>>> hlsIngests;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Channel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Channel]. {@macro pulumi_mediapackage_channel_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Channel(
    String name, {
    ChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mediapackage/channel:Channel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    channelId = registerOutput<String>('channelId');
    description = registerOutput<String>('description');
    hlsIngests = registerOutput<List<Map<String, dynamic>>>('hlsIngests');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Channel] resource's state with the given [name] and [id].
  static Channel get(
    String name,
    pulumi.Input<String> id, {
    ChannelState? state,
  }) {
    return Channel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Channel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:mediapackage/channel:Channel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    channelId = registerOutput<String>('channelId');
    description = registerOutput<String>('description');
    hlsIngests = registerOutput<List<Map<String, dynamic>>>('hlsIngests');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
