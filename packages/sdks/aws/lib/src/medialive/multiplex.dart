import 'package:pulumi/pulumi.dart' as pulumi;
import 'multiplex_args.dart';
import 'multiplex_multiplex_settings.dart';
import 'multiplex_state.dart';

/// Resource for managing an AWS MediaLive Multiplex.
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
///     name: "example-multiplex-changed",
///     availabilityZones: [
///         available.then(available => available.names?.[0]),
///         available.then(available => available.names?.[1]),
///     ],
///     multiplexSettings: {
///         transportStreamBitrate: 1000000,
///         transportStreamId: 1,
///         transportStreamReservedBitrate: 1,
///         maximumVideoBufferDelayMilliseconds: 1000,
///     },
///     startMultiplex: true,
///     tags: {
///         tag1: "value1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available")
/// example = aws.medialive.Multiplex("example",
///     name="example-multiplex-changed",
///     availability_zones=[
///         available.names[0],
///         available.names[1],
///     ],
///     multiplex_settings={
///         "transport_stream_bitrate": 1000000,
///         "transport_stream_id": 1,
///         "transport_stream_reserved_bitrate": 1,
///         "maximum_video_buffer_delay_milliseconds": 1000,
///     },
///     start_multiplex=True,
///     tags={
///         "tag1": "value1",
///     })
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
///         Name = "example-multiplex-changed",
///         AvailabilityZones = new[]
///         {
///             available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
///             available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[1]),
///         },
///         MultiplexSettings = new Aws.MediaLive.Inputs.MultiplexMultiplexSettingsArgs
///         {
///             TransportStreamBitrate = 1000000,
///             TransportStreamId = 1,
///             TransportStreamReservedBitrate = 1,
///             MaximumVideoBufferDelayMilliseconds = 1000,
///         },
///         StartMultiplex = true,
///         Tags =
///         {
///             { "tag1", "value1" },
///         },
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
/// 		_, err = medialive.NewMultiplex(ctx, "example", &medialive.MultiplexArgs{
/// 			Name: pulumi.String("example-multiplex-changed"),
/// 			AvailabilityZones: pulumi.StringArray{
/// 				pulumi.String(available.Names[0]),
/// 				pulumi.String(available.Names[1]),
/// 			},
/// 			MultiplexSettings: &medialive.MultiplexMultiplexSettingsArgs{
/// 				TransportStreamBitrate:              pulumi.Int(1000000),
/// 				TransportStreamId:                   pulumi.Int(1),
/// 				TransportStreamReservedBitrate:      pulumi.Int(1),
/// 				MaximumVideoBufferDelayMilliseconds: pulumi.Int(1000),
/// 			},
/// 			StartMultiplex: pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.medialive.Multiplex;
/// import com.pulumi.aws.medialive.MultiplexArgs;
/// import com.pulumi.aws.medialive.inputs.MultiplexMultiplexSettingsArgs;
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
///         final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .build());
///
///         var example = new Multiplex("example", MultiplexArgs.builder()
///             .name("example-multiplex-changed")
///             .availabilityZones(
///                 available.names()[0],
///                 available.names()[1])
///             .multiplexSettings(MultiplexMultiplexSettingsArgs.builder()
///                 .transportStreamBitrate(1000000)
///                 .transportStreamId(1)
///                 .transportStreamReservedBitrate(1)
///                 .maximumVideoBufferDelayMilliseconds(1000)
///                 .build())
///             .startMultiplex(true)
///             .tags(Map.of("tag1", "value1"))
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
///       name: example-multiplex-changed
///       availabilityZones:
///         - ${available.names[0]}
///         - ${available.names[1]}
///       multiplexSettings:
///         transportStreamBitrate: 1e+06
///         transportStreamId: 1
///         transportStreamReservedBitrate: 1
///         maximumVideoBufferDelayMilliseconds: 1000
///       startMultiplex: true
///       tags:
///         tag1: value1
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
/// Using `pulumi import`, import MediaLive Multiplex using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:medialive/multiplex:Multiplex example 12345678
/// ```
class Multiplex extends pulumi.CustomResource {
  /// ARN of the Multiplex.
  late final pulumi.Output<String> arn;
  /// A list of availability zones. You must specify exactly two.
  late final pulumi.Output<List<String>> availabilityZones;
  /// Multiplex settings. See Multiplex Settings for more details.
  late final pulumi.Output<MultiplexMultiplexSettings?> multiplexSettings;
  /// name of Multiplex.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Whether to start the Multiplex. Defaults to `false`.
  late final pulumi.Output<bool?> startMultiplex;
  /// A map of tags to assign to the Multiplex. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Multiplex].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Multiplex]. {@macro pulumi_medialive_multiplex_multiplex_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Multiplex(
    String name, {
    MultiplexArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/multiplex:Multiplex',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.multiplexSettings = registerOutput<MultiplexMultiplexSettings?>('multiplexSettings');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.startMultiplex = registerOutput<bool?>('startMultiplex');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Multiplex] resource's state with the given [name] and [id].
  static Multiplex get(
    String name,
    pulumi.Input<String> id, {
    MultiplexState? state,
  }) {
    return Multiplex._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Multiplex._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:medialive/multiplex:Multiplex',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.multiplexSettings = registerOutput<MultiplexMultiplexSettings?>('multiplexSettings');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.startMultiplex = registerOutput<bool?>('startMultiplex');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
