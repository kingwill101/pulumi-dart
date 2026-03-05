import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_args.dart';
import 'voice_connector_state.dart';

/// Enables you to connect your phone system to the telephone network at a substantial cost savings by using SIP trunking.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.chime.VoiceConnector("test", {
///     name: "connector-test-1",
///     requireEncryption: true,
///     awsRegion: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.chime.VoiceConnector("test",
///     name="connector-test-1",
///     require_encryption=True,
///     aws_region="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Chime.VoiceConnector("test", new()
///     {
///         Name = "connector-test-1",
///         RequireEncryption = true,
///         AwsRegion = "us-east-1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chime"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := chime.NewVoiceConnector(ctx, "test", &chime.VoiceConnectorArgs{
/// 			Name:              pulumi.String("connector-test-1"),
/// 			RequireEncryption: pulumi.Bool(true),
/// 			AwsRegion:         pulumi.String("us-east-1"),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new VoiceConnector("test", VoiceConnectorArgs.builder()
///             .name("connector-test-1")
///             .requireEncryption(true)
///             .awsRegion("us-east-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:chime:VoiceConnector
///     properties:
///       name: connector-test-1
///       requireEncryption: true
///       awsRegion: us-east-1
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Configuration Recorder using the name. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnector:VoiceConnector test example
/// ```
class VoiceConnector extends pulumi.CustomResource {
  /// ARN (Amazon Resource Name) of the Amazon Chime Voice Connector.
  late final pulumi.Output<String> arn;
  /// The AWS Region in which the Amazon Chime Voice Connector is created. Default value: `us-east-1`
  late final pulumi.Output<String> awsRegion;
  /// The name of the Amazon Chime Voice Connector.
  late final pulumi.Output<String> name;
  /// The outbound host name for the Amazon Chime Voice Connector.
  late final pulumi.Output<String> outboundHostName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// When enabled, requires encryption for the Amazon Chime Voice Connector.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<bool> requireEncryption;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VoiceConnector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VoiceConnector]. {@macro pulumi_chime_voice_connector_voice_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VoiceConnector(
    String name, {
    VoiceConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnector:VoiceConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsRegion = registerOutput<String>('awsRegion');
    this.name = registerOutput<String>('name');
    outboundHostName = registerOutput<String>('outboundHostName');
    region = registerOutput<String>('region');
    requireEncryption = registerOutput<bool>('requireEncryption');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [VoiceConnector] resource's state with the given [name] and [id].
  static VoiceConnector get(
    String name,
    pulumi.Input<String> id, {
    VoiceConnectorState? state,
  }) {
    return VoiceConnector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VoiceConnector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnector:VoiceConnector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    awsRegion = registerOutput<String>('awsRegion');
    this.name = registerOutput<String>('name');
    outboundHostName = registerOutput<String>('outboundHostName');
    region = registerOutput<String>('region');
    requireEncryption = registerOutput<bool>('requireEncryption');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
