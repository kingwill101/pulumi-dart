import 'package:pulumi/pulumi.dart' as pulumi;
import 'preset_args.dart';
import 'preset_audio.dart';
import 'preset_audio_codec_options.dart';
import 'preset_state.dart';
import 'preset_thumbnails.dart';
import 'preset_video.dart';

/// Provides an Elastic Transcoder preset resource.
///
/// &gt; **Warning:** This resource is deprecated. Use [AWS Elemental MediaConvert](https://aws.amazon.com/blogs/media/migrating-workflows-from-amazon-elastic-transcoder-to-aws-elemental-mediaconvert/) instead. AWS will [discontinue support for Amazon Elastic Transcoder](https://aws.amazon.com/blogs/media/support-for-amazon-elastic-transcoder-ending-soon/), effective November 13, 2025.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.elastictranscoder.Preset("bar", {
///     container: "mp4",
///     description: "Sample Preset",
///     name: "sample_preset",
///     audio: {
///         audioPackingMode: "SingleTrack",
///         bitRate: "96",
///         channels: "2",
///         codec: "AAC",
///         sampleRate: "44100",
///     },
///     audioCodecOptions: {
///         profile: "AAC-LC",
///     },
///     video: {
///         bitRate: "1600",
///         codec: "H.264",
///         displayAspectRatio: "16:9",
///         fixedGop: "false",
///         frameRate: "auto",
///         maxFrameRate: "60",
///         keyframesMaxDist: "240",
///         maxHeight: "auto",
///         maxWidth: "auto",
///         paddingPolicy: "Pad",
///         sizingPolicy: "Fit",
///     },
///     videoCodecOptions: {
///         Profile: "main",
///         Level: "2.2",
///         MaxReferenceFrames: "3",
///         InterlacedMode: "Progressive",
///         ColorSpaceConversionMode: "None",
///     },
///     videoWatermarks: [{
///         id: "Test",
///         maxWidth: "20%",
///         maxHeight: "20%",
///         sizingPolicy: "ShrinkToFit",
///         horizontalAlign: "Right",
///         horizontalOffset: "10px",
///         verticalAlign: "Bottom",
///         verticalOffset: "10px",
///         opacity: "55.5",
///         target: "Content",
///     }],
///     thumbnails: {
///         format: "png",
///         interval: "120",
///         maxWidth: "auto",
///         maxHeight: "auto",
///         paddingPolicy: "Pad",
///         sizingPolicy: "Fit",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.elastictranscoder.Preset("bar",
///     container="mp4",
///     description="Sample Preset",
///     name="sample_preset",
///     audio={
///         "audio_packing_mode": "SingleTrack",
///         "bit_rate": "96",
///         "channels": "2",
///         "codec": "AAC",
///         "sample_rate": "44100",
///     },
///     audio_codec_options={
///         "profile": "AAC-LC",
///     },
///     video={
///         "bit_rate": "1600",
///         "codec": "H.264",
///         "display_aspect_ratio": "16:9",
///         "fixed_gop": "false",
///         "frame_rate": "auto",
///         "max_frame_rate": "60",
///         "keyframes_max_dist": "240",
///         "max_height": "auto",
///         "max_width": "auto",
///         "padding_policy": "Pad",
///         "sizing_policy": "Fit",
///     },
///     video_codec_options={
///         "Profile": "main",
///         "Level": "2.2",
///         "MaxReferenceFrames": "3",
///         "InterlacedMode": "Progressive",
///         "ColorSpaceConversionMode": "None",
///     },
///     video_watermarks=[{
///         "id": "Test",
///         "max_width": "20%",
///         "max_height": "20%",
///         "sizing_policy": "ShrinkToFit",
///         "horizontal_align": "Right",
///         "horizontal_offset": "10px",
///         "vertical_align": "Bottom",
///         "vertical_offset": "10px",
///         "opacity": "55.5",
///         "target": "Content",
///     }],
///     thumbnails={
///         "format": "png",
///         "interval": "120",
///         "max_width": "auto",
///         "max_height": "auto",
///         "padding_policy": "Pad",
///         "sizing_policy": "Fit",
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
///     var bar = new Aws.ElasticTranscoder.Preset("bar", new()
///     {
///         Container = "mp4",
///         Description = "Sample Preset",
///         Name = "sample_preset",
///         Audio = new Aws.ElasticTranscoder.Inputs.PresetAudioArgs
///         {
///             AudioPackingMode = "SingleTrack",
///             BitRate = "96",
///             Channels = "2",
///             Codec = "AAC",
///             SampleRate = "44100",
///         },
///         AudioCodecOptions = new Aws.ElasticTranscoder.Inputs.PresetAudioCodecOptionsArgs
///         {
///             Profile = "AAC-LC",
///         },
///         Video = new Aws.ElasticTranscoder.Inputs.PresetVideoArgs
///         {
///             BitRate = "1600",
///             Codec = "H.264",
///             DisplayAspectRatio = "16:9",
///             FixedGop = "false",
///             FrameRate = "auto",
///             MaxFrameRate = "60",
///             KeyframesMaxDist = "240",
///             MaxHeight = "auto",
///             MaxWidth = "auto",
///             PaddingPolicy = "Pad",
///             SizingPolicy = "Fit",
///         },
///         VideoCodecOptions =
///         {
///             { "Profile", "main" },
///             { "Level", "2.2" },
///             { "MaxReferenceFrames", "3" },
///             { "InterlacedMode", "Progressive" },
///             { "ColorSpaceConversionMode", "None" },
///         },
///         VideoWatermarks = new[]
///         {
///             new Aws.ElasticTranscoder.Inputs.PresetVideoWatermarkArgs
///             {
///                 Id = "Test",
///                 MaxWidth = "20%",
///                 MaxHeight = "20%",
///                 SizingPolicy = "ShrinkToFit",
///                 HorizontalAlign = "Right",
///                 HorizontalOffset = "10px",
///                 VerticalAlign = "Bottom",
///                 VerticalOffset = "10px",
///                 Opacity = "55.5",
///                 Target = "Content",
///             },
///         },
///         Thumbnails = new Aws.ElasticTranscoder.Inputs.PresetThumbnailsArgs
///         {
///             Format = "png",
///             Interval = "120",
///             MaxWidth = "auto",
///             MaxHeight = "auto",
///             PaddingPolicy = "Pad",
///             SizingPolicy = "Fit",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elastictranscoder"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elastictranscoder.NewPreset(ctx, "bar", &elastictranscoder.PresetArgs{
/// 			Container:   pulumi.String("mp4"),
/// 			Description: pulumi.String("Sample Preset"),
/// 			Name:        pulumi.String("sample_preset"),
/// 			Audio: &elastictranscoder.PresetAudioArgs{
/// 				AudioPackingMode: pulumi.String("SingleTrack"),
/// 				BitRate:          pulumi.String("96"),
/// 				Channels:         pulumi.String("2"),
/// 				Codec:            pulumi.String("AAC"),
/// 				SampleRate:       pulumi.String("44100"),
/// 			},
/// 			AudioCodecOptions: &elastictranscoder.PresetAudioCodecOptionsArgs{
/// 				Profile: pulumi.String("AAC-LC"),
/// 			},
/// 			Video: &elastictranscoder.PresetVideoArgs{
/// 				BitRate:            pulumi.String("1600"),
/// 				Codec:              pulumi.String("H.264"),
/// 				DisplayAspectRatio: pulumi.String("16:9"),
/// 				FixedGop:           pulumi.String("false"),
/// 				FrameRate:          pulumi.String("auto"),
/// 				MaxFrameRate:       pulumi.String("60"),
/// 				KeyframesMaxDist:   pulumi.String("240"),
/// 				MaxHeight:          pulumi.String("auto"),
/// 				MaxWidth:           pulumi.String("auto"),
/// 				PaddingPolicy:      pulumi.String("Pad"),
/// 				SizingPolicy:       pulumi.String("Fit"),
/// 			},
/// 			VideoCodecOptions: pulumi.StringMap{
/// 				"Profile":                  pulumi.String("main"),
/// 				"Level":                    pulumi.String("2.2"),
/// 				"MaxReferenceFrames":       pulumi.String("3"),
/// 				"InterlacedMode":           pulumi.String("Progressive"),
/// 				"ColorSpaceConversionMode": pulumi.String("None"),
/// 			},
/// 			VideoWatermarks: elastictranscoder.PresetVideoWatermarkArray{
/// 				&elastictranscoder.PresetVideoWatermarkArgs{
/// 					Id:               pulumi.String("Test"),
/// 					MaxWidth:         pulumi.String("20%"),
/// 					MaxHeight:        pulumi.String("20%"),
/// 					SizingPolicy:     pulumi.String("ShrinkToFit"),
/// 					HorizontalAlign:  pulumi.String("Right"),
/// 					HorizontalOffset: pulumi.String("10px"),
/// 					VerticalAlign:    pulumi.String("Bottom"),
/// 					VerticalOffset:   pulumi.String("10px"),
/// 					Opacity:          pulumi.String("55.5"),
/// 					Target:           pulumi.String("Content"),
/// 				},
/// 			},
/// 			Thumbnails: &elastictranscoder.PresetThumbnailsArgs{
/// 				Format:        pulumi.String("png"),
/// 				Interval:      pulumi.String("120"),
/// 				MaxWidth:      pulumi.String("auto"),
/// 				MaxHeight:     pulumi.String("auto"),
/// 				PaddingPolicy: pulumi.String("Pad"),
/// 				SizingPolicy:  pulumi.String("Fit"),
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
/// import com.pulumi.aws.elastictranscoder.Preset;
/// import com.pulumi.aws.elastictranscoder.PresetArgs;
/// import com.pulumi.aws.elastictranscoder.inputs.PresetAudioArgs;
/// import com.pulumi.aws.elastictranscoder.inputs.PresetAudioCodecOptionsArgs;
/// import com.pulumi.aws.elastictranscoder.inputs.PresetVideoArgs;
/// import com.pulumi.aws.elastictranscoder.inputs.PresetVideoWatermarkArgs;
/// import com.pulumi.aws.elastictranscoder.inputs.PresetThumbnailsArgs;
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
///         var bar = new Preset("bar", PresetArgs.builder()
///             .container("mp4")
///             .description("Sample Preset")
///             .name("sample_preset")
///             .audio(PresetAudioArgs.builder()
///                 .audioPackingMode("SingleTrack")
///                 .bitRate("96")
///                 .channels("2")
///                 .codec("AAC")
///                 .sampleRate("44100")
///                 .build())
///             .audioCodecOptions(PresetAudioCodecOptionsArgs.builder()
///                 .profile("AAC-LC")
///                 .build())
///             .video(PresetVideoArgs.builder()
///                 .bitRate("1600")
///                 .codec("H.264")
///                 .displayAspectRatio("16:9")
///                 .fixedGop("false")
///                 .frameRate("auto")
///                 .maxFrameRate("60")
///                 .keyframesMaxDist("240")
///                 .maxHeight("auto")
///                 .maxWidth("auto")
///                 .paddingPolicy("Pad")
///                 .sizingPolicy("Fit")
///                 .build())
///             .videoCodecOptions(Map.ofEntries(
///                 Map.entry("Profile", "main"),
///                 Map.entry("Level", "2.2"),
///                 Map.entry("MaxReferenceFrames", "3"),
///                 Map.entry("InterlacedMode", "Progressive"),
///                 Map.entry("ColorSpaceConversionMode", "None")
///             ))
///             .videoWatermarks(PresetVideoWatermarkArgs.builder()
///                 .id("Test")
///                 .maxWidth("20%")
///                 .maxHeight("20%")
///                 .sizingPolicy("ShrinkToFit")
///                 .horizontalAlign("Right")
///                 .horizontalOffset("10px")
///                 .verticalAlign("Bottom")
///                 .verticalOffset("10px")
///                 .opacity("55.5")
///                 .target("Content")
///                 .build())
///             .thumbnails(PresetThumbnailsArgs.builder()
///                 .format("png")
///                 .interval("120")
///                 .maxWidth("auto")
///                 .maxHeight("auto")
///                 .paddingPolicy("Pad")
///                 .sizingPolicy("Fit")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: aws:elastictranscoder:Preset
///     properties:
///       container: mp4
///       description: Sample Preset
///       name: sample_preset
///       audio:
///         audioPackingMode: SingleTrack
///         bitRate: 96
///         channels: 2
///         codec: AAC
///         sampleRate: 44100
///       audioCodecOptions:
///         profile: AAC-LC
///       video:
///         bitRate: '1600'
///         codec: H.264
///         displayAspectRatio: 16:9
///         fixedGop: 'false'
///         frameRate: auto
///         maxFrameRate: '60'
///         keyframesMaxDist: 240
///         maxHeight: auto
///         maxWidth: auto
///         paddingPolicy: Pad
///         sizingPolicy: Fit
///       videoCodecOptions:
///         Profile: main
///         Level: '2.2'
///         MaxReferenceFrames: 3
///         InterlacedMode: Progressive
///         ColorSpaceConversionMode: None
///       videoWatermarks:
///         - id: Test
///           maxWidth: 20%
///           maxHeight: 20%
///           sizingPolicy: ShrinkToFit
///           horizontalAlign: Right
///           horizontalOffset: 10px
///           verticalAlign: Bottom
///           verticalOffset: 10px
///           opacity: '55.5'
///           target: Content
///       thumbnails:
///         format: png
///         interval: 120
///         maxWidth: auto
///         maxHeight: auto
///         paddingPolicy: Pad
///         sizingPolicy: Fit
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Elastic Transcoder presets using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:elastictranscoder/preset:Preset basic_preset 1407981661351-cttk8b
/// ```
class Preset extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Elastic Transcoder Preset.
  late final pulumi.Output<String> arn;

  /// Audio parameters object (documented below).
  late final pulumi.Output<PresetAudio?> audio;

  /// Codec options for the audio parameters (documented below)
  late final pulumi.Output<PresetAudioCodecOptions> audioCodecOptions;

  /// The container type for the output file. Valid values are `flac`, `flv`, `fmp4`, `gif`, `mp3`, `mp4`, `mpg`, `mxf`, `oga`, `ogg`, `ts`, and `webm`.
  late final pulumi.Output<String> container;

  /// A description of the preset (maximum 255 characters)
  late final pulumi.Output<String?> description;

  /// The name of the preset. (maximum 40 characters)
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Thumbnail parameters object (documented below)
  late final pulumi.Output<PresetThumbnails?> thumbnails;
  late final pulumi.Output<String> type;

  /// Video parameters object (documented below)
  late final pulumi.Output<PresetVideo?> video;

  /// Codec options for the video parameters
  ///
  /// See ["Create Preset"](http://docs.aws.amazon.com/elastictranscoder/latest/developerguide/create-preset.html) in the AWS docs for reference.
  late final pulumi.Output<Map<String, String>?> videoCodecOptions;

  /// Watermark parameters for the video parameters (documented below)
  late final pulumi.Output<List<Map<String, dynamic>>?> videoWatermarks;

  /// Creates a new [Preset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Preset]. {@macro pulumi_elastictranscoder_preset_preset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Preset(String name, {PresetArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:elastictranscoder/preset:Preset',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    audio = registerOutput<PresetAudio?>('audio');
    audioCodecOptions = registerOutput<PresetAudioCodecOptions>(
      'audioCodecOptions',
    );
    container = registerOutput<String>('container');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    thumbnails = registerOutput<PresetThumbnails?>('thumbnails');
    type = registerOutput<String>('type');
    video = registerOutput<PresetVideo?>('video');
    videoCodecOptions = registerOutput<Map<String, String>?>(
      'videoCodecOptions',
    );
    videoWatermarks = registerOutput<List<Map<String, dynamic>>?>(
      'videoWatermarks',
    );
  }

  /// Gets an existing [Preset] resource's state with the given [name] and [id].
  static Preset get(
    String name,
    pulumi.Input<String> id, {
    PresetState? state,
  }) {
    return Preset._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Preset._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:elastictranscoder/preset:Preset',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    audio = registerOutput<PresetAudio?>('audio');
    audioCodecOptions = registerOutput<PresetAudioCodecOptions>(
      'audioCodecOptions',
    );
    container = registerOutput<String>('container');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    thumbnails = registerOutput<PresetThumbnails?>('thumbnails');
    type = registerOutput<String>('type');
    video = registerOutput<PresetVideo?>('video');
    videoCodecOptions = registerOutput<Map<String, String>?>(
      'videoCodecOptions',
    );
    videoWatermarks = registerOutput<List<Map<String, dynamic>>?>(
      'videoWatermarks',
    );
  }
}
