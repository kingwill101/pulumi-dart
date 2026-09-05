import 'package:pulumi/pulumi.dart' as pulumi;
import 'voice_connector_origination_args.dart';
import 'voice_connector_origination_route.dart';
import 'voice_connector_origination_state.dart';

/// Enable origination settings to control inbound calling to your SIP infrastructure.
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
/// const defaultVoiceConnectorOrigination = new aws.chime.VoiceConnectorOrigination("default", {
///     routes: [
///         {
///             host: "127.0.0.1",
///             port: 8081,
///             protocol: "TCP",
///             priority: 1,
///             weight: 1,
///         },
///         {
///             host: "127.0.0.2",
///             port: 8082,
///             protocol: "TCP",
///             priority: 2,
///             weight: 10,
///         },
///     ],
///     disabled: false,
///     voiceConnectorId: _default.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.chime.VoiceConnector("default",
///     name="test",
///     require_encryption=True)
/// default_voice_connector_origination = aws.chime.VoiceConnectorOrigination("default",
///     routes=[
///         {
///             "host": "127.0.0.1",
///             "port": 8081,
///             "protocol": "TCP",
///             "priority": 1,
///             "weight": 1,
///         },
///         {
///             "host": "127.0.0.2",
///             "port": 8082,
///             "protocol": "TCP",
///             "priority": 2,
///             "weight": 10,
///         },
///     ],
///     disabled=False,
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
///         Name = "test",
///         RequireEncryption = true,
///     });
///
///     var defaultVoiceConnectorOrigination = new Aws.Chime.VoiceConnectorOrigination("default", new()
///     {
///         Routes = new[]
///         {
///             new Aws.Chime.Inputs.VoiceConnectorOriginationRouteArgs
///             {
///                 Host = "127.0.0.1",
///                 Port = 8081,
///                 Protocol = "TCP",
///                 Priority = 1,
///                 Weight = 1,
///             },
///             new Aws.Chime.Inputs.VoiceConnectorOriginationRouteArgs
///             {
///                 Host = "127.0.0.2",
///                 Port = 8082,
///                 Protocol = "TCP",
///                 Priority = 2,
///                 Weight = 10,
///             },
///         },
///         Disabled = false,
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
/// 			Name:              pulumi.String("test"),
/// 			RequireEncryption: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chime.NewVoiceConnectorOrigination(ctx, "default", &chime.VoiceConnectorOriginationArgs{
/// 			Routes: chime.VoiceConnectorOriginationRouteArray{
/// 				&chime.VoiceConnectorOriginationRouteArgs{
/// 					Host:     pulumi.String("127.0.0.1"),
/// 					Port:     pulumi.Int(8081),
/// 					Protocol: pulumi.String("TCP"),
/// 					Priority: pulumi.Int(1),
/// 					Weight:   pulumi.Int(1),
/// 				},
/// 				&chime.VoiceConnectorOriginationRouteArgs{
/// 					Host:     pulumi.String("127.0.0.2"),
/// 					Port:     pulumi.Int(8082),
/// 					Protocol: pulumi.String("TCP"),
/// 					Priority: pulumi.Int(2),
/// 					Weight:   pulumi.Int(10),
/// 				},
/// 			},
/// 			Disabled:         pulumi.Bool(false),
/// 			VoiceConnectorId: _default.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_chime_voiceconnector" "default" {
///   name               = "test"
///   require_encryption = true
/// }
/// resource "aws_chime_voiceconnectororigination" "default" {
///   routes {
///     host     = "127.0.0.1"
///     port     = 8081
///     protocol = "TCP"
///     priority = 1
///     weight   = 1
///   }
///   routes {
///     host     = "127.0.0.2"
///     port     = 8082
///     protocol = "TCP"
///     priority = 2
///     weight   = 10
///   }
///   disabled           = false
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
/// import com.pulumi.aws.chime.VoiceConnectorOrigination;
/// import com.pulumi.aws.chime.VoiceConnectorOriginationArgs;
/// import com.pulumi.aws.chime.inputs.VoiceConnectorOriginationRouteArgs;
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
///         var defaultVoiceConnectorOrigination = new VoiceConnectorOrigination("defaultVoiceConnectorOrigination", VoiceConnectorOriginationArgs.builder()
///             .routes(
///                 VoiceConnectorOriginationRouteArgs.builder()
///                     .host("127.0.0.1")
///                     .port(8081)
///                     .protocol("TCP")
///                     .priority(1)
///                     .weight(1)
///                     .build(),
///                 VoiceConnectorOriginationRouteArgs.builder()
///                     .host("127.0.0.2")
///                     .port(8082)
///                     .protocol("TCP")
///                     .priority(2)
///                     .weight(10)
///                     .build())
///             .disabled(false)
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
///       name: test
///       requireEncryption: true
///   defaultVoiceConnectorOrigination:
///     type: aws:chime:VoiceConnectorOrigination
///     name: default
///     properties:
///       routes:
///         - host: 127.0.0.1
///           port: 8081
///           protocol: TCP
///           priority: 1
///           weight: 1
///         - host: 127.0.0.2
///           port: 8082
///           protocol: TCP
///           priority: 2
///           weight: 10
///       disabled: false
///       voiceConnectorId: ${default.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Chime Voice Connector Origination using the `voiceConnectorId`. For example:
///
/// ```sh
/// $ pulumi import aws:chime/voiceConnectorOrigination:VoiceConnectorOrigination default abcdef1ghij2klmno3pqr4
/// ```
class VoiceConnectorOrigination extends pulumi.CustomResource {
  /// When origination settings are disabled, inbound calls are not enabled for your Amazon Chime Voice Connector.
  late final pulumi.Output<bool?> disabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set of call distribution properties defined for your SIP hosts. See route below for more details. Minimum of 1. Maximum of 20.
  late final pulumi.Output<List<VoiceConnectorOriginationRoute>> routes;
  /// The Amazon Chime Voice Connector ID.
  late final pulumi.Output<String> voiceConnectorId;

  /// Creates a new [VoiceConnectorOrigination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VoiceConnectorOrigination]. {@macro pulumi_chime_voice_connector_origination_voice_connector_origination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VoiceConnectorOrigination(
    String name, {
    VoiceConnectorOriginationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorOrigination:VoiceConnectorOrigination',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    disabled = registerOutput<bool?>('disabled');
    region = registerOutput<String>('region');
    routes = registerOutput<List<VoiceConnectorOriginationRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceConnectorOriginationRoute>(guardedValue, (value) => VoiceConnectorOriginationRoute.fromMap((value as Map).cast<String, dynamic>())); });
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }

  /// Gets an existing [VoiceConnectorOrigination] resource's state with the given [name] and [id].
  static VoiceConnectorOrigination get(
    String name,
    pulumi.Input<String> id, {
    VoiceConnectorOriginationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VoiceConnectorOrigination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VoiceConnectorOrigination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:chime/voiceConnectorOrigination:VoiceConnectorOrigination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    disabled = registerOutput<bool?>('disabled');
    region = registerOutput<String>('region');
    routes = registerOutput<List<VoiceConnectorOriginationRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceConnectorOriginationRoute>(guardedValue, (value) => VoiceConnectorOriginationRoute.fromMap((value as Map).cast<String, dynamic>())); });
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }

  /// Creates a typed reference to an existing [VoiceConnectorOrigination] resource.
  VoiceConnectorOrigination.reference(String urn)
    : super(
        'aws:chime/voiceConnectorOrigination:VoiceConnectorOrigination',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    disabled = registerOutput<bool?>('disabled');
    region = registerOutput<String>('region');
    routes = registerOutput<List<VoiceConnectorOriginationRoute>>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VoiceConnectorOriginationRoute>(guardedValue, (value) => VoiceConnectorOriginationRoute.fromMap((value as Map).cast<String, dynamic>())); });
    voiceConnectorId = registerOutput<String>('voiceConnectorId');
  }
}
