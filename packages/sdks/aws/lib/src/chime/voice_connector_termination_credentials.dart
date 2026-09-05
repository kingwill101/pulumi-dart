import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_termination_credentials_args.dart';
import 'voice_connector_termination_credentials_credential.dart';
import 'voice_connector_termination_credentials_state.dart';

/// Adds termination SIP credentials for the specified Amazon Chime Voice Connector.
///
/// &gt; **Note:** Voice Connector Termination Credentials requires a Voice Connector Termination to be present. Use of `dependsOn` (as shown below) is recommended to avoid race conditions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.chime.VoiceConnector("default", {
///     name: "test",
///     requireEncryption: true,
/// });
/// const defaultVoiceConnectorTermination = new aws.chime.VoiceConnectorTermination("default", {
///     disabled: true,
///     cpsLimit: 1,
///     cidrAllowLists: ["50.35.78.96/31"],
///     callingRegions: [
///         "US",
///         "CA",
///     ],
///     voiceConnectorId: _default.id,
/// });
/// const defaultVoiceConnectorTerminationCredentials = new aws.chime.VoiceConnectorTerminationCredentials("default", {
///     credentials: [{
///         username: "test",
///         password: "test!",
///     }],
///     voiceConnectorId: _default.id,
/// }, {
///     dependsOn: [defaultVoiceConnectorTermination],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.chime.VoiceConnector("default",
///     name="test",
///     require_encryption=True)
/// default_voice_connector_termination = aws.chime.VoiceConnectorTermination("default",
///     disabled=True,
///     cps_limit=1,
///     cidr_allow_lists=["50.35.78.96/31"],
///     calling_regions=[
///         "US",
///         "CA",
///     ],
///     voice_connector_id=default.id)
/// default_voice_connector_termination_credentials = aws.chime.VoiceConnectorTerminationCredentials("default",
///     credentials=[{
///         "username": "test",
///         "password": "test!",
///     }],
///     voice_connector_id=default.id,
///     opts = pulumi.ResourceOptions(depends_on=[default_voice_connector_termination]))
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
///         Name = "test",
///         RequireEncryption = true,
///     });
///
///     var defaultVoiceConnectorTermination = new Aws.Chime.VoiceConnectorTermination("default", new()
///     {
///         Disabled = true,
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
///     var defaultVoiceConnectorTerminationCredentials = new Aws.Chime.VoiceConnectorTerminationCredentials("default", new()
///     {
///         Credentials = new[]
///         {
///             new Aws.Chime.Inputs.VoiceConnectorTerminationCredentialsCredentialArgs
///             {
///                 Username = "test",
///                 Password = "test!",
///             },
///         },
///         VoiceConnectorId = @default.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultVoiceConnectorTermination,
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
/// 		_default, err := chime.NewVoiceConnector(ctx, "default", &chime.VoiceConnectorArgs{
/// 			Name:              pulumi.String("test"),
/// 			RequireEncryption: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVoiceConnectorTermination, err := chime.NewVoiceConnectorTermination(ctx, "default", &chime.VoiceConnectorTerminationArgs{
/// 			Disabled: pulumi.Bool(true),
/// 			CpsLimit: pulumi.Int(1),
/// 			CidrAllowLists: pulumi.StringArray{
/// 				pulumi.String("50.35.78.96/31"),
/// 			},
/// 			CallingRegions: pulumi.StringArray{
/// 				pulumi.String("US"),
/// 				pulumi.String("CA"),
/// 			},
/// 			VoiceConnectorId: _default.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chime.NewVoiceConnectorTerminationCredentials(ctx, "default", &chime.VoiceConnectorTerminationCredentialsArgs{
/// 			Credentials: chime.VoiceConnectorTerminationCredentialsCredentialArray{
/// 				&chime.VoiceConnectorTerminationCredentialsCredentialArgs{
/// 					Username: pulumi.String("test"),
/// 					Password: pulumi.String("test!"),
/// 				},
/// 			},
/// 			VoiceConnectorId: _default.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultVoiceConnectorTermination,
/// 		}))
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
/// resource "aws_chime_voiceconnector" "default" {
///   name               = "test"
///   require_encryption = true
/// }
/// resource "aws_chime_voiceconnectortermination" "default" {
///   disabled           = true
///   cps_limit          = 1
///   cidr_allow_lists   = ["50.35.78.96/31"]
///   calling_regions    = ["US", "CA"]
///   voice_connector_id = aws_chime_voiceconnector.default.id
/// }
/// resource "aws_chime_voiceconnectorterminationcredentials" "default" {
///   depends_on = [aws_chime_voiceconnectortermination.default]
///   credentials {
///     username = "test"
///     password = "test!"
///   }
///   voice_connector_id = aws_chime_voiceconnector.default.id
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
/// import com.pulumi.aws.chime.VoiceConnectorTerminationCredentials;
/// import com.pulumi.aws.chime.VoiceConnectorTerminationCredentialsArgs;
/// import com.pulumi.aws.chime.inputs.VoiceConnectorTerminationCredentialsCredentialArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new VoiceConnector("default", VoiceConnectorArgs.builder()
///             .name("test")
///             .requireEncryption(true)
///             .build());
///
///         var defaultVoiceConnectorTermination = new VoiceConnectorTermination("defaultVoiceConnectorTermination", VoiceConnectorTerminationArgs.builder()
///             .disabled(true)
///             .cpsLimit(1)
///             .cidrAllowLists("50.35.78.96/31")
///             .callingRegions(
///                 "US",
///                 "CA")
///             .voiceConnectorId(default_.id())
///             .build());
///
///         var defaultVoiceConnectorTerminationCredentials = new VoiceConnectorTerminationCredentials("defaultVoiceConnectorTerminationCredentials", VoiceConnectorTerminationCredentialsArgs.builder()
///             .credentials(VoiceConnectorTerminationCredentialsCredentialArgs.builder()
///                 .username("test")
///                 .password("test!")
///                 .build())
///             .voiceConnectorId(default_.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultVoiceConnectorTermination)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:chime:VoiceConnector
///     properties:
///       name: test
///       requireEncryption: true
///   defaultVoiceConnectorTermination:
///     type: aws:chime:VoiceConnectorTermination
///     name: default
///     properties:
///       disabled: true
///       cpsLimit: 1
///       cidrAllowLists:
///         - 50.35.78.96/31
///       callingRegions:
///         - US
///         - CA
///       voiceConnectorId: ${default.id}
///   defaultVoiceConnectorTerminationCredentials:
///     type: aws:chime:VoiceConnectorTerminationCredentials
///     name: default
///     properties:
///       credentials:
///         - username: test
///           password: test!
///       voiceConnectorId: ${default.id}
///     options:
///       dependsOn:
///         - ${defaultVoiceConnectorTermination}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Termination Credentials using the `voiceConnectorId`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorTerminationCredentials:VoiceConnectorTerminationCredentials default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorTerminationCredentials extends pulumi.CustomResource {
  /// List of termination SIP credentials.
  late final pulumi.Output<List<VoiceConnectorTerminationCredentialsCredential>> credentials;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Amazon Chime Voice Connector ID.
  late final pulumi.Output<String> voiceConnectorId;

  /// Creates a new [VoiceConnectorTerminationCredentials].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VoiceConnectorTerminationCredentials]. {@macro pulumi_chime_voice_connector_termination_credentials_voice_connector_termination_credentials_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VoiceConnectorTerminationCredentials(
    String name, {
    VoiceConnectorTerminationCredentialsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorTerminationCredentials:VoiceConnectorTerminationCredentials',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    credentials = registerOutput<List<VoiceConnectorTerminationCredentialsCredential>>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceConnectorTerminationCredentialsCredential>(guardedValue, (value) => VoiceConnectorTerminationCredentialsCredential.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }

  /// Gets an existing [VoiceConnectorTerminationCredentials] resource's state with the given [name] and [id].
  static VoiceConnectorTerminationCredentials get(
    String name,
    pulumi.Input<String> id, {
    VoiceConnectorTerminationCredentialsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VoiceConnectorTerminationCredentials._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VoiceConnectorTerminationCredentials._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorTerminationCredentials:VoiceConnectorTerminationCredentials',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    credentials = registerOutput<List<VoiceConnectorTerminationCredentialsCredential>>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceConnectorTerminationCredentialsCredential>(guardedValue, (value) => VoiceConnectorTerminationCredentialsCredential.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }

  /// Creates a typed reference to an existing [VoiceConnectorTerminationCredentials] resource.
  VoiceConnectorTerminationCredentials.reference(String urn)
    : super(
        'aws:chime/voiceConnectorTerminationCredentials:VoiceConnectorTerminationCredentials',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    credentials = registerOutput<List<VoiceConnectorTerminationCredentialsCredential>>('credentials', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceConnectorTerminationCredentialsCredential>(guardedValue, (value) => VoiceConnectorTerminationCredentialsCredential.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
