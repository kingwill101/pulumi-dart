import 'package:pulumi/pulumi.dart';
import 'channel_group_args.dart';

/// Creates an AWS Elemental MediaPackage Version 2 Channel Group.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.mediapackagev2.ChannelGroup("example", {
/// name: "example",
/// description: "channel group for example channels",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.mediapackagev2.ChannelGroup("example",
/// name="example",
/// description="channel group for example channels")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.MediaPackageV2.ChannelGroup("example", new()
/// {
/// Name = "example",
/// Description = "channel group for example channels",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/mediapackagev2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := mediapackagev2.NewChannelGroup(ctx, "example", &mediapackagev2.ChannelGroupArgs{
/// Name:        pulumi.String("example"),
/// Description: pulumi.String("channel group for example channels"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ChannelGroup("example", ChannelGroupArgs.builder()
/// .name("example")
/// .description("channel group for example channels")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:mediapackagev2:ChannelGroup
/// properties:
/// name: example
/// description: channel group for example channels
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Elemental MediaPackage Version 2 Channel Group using the channel group's <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:mediapackagev2/channelGroup:ChannelGroup example example
/// ```
class ChannelGroup extends CustomResource {
  /// The ARN of the channel
  late final Output<String> arn;

  /// A description of the channel group
  late final Output<String?> description;

  /// The egress domain of the channel group
  late final Output<String> egressDomain;

  /// A unique identifier naming the channel group
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ChannelGroup(
    String name, {
    ChannelGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:mediapackagev2/channelGroup:ChannelGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.egressDomain = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
