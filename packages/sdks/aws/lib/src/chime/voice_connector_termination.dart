import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_termination_args.dart';
import 'voice_connector_termination_state.dart';

/// Enable Termination settings to control outbound calling from your SIP infrastructure.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.chime.VoiceConnector("default", {
///     name: "vc-name-test",
///     requireEncryption: true,
/// });
/// const defaultVoiceConnectorTermination = new aws.chime.VoiceConnectorTermination("default", {
///     disabled: false,
///     cpsLimit: 1,
///     cidrAllowLists: ["50.35.78.96/31"],
///     callingRegions: [
///         "US",
///         "CA",
///     ],
///     voiceConnectorId: _default.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.chime.VoiceConnector("default",
///     name="vc-name-test",
///     require_encryption=True)
/// default_voice_connector_termination = aws.chime.VoiceConnectorTermination("default",
///     disabled=False,
///     cps_limit=1,
///     cidr_allow_lists=["50.35.78.96/31"],
///     calling_regions=[
///         "US",
///         "CA",
///     ],
///     voice_connector_id=default.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Chime.VoiceConnector("default", new()
///     {
///         Name = "vc-name-test",
///         RequireEncryption = true,
///     });
///
///     var defaultVoiceConnectorTermination = new Aws.Chime.VoiceConnectorTermination("default", new()
///     {
///         Disabled = false,
///         CpsLimit = 1,
///         CidrAllowLists = new[]
///         {
///             "50.35.78.96/31",
///         },
///         CallingRegions = new[]
///         {
///             "US",
///             "CA",
///         },
///         VoiceConnectorId = @default.Id,
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
/// 		_default, err := chime.NewVoiceConnector(ctx, "default", &chime.VoiceConnectorArgs{
/// 			Name:              pulumi.String("vc-name-test"),
/// 			RequireEncryption: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chime.NewVoiceConnectorTermination(ctx, "default", &chime.VoiceConnectorTerminationArgs{
/// 			Disabled: pulumi.Bool(false),
/// 			CpsLimit: pulumi.Int(1),
/// 			CidrAllowLists: pulumi.StringArray{
/// 				pulumi.String("50.35.78.96/31"),
/// 			},
/// 			CallingRegions: pulumi.StringArray{
/// 				pulumi.String("US"),
/// 				pulumi.String("CA"),
/// 			},
/// 			VoiceConnectorId: _default.ID(),
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
/// import com.pulumi.aws.chime.VoiceConnectorTermination;
/// import com.pulumi.aws.chime.VoiceConnectorTerminationArgs;
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
///         var default_ = new VoiceConnector("default", VoiceConnectorArgs.builder()
///             .name("vc-name-test")
///             .requireEncryption(true)
///             .build());
///
///         var defaultVoiceConnectorTermination = new VoiceConnectorTermination("defaultVoiceConnectorTermination", VoiceConnectorTerminationArgs.builder()
///             .disabled(false)
///             .cpsLimit(1)
///             .cidrAllowLists("50.35.78.96/31")
///             .callingRegions(
///                 "US",
///                 "CA")
///             .voiceConnectorId(default_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:chime:VoiceConnector
///     properties:
///       name: vc-name-test
///       requireEncryption: true
///   defaultVoiceConnectorTermination:
///     type: aws:chime:VoiceConnectorTermination
///     name: default
///     properties:
///       disabled: false
///       cpsLimit: 1
///       cidrAllowLists:
///         - 50.35.78.96/31
///       callingRegions:
///         - US
///         - CA
///       voiceConnectorId: ${default.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Termination using the `voice_connector_id`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorTermination:VoiceConnectorTermination default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorTermination extends pulumi.CustomResource {
  /// The countries to which calls are allowed, in ISO 3166-1 alpha-2 format.
  late final pulumi.Output<List<String>> callingRegions;
  /// The IP addresses allowed to make calls, in CIDR format.
  late final pulumi.Output<List<String>> cidrAllowLists;
  /// The limit on calls per second. Max value based on account service quota. Default value of `1`.
  late final pulumi.Output<int?> cpsLimit;
  /// The default caller ID phone number.
  late final pulumi.Output<String?> defaultPhoneNumber;
  /// When termination settings are disabled, outbound calls can not be made.
  late final pulumi.Output<bool?> disabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The Amazon Chime Voice Connector ID.
  late final pulumi.Output<String> voiceConnectorId;

  /// Creates a new [VoiceConnectorTermination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VoiceConnectorTermination]. {@macro pulumi_chime_voice_connector_termination_voice_connector_termination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VoiceConnectorTermination(
    String name, {
    VoiceConnectorTerminationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorTermination:VoiceConnectorTermination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.callingRegions = registerOutput<List<String>>('callingRegions');
    this.cidrAllowLists = registerOutput<List<String>>('cidrAllowLists');
    this.cpsLimit = registerOutput<int?>('cpsLimit');
    this.defaultPhoneNumber = registerOutput<String?>('defaultPhoneNumber');
    this.disabled = registerOutput<bool?>('disabled');
    this.region = registerOutput<String>('region');
    this.voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }

  /// Gets an existing [VoiceConnectorTermination] resource's state with the given [name] and [id].
  static VoiceConnectorTermination get(
    String name,
    pulumi.Input<String> id, {
    VoiceConnectorTerminationState? state,
  }) {
    return VoiceConnectorTermination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VoiceConnectorTermination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorTermination:VoiceConnectorTermination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.callingRegions = registerOutput<List<String>>('callingRegions');
    this.cidrAllowLists = registerOutput<List<String>>('cidrAllowLists');
    this.cpsLimit = registerOutput<int?>('cpsLimit');
    this.defaultPhoneNumber = registerOutput<String?>('defaultPhoneNumber');
    this.disabled = registerOutput<bool?>('disabled');
    this.region = registerOutput<String>('region');
    this.voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
