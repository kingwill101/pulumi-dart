import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_args.dart';
import 'channel_state.dart';

/// Resource for managing an AWS IVS (Interactive Video) Channel.
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
/// const example = new aws.ivs.Channel("example", {name: "channel-1"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ivs.Channel("example", name="channel-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ivs.Channel("example", new()
///     {
///         Name = "channel-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ivs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ivs.NewChannel(ctx, "example", &ivs.ChannelArgs{
/// 			Name: pulumi.String("channel-1"),
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
/// resource "aws_ivs_channel" "example" {
///   name = "channel-1"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ivs.Channel;
/// import com.pulumi.aws.ivs.ChannelArgs;
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
///         var example = new Channel("example", ChannelArgs.builder()
///             .name("channel-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ivs:Channel
///     properties:
///       name: channel-1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IVS channel.
///
///
/// Using `pulumi import`, import IVS (Interactive Video) Channel using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ivs/channel:Channel example arn:aws:ivs:us-west-2:326937407773:channel/0Y1lcs4U7jk5
/// ```
class Channel extends pulumi.CustomResource {
  /// ARN of the Channel.
  late final pulumi.Output<String> arn;
  /// If `true`, channel is private (enabled for playback authorization).
  late final pulumi.Output<bool> authorized;
  /// Channel ingest endpoint, part of the definition of an ingest server, used when setting up streaming software.
  late final pulumi.Output<String> ingestEndpoint;
  /// Channel latency mode. Valid values: `NORMAL`, `LOW`.
  late final pulumi.Output<String> latencyMode;
  /// Channel name.
  late final pulumi.Output<String> name;
  /// Channel playback URL.
  late final pulumi.Output<String> playbackUrl;
  /// Recording configuration ARN.
  late final pulumi.Output<String> recordingConfigurationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  late final pulumi.Output<String> type;

  /// Creates a new [Channel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Channel]. {@macro pulumi_ivs_channel_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Channel(
    String name, {
    ChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ivs/channel:Channel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    authorized = registerOutput<bool>('authorized');
    ingestEndpoint = registerOutput<String>('ingestEndpoint');
    latencyMode = registerOutput<String>('latencyMode');
    this.name = registerOutput<String>('name');
    playbackUrl = registerOutput<String>('playbackUrl');
    recordingConfigurationArn = registerOutput<String>('recordingConfigurationArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
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
          'aws:ivs/channel:Channel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    authorized = registerOutput<bool>('authorized');
    ingestEndpoint = registerOutput<String>('ingestEndpoint');
    latencyMode = registerOutput<String>('latencyMode');
    this.name = registerOutput<String>('name');
    playbackUrl = registerOutput<String>('playbackUrl');
    recordingConfigurationArn = registerOutput<String>('recordingConfigurationArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }
}
