import 'package:pulumi/pulumi.dart';
import 'channel_args.dart';

/// Resource for managing an AWS IVS (Interactive Video) Channel.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var example = new Aws.Ivs.Channel("example", new()
/// {
/// Name = "channel-1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ivs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ivs.NewChannel(ctx, "example", &ivs.ChannelArgs{
/// Name: pulumi.String("channel-1"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Channel("example", ChannelArgs.builder()
/// .name("channel-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ivs:Channel
/// properties:
/// name: channel-1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the IVS channel.
///
///
/// Using `pulumi import`, import IVS (Interactive Video) Channel using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ivs/channel:Channel example arn:aws:ivs:us-west-2:326937407773:channel/0Y1lcs4U7jk5
/// ```
class Channel extends CustomResource {
  /// ARN of the Channel.
  late final Output<String> arn;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, channel is private (enabled for playback authorization).
  late final Output<bool> authorized;

  /// Channel ingest endpoint, part of the definition of an ingest server, used when setting up streaming software.
  late final Output<String> ingestEndpoint;

  /// Channel latency mode. Valid values: `NORMAL`, `LOW`.
  late final Output<String> latencyMode;

  /// Channel name.
  late final Output<String> name;

  /// Channel playback URL.
  late final Output<String> playbackUrl;

  /// Recording configuration ARN.
  late final Output<String> recordingConfigurationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Channel type, which determines the allowable resolution and bitrate. Valid values: `STANDARD`, `BASIC`.
  late final Output<String> type;

  Channel(
    String name, {
    ChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ivs/channel:Channel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.authorized = Output.createUnknown<bool>();
    this.ingestEndpoint = Output.createUnknown<String>();
    this.latencyMode = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.playbackUrl = Output.createUnknown<String>();
    this.recordingConfigurationArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.type = Output.createUnknown<String>();
  }
}
