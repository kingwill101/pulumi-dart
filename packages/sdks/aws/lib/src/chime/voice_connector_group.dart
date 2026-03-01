import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_group_args.dart';
import 'voice_connector_group_connector.dart';
import 'voice_connector_group_state.dart';

/// Creates an Amazon Chime Voice Connector group under the administrator's AWS account. You can associate Amazon Chime Voice Connectors with the Amazon Chime Voice Connector group by including VoiceConnectorItems in the request.
///
/// You can include Amazon Chime Voice Connectors from different AWS Regions in your group. This creates a fault tolerant mechanism for fallback in case of availability events.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vc1 = new aws.chime.VoiceConnector("vc1", {
///     name: "connector-test-1",
///     requireEncryption: true,
///     awsRegion: "us-east-1",
/// });
/// const vc2 = new aws.chime.VoiceConnector("vc2", {
///     name: "connector-test-2",
///     requireEncryption: true,
///     awsRegion: "us-west-2",
/// });
/// const group = new aws.chime.VoiceConnectorGroup("group", {
///     name: "test-group",
///     connectors: [
///         {
///             voiceConnectorId: vc1.id,
///             priority: 1,
///         },
///         {
///             voiceConnectorId: vc2.id,
///             priority: 3,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// vc1 = aws.chime.VoiceConnector("vc1",
///     name="connector-test-1",
///     require_encryption=True,
///     aws_region="us-east-1")
/// vc2 = aws.chime.VoiceConnector("vc2",
///     name="connector-test-2",
///     require_encryption=True,
///     aws_region="us-west-2")
/// group = aws.chime.VoiceConnectorGroup("group",
///     name="test-group",
///     connectors=[
///         {
///             "voice_connector_id": vc1.id,
///             "priority": 1,
///         },
///         {
///             "voice_connector_id": vc2.id,
///             "priority": 3,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vc1 = new Aws.Chime.VoiceConnector("vc1", new()
///     {
///         Name = "connector-test-1",
///         RequireEncryption = true,
///         AwsRegion = "us-east-1",
///     });
///
///     var vc2 = new Aws.Chime.VoiceConnector("vc2", new()
///     {
///         Name = "connector-test-2",
///         RequireEncryption = true,
///         AwsRegion = "us-west-2",
///     });
///
///     var @group = new Aws.Chime.VoiceConnectorGroup("group", new()
///     {
///         Name = "test-group",
///         Connectors = new[]
///         {
///             new Aws.Chime.Inputs.VoiceConnectorGroupConnectorArgs
///             {
///                 VoiceConnectorId = vc1.Id,
///                 Priority = 1,
///             },
///             new Aws.Chime.Inputs.VoiceConnectorGroupConnectorArgs
///             {
///                 VoiceConnectorId = vc2.Id,
///                 Priority = 3,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/chime"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vc1, err := chime.NewVoiceConnector(ctx, "vc1", &chime.VoiceConnectorArgs{
/// 			Name:              pulumi.String("connector-test-1"),
/// 			RequireEncryption: pulumi.Bool(true),
/// 			AwsRegion:         pulumi.String("us-east-1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vc2, err := chime.NewVoiceConnector(ctx, "vc2", &chime.VoiceConnectorArgs{
/// 			Name:              pulumi.String("connector-test-2"),
/// 			RequireEncryption: pulumi.Bool(true),
/// 			AwsRegion:         pulumi.String("us-west-2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chime.NewVoiceConnectorGroup(ctx, "group", &chime.VoiceConnectorGroupArgs{
/// 			Name: pulumi.String("test-group"),
/// 			Connectors: chime.VoiceConnectorGroupConnectorArray{
/// 				&chime.VoiceConnectorGroupConnectorArgs{
/// 					VoiceConnectorId: vc1.ID(),
/// 					Priority:         pulumi.Int(1),
/// 				},
/// 				&chime.VoiceConnectorGroupConnectorArgs{
/// 					VoiceConnectorId: vc2.ID(),
/// 					Priority:         pulumi.Int(3),
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
/// import com.pulumi.aws.chime.VoiceConnector;
/// import com.pulumi.aws.chime.VoiceConnectorArgs;
/// import com.pulumi.aws.chime.VoiceConnectorGroup;
/// import com.pulumi.aws.chime.VoiceConnectorGroupArgs;
/// import com.pulumi.aws.chime.inputs.VoiceConnectorGroupConnectorArgs;
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
///         var vc1 = new VoiceConnector("vc1", VoiceConnectorArgs.builder()
///             .name("connector-test-1")
///             .requireEncryption(true)
///             .awsRegion("us-east-1")
///             .build());
///
///         var vc2 = new VoiceConnector("vc2", VoiceConnectorArgs.builder()
///             .name("connector-test-2")
///             .requireEncryption(true)
///             .awsRegion("us-west-2")
///             .build());
///
///         var group = new VoiceConnectorGroup("group", VoiceConnectorGroupArgs.builder()
///             .name("test-group")
///             .connectors(
///                 VoiceConnectorGroupConnectorArgs.builder()
///                     .voiceConnectorId(vc1.id())
///                     .priority(1)
///                     .build(),
///                 VoiceConnectorGroupConnectorArgs.builder()
///                     .voiceConnectorId(vc2.id())
///                     .priority(3)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vc1:
///     type: aws:chime:VoiceConnector
///     properties:
///       name: connector-test-1
///       requireEncryption: true
///       awsRegion: us-east-1
///   vc2:
///     type: aws:chime:VoiceConnector
///     properties:
///       name: connector-test-2
///       requireEncryption: true
///       awsRegion: us-west-2
///   group:
///     type: aws:chime:VoiceConnectorGroup
///     properties:
///       name: test-group
///       connectors:
///         - voiceConnectorId: ${vc1.id}
///           priority: 1
///         - voiceConnectorId: ${vc2.id}
///           priority: 3
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Configuration Recorder using the name. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorGroup:VoiceConnectorGroup default example
/// ```
class VoiceConnectorGroup extends pulumi.CustomResource {
  /// The Amazon Chime Voice Connectors to route inbound calls to.
  late final pulumi.Output<List<VoiceConnectorGroupConnector>?> connectors;
  /// The name of the Amazon Chime Voice Connector group.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [VoiceConnectorGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VoiceConnectorGroup]. {@macro pulumi_chime_voice_connector_group_voice_connector_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VoiceConnectorGroup(
    String name, {
    VoiceConnectorGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorGroup:VoiceConnectorGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectors = registerOutput<List<VoiceConnectorGroupConnector>?>('connectors');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [VoiceConnectorGroup] resource's state with the given [name] and [id].
  static VoiceConnectorGroup get(
    String name,
    pulumi.Input<String> id, {
    VoiceConnectorGroupState? state,
  }) {
    return VoiceConnectorGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VoiceConnectorGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorGroup:VoiceConnectorGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectors = registerOutput<List<VoiceConnectorGroupConnector>?>('connectors');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
