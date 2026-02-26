import 'package:pulumi/pulumi.dart';
import '../multiplex_program_multiplex_program_settings/multiplex_program_multiplex_program_settings.dart';
import '../multiplex_program_timeouts/multiplex_program_timeouts.dart';
import 'multiplex_program_args.dart';

/// Resource for managing an AWS MediaLive MultiplexProgram.
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
/// const available = aws.getAvailabilityZones({
/// state: "available",
/// });
/// const example = new aws.medialive.Multiplex("example", {
/// name: "example-multiplex-changed",
/// availabilityZones: [
/// available.then(available => available.names?.[0]),
/// available.then(available => available.names?.[1]),
/// ],
/// multiplexSettings: {
/// transportStreamBitrate: 1000000,
/// transportStreamId: 1,
/// transportStreamReservedBitrate: 1,
/// maximumVideoBufferDelayMilliseconds: 1000,
/// },
/// startMultiplex: true,
/// tags: {
/// tag1: "value1",
/// },
/// });
/// const exampleMultiplexProgram = new aws.medialive.MultiplexProgram("example", {
/// programName: "example_program",
/// multiplexId: example.id,
/// multiplexProgramSettings: {
/// programNumber: 1,
/// preferredChannelPipeline: "CURRENTLY_ACTIVE",
/// videoSettings: {
/// constantBitrate: 100000,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// available = aws.get_availability_zones(state="available")
/// example = aws.medialive.Multiplex("example",
/// name="example-multiplex-changed",
/// availability_zones=[
/// available.names[0],
/// available.names[1],
/// ],
/// multiplex_settings={
/// "transport_stream_bitrate": 1000000,
/// "transport_stream_id": 1,
/// "transport_stream_reserved_bitrate": 1,
/// "maximum_video_buffer_delay_milliseconds": 1000,
/// },
/// start_multiplex=True,
/// tags={
/// "tag1": "value1",
/// })
/// example_multiplex_program = aws.medialive.MultiplexProgram("example",
/// program_name="example_program",
/// multiplex_id=example.id,
/// multiplex_program_settings={
/// "program_number": 1,
/// "preferred_channel_pipeline": "CURRENTLY_ACTIVE",
/// "video_settings": {
/// "constant_bitrate": 100000,
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Aws.GetAvailabilityZones.Invoke(new()
/// {
/// State = "available",
/// });
///
/// var example = new Aws.MediaLive.Multiplex("example", new()
/// {
/// Name = "example-multiplex-changed",
/// AvailabilityZones = new[]
/// {
/// available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[0]),
/// available.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.Names[1]),
/// },
/// MultiplexSettings = new Aws.MediaLive.Inputs.MultiplexMultiplexSettingsArgs
/// {
/// TransportStreamBitrate = 1000000,
/// TransportStreamId = 1,
/// TransportStreamReservedBitrate = 1,
/// MaximumVideoBufferDelayMilliseconds = 1000,
/// },
/// StartMultiplex = true,
/// Tags =
/// {
/// { "tag1", "value1" },
/// },
/// });
///
/// var exampleMultiplexProgram = new Aws.MediaLive.MultiplexProgram("example", new()
/// {
/// ProgramName = "example_program",
/// MultiplexId = example.Id,
/// MultiplexProgramSettings = new Aws.MediaLive.Inputs.MultiplexProgramMultiplexProgramSettingsArgs
/// {
/// ProgramNumber = 1,
/// PreferredChannelPipeline = "CURRENTLY_ACTIVE",
/// VideoSettings = new Aws.MediaLive.Inputs.MultiplexProgramMultiplexProgramSettingsVideoSettingsArgs
/// {
/// ConstantBitrate = 100000,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/medialive"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// available, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// State: pulumi.StringRef("available"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// example, err := medialive.NewMultiplex(ctx, "example", &medialive.MultiplexArgs{
/// Name: pulumi.String("example-multiplex-changed"),
/// AvailabilityZones: pulumi.StringArray{
/// pulumi.String(available.Names[0]),
/// pulumi.String(available.Names[1]),
/// },
/// MultiplexSettings: &medialive.MultiplexMultiplexSettingsArgs{
/// TransportStreamBitrate:              pulumi.Int(1000000),
/// TransportStreamId:                   pulumi.Int(1),
/// TransportStreamReservedBitrate:      pulumi.Int(1),
/// MaximumVideoBufferDelayMilliseconds: pulumi.Int(1000),
/// },
/// StartMultiplex: pulumi.Bool(true),
/// Tags: pulumi.StringMap{
/// "tag1": pulumi.String("value1"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = medialive.NewMultiplexProgram(ctx, "example", &medialive.MultiplexProgramArgs{
/// ProgramName: pulumi.String("example_program"),
/// MultiplexId: example.ID(),
/// MultiplexProgramSettings: &medialive.MultiplexProgramMultiplexProgramSettingsArgs{
/// ProgramNumber:            pulumi.Int(1),
/// PreferredChannelPipeline: pulumi.String("CURRENTLY_ACTIVE"),
/// VideoSettings: &medialive.MultiplexProgramMultiplexProgramSettingsVideoSettingsArgs{
/// ConstantBitrate: pulumi.Int(100000),
/// },
/// },
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.medialive.Multiplex;
/// import com.pulumi.aws.medialive.MultiplexArgs;
/// import com.pulumi.aws.medialive.inputs.MultiplexMultiplexSettingsArgs;
/// import com.pulumi.aws.medialive.MultiplexProgram;
/// import com.pulumi.aws.medialive.MultiplexProgramArgs;
/// import com.pulumi.aws.medialive.inputs.MultiplexProgramMultiplexProgramSettingsArgs;
/// import com.pulumi.aws.medialive.inputs.MultiplexProgramMultiplexProgramSettingsVideoSettingsArgs;
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
/// final var available = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
/// .state("available")
/// .build());
///
/// var example = new Multiplex("example", MultiplexArgs.builder()
/// .name("example-multiplex-changed")
/// .availabilityZones(
/// available.names()[0],
/// available.names()[1])
/// .multiplexSettings(MultiplexMultiplexSettingsArgs.builder()
/// .transportStreamBitrate(1000000)
/// .transportStreamId(1)
/// .transportStreamReservedBitrate(1)
/// .maximumVideoBufferDelayMilliseconds(1000)
/// .build())
/// .startMultiplex(true)
/// .tags(Map.of("tag1", "value1"))
/// .build());
///
/// var exampleMultiplexProgram = new MultiplexProgram("exampleMultiplexProgram", MultiplexProgramArgs.builder()
/// .programName("example_program")
/// .multiplexId(example.id())
/// .multiplexProgramSettings(MultiplexProgramMultiplexProgramSettingsArgs.builder()
/// .programNumber(1)
/// .preferredChannelPipeline("CURRENTLY_ACTIVE")
/// .videoSettings(MultiplexProgramMultiplexProgramSettingsVideoSettingsArgs.builder()
/// .constantBitrate(100000)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:medialive:Multiplex
/// properties:
/// name: example-multiplex-changed
/// availabilityZones:
/// - ${available.names[0]}
/// - ${available.names[1]}
/// multiplexSettings:
/// transportStreamBitrate: 1e+06
/// transportStreamId: 1
/// transportStreamReservedBitrate: 1
/// maximumVideoBufferDelayMilliseconds: 1000
/// startMultiplex: true
/// tags:
/// tag1: value1
/// exampleMultiplexProgram:
/// type: aws:medialive:MultiplexProgram
/// name: example
/// properties:
/// programName: example_program
/// multiplexId: ${example.id}
/// multiplexProgramSettings:
/// programNumber: 1
/// preferredChannelPipeline: CURRENTLY_ACTIVE
/// videoSettings:
/// constantBitrate: 100000
/// variables:
/// available:
/// fn::invoke:
/// function: aws:getAvailabilityZones
/// arguments:
/// state: available
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import MediaLive MultiplexProgram using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>, or a combination of "<span pulumi-lang-nodejs="`programName`" pulumi-lang-dotnet="`ProgramName`" pulumi-lang-go="`programName`" pulumi-lang-python="`program_name`" pulumi-lang-yaml="`programName`" pulumi-lang-java="`programName`">`program_name`</span>/<span pulumi-lang-nodejs="`multiplexId`" pulumi-lang-dotnet="`MultiplexId`" pulumi-lang-go="`multiplexId`" pulumi-lang-python="`multiplex_id`" pulumi-lang-yaml="`multiplexId`" pulumi-lang-java="`multiplexId`">`multiplex_id`</span>". For example:
///
/// ```sh
/// $ pulumi import aws:medialive/multiplexProgram:MultiplexProgram example example_program/1234567
/// ```
class MultiplexProgram extends CustomResource {
  /// Multiplex ID.
  late final Output<String> multiplexId;

  /// MultiplexProgram settings. See Multiplex Program Settings for more details.
  ///
  /// The following arguments are optional:
  late final Output<MultiplexProgramMultiplexProgramSettings?>
      multiplexProgramSettings;

  /// Unique program name.
  late final Output<String> programName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<MultiplexProgramTimeouts?> timeouts;

  MultiplexProgram(
    String name, {
    MultiplexProgramArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:medialive/multiplexProgram:MultiplexProgram',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.multiplexId = registerOutput<String>('multiplexId');
    this.multiplexProgramSettings =
        registerOutput<MultiplexProgramMultiplexProgramSettings?>(
            'multiplexProgramSettings');
    this.programName = registerOutput<String>('programName');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<MultiplexProgramTimeouts?>('timeouts');
  }
}
