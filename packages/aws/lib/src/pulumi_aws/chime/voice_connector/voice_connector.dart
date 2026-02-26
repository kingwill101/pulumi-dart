import 'package:pulumi/pulumi.dart';
import 'voice_connector_args.dart';

/// Enables you to connect your phone system to the telephone network at a substantial cost savings by using SIP trunking.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.chime.VoiceConnector("test", {
/// name: "connector-test-1",
/// requireEncryption: true,
/// awsRegion: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.chime.VoiceConnector("test",
/// name="connector-test-1",
/// require_encryption=True,
/// aws_region="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.Chime.VoiceConnector("test", new()
/// {
/// Name = "connector-test-1",
/// RequireEncryption = true,
/// AwsRegion = "us-east-1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chime"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := chime.NewVoiceConnector(ctx, "test", &chime.VoiceConnectorArgs{
/// Name:              pulumi.String("connector-test-1"),
/// RequireEncryption: pulumi.Bool(true),
/// AwsRegion:         pulumi.String("us-east-1"),
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
/// import com.pulumi.aws.chime.VoiceConnector;
/// import com.pulumi.aws.chime.VoiceConnectorArgs;
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
/// var test = new VoiceConnector("test", VoiceConnectorArgs.builder()
/// .name("connector-test-1")
/// .requireEncryption(true)
/// .awsRegion("us-east-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:chime:VoiceConnector
/// properties:
/// name: connector-test-1
/// requireEncryption: true
/// awsRegion: us-east-1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Configuration Recorder using the name. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnector:VoiceConnector test example
/// ```
class VoiceConnector extends CustomResource {
  /// ARN (Amazon Resource Name) of the Amazon Chime Voice Connector.
  late final Output<String> arn;

  /// The AWS Region in which the Amazon Chime Voice Connector is created. Default value: `us-east-1`
  late final Output<String> awsRegion;

  /// The name of the Amazon Chime Voice Connector.
  late final Output<String> name;

  /// The outbound host name for the Amazon Chime Voice Connector.
  late final Output<String> outboundHostName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// When enabled, requires encryption for the Amazon Chime Voice Connector.
  ///
  /// The following arguments are optional:
  late final Output<bool> requireEncryption;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  VoiceConnector(
    String name, {
    VoiceConnectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnector:VoiceConnector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.awsRegion = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.outboundHostName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requireEncryption = Output.createUnknown<bool>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
