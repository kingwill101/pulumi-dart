import 'package:pulumi/pulumi.dart' as pulumi;
import 'multiplex_program_args.dart';
import 'multiplex_program_multiplex_program_settings.dart';
import 'multiplex_program_state.dart';
import 'multiplex_program_timeouts.dart';

/// Resource for managing an AWS MediaLive MultiplexProgram.
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
/// const available = aws.getAvailabilityZones({
///     state: "available",
/// });
/// const example = new aws.medialive.Multiplex("example", {
///     multiplexSettings: {
///         transportStreamBitrate: 1000000,
///         transportStreamId: 1,
///         transportStreamReservedBitrate: 1,
///         maximumVideoBufferDelayMilliseconds: 1000,
///     },
///     name: "example-multiplex-changed",
///     availabilityZones: [
///         available.then(available => available.names?.[0]),
///         available.then(available => available.names?.[1]),
///     ],
///     startMultiplex: true,
///     tags: {
///         tag1: "value1",
///     },
/// });
/// const exampleMultiplexProgram = new aws.medialive.MultiplexProgram("example", {
///     multiplexProgramSettings: {
///         videoSettings: {
///             constantBitrate: 100000,
///         },
///         programNumber: 1,
///         preferredChannelPipeline: "CURRENTLY_ACTIVE",
///     },
///     programName: "example_program",
///     multiplexId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available")
/// example = aws.medialive.Multiplex("example",
///     multiplex_settings={
///         "transport_stream_bitrate": 1000000,
///         "transport_stream_id": 1,
///         "transport_stream_reserved_bitrate": 1,
///         "maximum_video_buffer_delay_milliseconds": 1000,
///     },
///     name="example-multiplex-changed",
///     availability_zones=[
///         available.names[0],
///         available.names[1],
///     ],
///     start_multiplex=True,
///     tags={
///         "tag1": "value1",
///     })
/// example_multiplex_program = aws.medialive.MultiplexProgram("example",
///     multiplex_program_settings={
///         "video_settings": {
///             "constant_bitrate": 100000,
///         },
///         "program_number": 1,
///         "preferred_channel_pipeline": "CURRENTLY_ACTIVE",
///     },
///     program_name="example_program",
///     multiplex_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var available = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///     });
///
///     var example = new Aws.MediaLive.Multiplex("example", new()
///     {
///         MultiplexSettings = new Aws.MediaLive.Inputs.MultiplexMultiplexSettingsArgs
///         {
///             TransportStreamBitrate = 1000000,
///             TransportStreamId = 1,
///             TransportStreamReservedBitrate = 1,
///             MaximumVideoBufferDelayMilliseconds = 1000,
///         },
///         Name = "example-multiplex-changed",
///         AvailabilityZones = new[]
///         {
///             available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
///             available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[1]),
///         },
///         StartMultiplex = true,
///         Tags =
///         {
///             { "tag1", "value1" },
///         },
///     });
///
///     var exampleMultiplexProgram = new Aws.MediaLive.MultiplexProgram("example", new()
///     {
///         MultiplexProgramSettings = new Aws.MediaLive.Inputs.MultiplexProgramMultiplexProgramSettingsArgs
///         {
///             VideoSettings = new Aws.MediaLive.Inputs.MultiplexProgramMultiplexProgramSettingsVideoSettingsArgs
///             {
///                 ConstantBitrate = 100000,
///             },
///             ProgramNumber = 1,
///             PreferredChannelPipeline = "CURRENTLY_ACTIVE",
///         },
///         ProgramName = "example_program",
///         MultiplexId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/medialive"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := medialive.NewMultiplex(ctx, "example", &medialive.MultiplexArgs{
/// 			MultiplexSettings: &medialive.MultiplexMultiplexSettingsArgs{
/// 				TransportStreamBitrate:              pulumi.Int(1000000),
/// 				TransportStreamId:                   pulumi.Int(1),
/// 				TransportStreamReservedBitrate:      pulumi.Int(1),
/// 				MaximumVideoBufferDelayMilliseconds: pulumi.Int(1000),
/// 			},
/// 			Name: pulumi.String("example-multiplex-changed"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String(available.Names[0]),
/// 				pulumi.String(available.Names[1]),
/// 			},
/// 			StartMultiplex: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = medialive.NewMultiplexProgram(ctx, "example", &medialive.MultiplexProgramArgs{
/// 			MultiplexProgramSettings: &medialive.MultiplexProgramMultiplexProgramSettingsArgs{
/// 				VideoSettings: &medialive.MultiplexProgramMultiplexProgramSettingsVideoSettingsArgs{
/// 					ConstantBitrate: pulumi.Int(100000),
/// 				},
/// 				ProgramNumber:            pulumi.Int(1),
/// 				PreferredChannelPipeline: pulumi.String("CURRENTLY_ACTIVE"),
/// 			},
/// 			ProgramName: pulumi.String("example_program"),
/// 			MultiplexId: example.ID().ToIDOutput().ToStringOutput(),
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
/// data "aws_getavailabilityzones" "available" {
///   state = "available"
/// }
///
/// resource "aws_medialive_multiplex" "example" {
///   multiplex_settings = {
///     transport_stream_bitrate                = 1000000
///     transport_stream_id                     = 1
///     transport_stream_reserved_bitrate       = 1
///     maximum_video_buffer_delay_milliseconds = 1000
///   }
///   name               = "example-multiplex-changed"
///   availability_zones = [data.aws_getavailabilityzones.available.names[0], data.aws_getavailabilityzones.available.names[1]]
///   start_multiplex    = true
///   tags = {
///     "tag1" = "value1"
///   }
/// }
/// resource "aws_medialive_multiplexprogram" "example" {
///   multiplex_program_settings = {
///     video_settings = {
///       constant_bitrate = 100000
///     }
///     program_number             = 1
///     preferred_channel_pipeline = "CURRENTLY_ACTIVE"
///   }
///   program_name = "example_program"
///   multiplex_id = aws_medialive_multiplex.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.medialive.Multiplex;
/// import com.pulumi.aws.medialive.MultiplexArgs;
/// import com.pulumi.aws.medialive.inputs.MultiplexMultiplexSettingsArgs;
/// import com.pulumi.aws.medialive.MultiplexProgram;
/// import com.pulumi.aws.medialive.MultiplexProgramArgs;
/// import com.pulumi.aws.medialive.inputs.MultiplexProgramMultiplexProgramSettingsArgs;
/// import com.pulumi.aws.medialive.inputs.MultiplexProgramMultiplexProgramSettingsVideoSettingsArgs;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .build());
///
///         var example = new Multiplex("example", MultiplexArgs.builder()
///             .multiplexSettings(MultiplexMultiplexSettingsArgs.builder()
///                 .transportStreamBitrate(1000000)
///                 .transportStreamId(1)
///                 .transportStreamReservedBitrate(1)
///                 .maximumVideoBufferDelayMilliseconds(1000)
///                 .build())
///             .name("example-multiplex-changed")
///             .availabilityZones(
///                 available.names()[0],
///                 available.names()[1])
///             .startMultiplex(true)
///             .tags(Map.of("tag1", "value1"))
///             .build());
///
///         var exampleMultiplexProgram = new MultiplexProgram("exampleMultiplexProgram", MultiplexProgramArgs.builder()
///             .multiplexProgramSettings(MultiplexProgramMultiplexProgramSettingsArgs.builder()
///                 .videoSettings(MultiplexProgramMultiplexProgramSettingsVideoSettingsArgs.builder()
///                     .constantBitrate(100000)
///                     .build())
///                 .programNumber(1)
///                 .preferredChannelPipeline("CURRENTLY_ACTIVE")
///                 .build())
///             .programName("example_program")
///             .multiplexId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:medialive:Multiplex
///     properties:
///       multiplexSettings:
///         transportStreamBitrate: 1e+06
///         transportStreamId: 1
///         transportStreamReservedBitrate: 1
///         maximumVideoBufferDelayMilliseconds: 1000
///       name: example-multiplex-changed
///       availabilityZones:
///         - ${available.names[0]}
///         - ${available.names[1]}
///       startMultiplex: true
///       tags:
///         tag1: value1
///   exampleMultiplexProgram:
///     type: aws:medialive:MultiplexProgram
///     name: example
///     properties:
///       multiplexProgramSettings:
///         videoSettings:
///           constantBitrate: 100000
///         programNumber: 1
///         preferredChannelPipeline: CURRENTLY_ACTIVE
///       programName: example_program
///       multiplexId: ${example.id}
/// variables:
///   available:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         state: available
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `multiplexId` (String) ID of the Multiplex.
/// * `programName` (String) Unique program name.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import MediaLive MultiplexProgram using the `id`, or a combination of "`programName`/`multiplexId`". For example:
///
/// ```sh
/// $ pulumi import aws:medialive/multiplexProgram:MultiplexProgram example example_program/12345678
/// ```
class MultiplexProgram extends pulumi.CustomResource {
  /// Multiplex ID.
  late final pulumi.Output<String> multiplexId;
  /// MultiplexProgram settings. See Multiplex Program Settings for more details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<MultiplexProgramMultiplexProgramSettings?> multiplexProgramSettings;
  /// Unique program name.
  late final pulumi.Output<String> programName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<MultiplexProgramTimeouts?> timeouts;

  /// Creates a new [MultiplexProgram].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MultiplexProgram]. {@macro pulumi_medialive_multiplex_program_multiplex_program_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MultiplexProgram(
    String name, {
    MultiplexProgramArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/multiplexProgram:MultiplexProgram',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    multiplexId = registerOutput<String>('multiplexId');
    multiplexProgramSettings = registerOutput<MultiplexProgramMultiplexProgramSettings?>('multiplexProgramSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiplexProgramMultiplexProgramSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    programName = registerOutput<String>('programName');
    region = registerOutput<String>('region');
    timeouts = registerOutput<MultiplexProgramTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiplexProgramTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [MultiplexProgram] resource's state with the given [name] and [id].
  static MultiplexProgram get(
    String name,
    pulumi.Input<String> id, {
    MultiplexProgramState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MultiplexProgram._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MultiplexProgram._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/multiplexProgram:MultiplexProgram',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    multiplexId = registerOutput<String>('multiplexId');
    multiplexProgramSettings = registerOutput<MultiplexProgramMultiplexProgramSettings?>('multiplexProgramSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiplexProgramMultiplexProgramSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    programName = registerOutput<String>('programName');
    region = registerOutput<String>('region');
    timeouts = registerOutput<MultiplexProgramTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiplexProgramTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [MultiplexProgram] resource.
  MultiplexProgram.reference(String urn)
    : super(
        'aws:medialive/multiplexProgram:MultiplexProgram',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    multiplexId = registerOutput<String>('multiplexId');
    multiplexProgramSettings = registerOutput<MultiplexProgramMultiplexProgramSettings?>('multiplexProgramSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiplexProgramMultiplexProgramSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    programName = registerOutput<String>('programName');
    region = registerOutput<String>('region');
    timeouts = registerOutput<MultiplexProgramTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultiplexProgramTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
