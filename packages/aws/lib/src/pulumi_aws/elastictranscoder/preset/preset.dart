import 'package:pulumi/pulumi.dart';
import '../preset_audio/preset_audio.dart';
import '../preset_audio_codec_options/preset_audio_codec_options.dart';
import '../preset_thumbnails/preset_thumbnails.dart';
import '../preset_video/preset_video.dart';
import '../preset_video_watermark/preset_video_watermark.dart';
import 'preset_args.dart';

/// Provides an Elastic Transcoder preset resource.
///
/// > **Warning:** This resource is deprecated. Use [AWS Elemental MediaConvert](https://aws.amazon.com/blogs/media/migrating-workflows-from-amazon-elastic-transcoder-to-aws-elemental-mediaconvert/) instead. AWS will [discontinue support for Amazon Elastic Transcoder](https://aws.amazon.com/blogs/media/support-for-amazon-elastic-transcoder-ending-soon/), effective November 13, 2025.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.elastictranscoder.Preset("bar", {
/// container: "mp4",
/// description: "Sample Preset",
/// name: "sample_preset",
/// audio: {
/// audioPackingMode: "SingleTrack",
/// bitRate: "96",
/// channels: "2",
/// codec: "AAC",
/// sampleRate: "44100",
/// },
/// audioCodecOptions: {
/// profile: "AAC-LC",
/// },
/// video: {
/// bitRate: "1600",
/// codec: "H.264",
/// displayAspectRatio: "16:9",
/// fixedGop: "false",
/// frameRate: "auto",
/// maxFrameRate: "60",
/// keyframesMaxDist: "240",
/// maxHeight: "auto",
/// maxWidth: "auto",
/// paddingPolicy: "Pad",
/// sizingPolicy: "Fit",
/// },
/// videoCodecOptions: {
/// Profile: "main",
/// Level: "2.2",
/// MaxReferenceFrames: "3",
/// InterlacedMode: "Progressive",
/// ColorSpaceConversionMode: "None",
/// },
/// videoWatermarks: [{
/// id: "Test",
/// maxWidth: "20%",
/// maxHeight: "20%",
/// sizingPolicy: "ShrinkToFit",
/// horizontalAlign: "Right",
/// horizontalOffset: "10px",
/// verticalAlign: "Bottom",
/// verticalOffset: "10px",
/// opacity: "55.5",
/// target: "Content",
/// }],
/// thumbnails: {
/// format: "png",
/// interval: "120",
/// maxWidth: "auto",
/// maxHeight: "auto",
/// paddingPolicy: "Pad",
/// sizingPolicy: "Fit",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.elastictranscoder.Preset("bar",
/// container="mp4",
/// description="Sample Preset",
/// name="sample_preset",
/// audio={
/// "audio_packing_mode": "SingleTrack",
/// "bit_rate": "96",
/// "channels": "2",
/// "codec": "AAC",
/// "sample_rate": "44100",
/// },
/// audio_codec_options={
/// "profile": "AAC-LC",
/// },
/// video={
/// "bit_rate": "1600",
/// "codec": "H.264",
/// "display_aspect_ratio": "16:9",
/// "fixed_gop": "false",
/// "frame_rate": "auto",
/// "max_frame_rate": "60",
/// "keyframes_max_dist": "240",
/// "max_height": "auto",
/// "max_width": "auto",
/// "padding_policy": "Pad",
/// "sizing_policy": "Fit",
/// },
/// video_codec_options={
/// "Profile": "main",
/// "Level": "2.2",
/// "MaxReferenceFrames": "3",
/// "InterlacedMode": "Progressive",
/// "ColorSpaceConversionMode": "None",
/// },
/// video_watermarks=[{
/// "id": "Test",
/// "max_width": "20%",
/// "max_height": "20%",
/// "sizing_policy": "ShrinkToFit",
/// "horizontal_align": "Right",
/// "horizontal_offset": "10px",
/// "vertical_align": "Bottom",
/// "vertical_offset": "10px",
/// "opacity": "55.5",
/// "target": "Content",
/// }],
/// thumbnails={
/// "format": "png",
/// "interval": "120",
/// "max_width": "auto",
/// "max_height": "auto",
/// "padding_policy": "Pad",
/// "sizing_policy": "Fit",
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
/// var bar = new Aws.ElasticTranscoder.Preset("bar", new()
/// {
/// Container = "mp4",
/// Description = "Sample Preset",
/// Name = "sample_preset",
/// Audio = new Aws.ElasticTranscoder.Inputs.PresetAudioArgs
/// {
/// AudioPackingMode = "SingleTrack",
/// BitRate = "96",
/// Channels = "2",
/// Codec = "AAC",
/// SampleRate = "44100",
/// },
/// AudioCodecOptions = new Aws.ElasticTranscoder.Inputs.PresetAudioCodecOptionsArgs
/// {
/// Profile = "AAC-LC",
/// },
/// Video = new Aws.ElasticTranscoder.Inputs.PresetVideoArgs
/// {
/// BitRate = "1600",
/// Codec = "H.264",
/// DisplayAspectRatio = "16:9",
/// FixedGop = "false",
/// FrameRate = "auto",
/// MaxFrameRate = "60",
/// KeyframesMaxDist = "240",
/// MaxHeight = "auto",
/// MaxWidth = "auto",
/// PaddingPolicy = "Pad",
/// SizingPolicy = "Fit",
/// },
/// VideoCodecOptions =
/// {
/// { "Profile", "main" },
/// { "Level", "2.2" },
/// { "MaxReferenceFrames", "3" },
/// { "InterlacedMode", "Progressive" },
/// { "ColorSpaceConversionMode", "None" },
/// },
/// VideoWatermarks = new[]
/// {
/// new Aws.ElasticTranscoder.Inputs.PresetVideoWatermarkArgs
/// {
/// Id = "Test",
/// MaxWidth = "20%",
/// MaxHeight = "20%",
/// SizingPolicy = "ShrinkToFit",
/// HorizontalAlign = "Right",
/// HorizontalOffset = "10px",
/// VerticalAlign = "Bottom",
/// VerticalOffset = "10px",
/// Opacity = "55.5",
/// Target = "Content",
/// },
/// },
/// Thumbnails = new Aws.ElasticTranscoder.Inputs.PresetThumbnailsArgs
/// {
/// Format = "png",
/// Interval = "120",
/// MaxWidth = "auto",
/// MaxHeight = "auto",
/// PaddingPolicy = "Pad",
/// SizingPolicy = "Fit",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elastictranscoder"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := elastictranscoder.NewPreset(ctx, "bar", &elastictranscoder.PresetArgs{
/// Container:   pulumi.String("mp4"),
/// Description: pulumi.String("Sample Preset"),
/// Name:        pulumi.String("sample_preset"),
/// Audio: &elastictranscoder.PresetAudioArgs{
/// AudioPackingMode: pulumi.String("SingleTrack"),
/// BitRate:          pulumi.String("96"),
/// Channels:         pulumi.String("2"),
/// Codec:            pulumi.String("AAC"),
/// SampleRate:       pulumi.String("44100"),
/// },
/// AudioCodecOptions: &elastictranscoder.PresetAudioCodecOptionsArgs{
/// Profile: pulumi.String("AAC-LC"),
/// },
/// Video: &elastictranscoder.PresetVideoArgs{
/// BitRate:            pulumi.String("1600"),
/// Codec:              pulumi.String("H.264"),
/// DisplayAspectRatio: pulumi.String("16:9"),
/// FixedGop:           pulumi.String("false"),
/// FrameRate:          pulumi.String("auto"),
/// MaxFrameRate:       pulumi.String("60"),
/// KeyframesMaxDist:   pulumi.String("240"),
/// MaxHeight:          pulumi.String("auto"),
/// MaxWidth:           pulumi.String("auto"),
/// PaddingPolicy:      pulumi.String("Pad"),
/// SizingPolicy:       pulumi.String("Fit"),
/// },
/// VideoCodecOptions: pulumi.StringMap{
/// "Profile":                  pulumi.String("main"),
/// "Level":                    pulumi.String("2.2"),
/// "MaxReferenceFrames":       pulumi.String("3"),
/// "InterlacedMode":           pulumi.String("Progressive"),
/// "ColorSpaceConversionMode": pulumi.String("None"),
/// },
/// VideoWatermarks: elastictranscoder.PresetVideoWatermarkArray{
/// &elastictranscoder.PresetVideoWatermarkArgs{
/// Id:               pulumi.String("Test"),
/// MaxWidth:         pulumi.String("20%"),
/// MaxHeight:        pulumi.String("20%"),
/// SizingPolicy:     pulumi.String("ShrinkToFit"),
/// HorizontalAlign:  pulumi.String("Right"),
/// HorizontalOffset: pulumi.String("10px"),
/// VerticalAlign:    pulumi.String("Bottom"),
/// VerticalOffset:   pulumi.String("10px"),
/// Opacity:          pulumi.String("55.5"),
/// Target:           pulumi.String("Content"),
/// },
/// },
/// Thumbnails: &elastictranscoder.PresetThumbnailsArgs{
/// Format:        pulumi.String("png"),
/// Interval:      pulumi.String("120"),
/// MaxWidth:      pulumi.String("auto"),
/// MaxHeight:     pulumi.String("auto"),
/// PaddingPolicy: pulumi.String("Pad"),
/// SizingPolicy:  pulumi.String("Fit"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var bar = new Preset("bar", PresetArgs.builder()
/// .container("mp4")
/// .description("Sample Preset")
/// .name("sample_preset")
/// .audio(PresetAudioArgs.builder()
/// .audioPackingMode("SingleTrack")
/// .bitRate("96")
/// .channels("2")
/// .codec("AAC")
/// .sampleRate("44100")
/// .build())
/// .audioCodecOptions(PresetAudioCodecOptionsArgs.builder()
/// .profile("AAC-LC")
/// .build())
/// .video(PresetVideoArgs.builder()
/// .bitRate("1600")
/// .codec("H.264")
/// .displayAspectRatio("16:9")
/// .fixedGop("false")
/// .frameRate("auto")
/// .maxFrameRate("60")
/// .keyframesMaxDist("240")
/// .maxHeight("auto")
/// .maxWidth("auto")
/// .paddingPolicy("Pad")
/// .sizingPolicy("Fit")
/// .build())
/// .videoCodecOptions(Map.ofEntries(
/// Map.entry("Profile", "main"),
/// Map.entry("Level", "2.2"),
/// Map.entry("MaxReferenceFrames", "3"),
/// Map.entry("InterlacedMode", "Progressive"),
/// Map.entry("ColorSpaceConversionMode", "None")
/// ))
/// .videoWatermarks(PresetVideoWatermarkArgs.builder()
/// .id("Test")
/// .maxWidth("20%")
/// .maxHeight("20%")
/// .sizingPolicy("ShrinkToFit")
/// .horizontalAlign("Right")
/// .horizontalOffset("10px")
/// .verticalAlign("Bottom")
/// .verticalOffset("10px")
/// .opacity("55.5")
/// .target("Content")
/// .build())
/// .thumbnails(PresetThumbnailsArgs.builder()
/// .format("png")
/// .interval("120")
/// .maxWidth("auto")
/// .maxHeight("auto")
/// .paddingPolicy("Pad")
/// .sizingPolicy("Fit")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: aws:elastictranscoder:Preset
/// properties:
/// container: mp4
/// description: Sample Preset
/// name: sample_preset
/// audio:
/// audioPackingMode: SingleTrack
/// bitRate: 96
/// channels: 2
/// codec: AAC
/// sampleRate: 44100
/// audioCodecOptions:
/// profile: AAC-LC
/// video:
/// bitRate: '1600'
/// codec: H.264
/// displayAspectRatio: 16:9
/// fixedGop: 'false'
/// frameRate: auto
/// maxFrameRate: '60'
/// keyframesMaxDist: 240
/// maxHeight: auto
/// maxWidth: auto
/// paddingPolicy: Pad
/// sizingPolicy: Fit
/// videoCodecOptions:
/// Profile: main
/// Level: '2.2'
/// MaxReferenceFrames: 3
/// InterlacedMode: Progressive
/// ColorSpaceConversionMode: None
/// videoWatermarks:
/// - id: Test
/// maxWidth: 20%
/// maxHeight: 20%
/// sizingPolicy: ShrinkToFit
/// horizontalAlign: Right
/// horizontalOffset: 10px
/// verticalAlign: Bottom
/// verticalOffset: 10px
/// opacity: '55.5'
/// target: Content
/// thumbnails:
/// format: png
/// interval: 120
/// maxWidth: auto
/// maxHeight: auto
/// paddingPolicy: Pad
/// sizingPolicy: Fit
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Elastic Transcoder presets using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:elastictranscoder/preset:Preset basic_preset 1407981661351-cttk8b
/// ```
class Preset extends CustomResource {
  /// Amazon Resource Name (ARN) of the Elastic Transcoder Preset.
  late final Output<String> arn;

  /// Audio parameters object (documented below).
  late final Output<PresetAudio?> audio;

  /// Codec options for the audio parameters (documented below)
  late final Output<PresetAudioCodecOptions> audioCodecOptions;

  /// The container type for the output file. Valid values are <span pulumi-lang-nodejs="`flac`" pulumi-lang-dotnet="`Flac`" pulumi-lang-go="`flac`" pulumi-lang-python="`flac`" pulumi-lang-yaml="`flac`" pulumi-lang-java="`flac`">`flac`</span>, <span pulumi-lang-nodejs="`flv`" pulumi-lang-dotnet="`Flv`" pulumi-lang-go="`flv`" pulumi-lang-python="`flv`" pulumi-lang-yaml="`flv`" pulumi-lang-java="`flv`">`flv`</span>, <span pulumi-lang-nodejs="`fmp4`" pulumi-lang-dotnet="`Fmp4`" pulumi-lang-go="`fmp4`" pulumi-lang-python="`fmp4`" pulumi-lang-yaml="`fmp4`" pulumi-lang-java="`fmp4`">`fmp4`</span>, <span pulumi-lang-nodejs="`gif`" pulumi-lang-dotnet="`Gif`" pulumi-lang-go="`gif`" pulumi-lang-python="`gif`" pulumi-lang-yaml="`gif`" pulumi-lang-java="`gif`">`gif`</span>, <span pulumi-lang-nodejs="`mp3`" pulumi-lang-dotnet="`Mp3`" pulumi-lang-go="`mp3`" pulumi-lang-python="`mp3`" pulumi-lang-yaml="`mp3`" pulumi-lang-java="`mp3`">`mp3`</span>, <span pulumi-lang-nodejs="`mp4`" pulumi-lang-dotnet="`Mp4`" pulumi-lang-go="`mp4`" pulumi-lang-python="`mp4`" pulumi-lang-yaml="`mp4`" pulumi-lang-java="`mp4`">`mp4`</span>, <span pulumi-lang-nodejs="`mpg`" pulumi-lang-dotnet="`Mpg`" pulumi-lang-go="`mpg`" pulumi-lang-python="`mpg`" pulumi-lang-yaml="`mpg`" pulumi-lang-java="`mpg`">`mpg`</span>, <span pulumi-lang-nodejs="`mxf`" pulumi-lang-dotnet="`Mxf`" pulumi-lang-go="`mxf`" pulumi-lang-python="`mxf`" pulumi-lang-yaml="`mxf`" pulumi-lang-java="`mxf`">`mxf`</span>, <span pulumi-lang-nodejs="`oga`" pulumi-lang-dotnet="`Oga`" pulumi-lang-go="`oga`" pulumi-lang-python="`oga`" pulumi-lang-yaml="`oga`" pulumi-lang-java="`oga`">`oga`</span>, <span pulumi-lang-nodejs="`ogg`" pulumi-lang-dotnet="`Ogg`" pulumi-lang-go="`ogg`" pulumi-lang-python="`ogg`" pulumi-lang-yaml="`ogg`" pulumi-lang-java="`ogg`">`ogg`</span>, <span pulumi-lang-nodejs="`ts`" pulumi-lang-dotnet="`Ts`" pulumi-lang-go="`ts`" pulumi-lang-python="`ts`" pulumi-lang-yaml="`ts`" pulumi-lang-java="`ts`">`ts`</span>, and <span pulumi-lang-nodejs="`webm`" pulumi-lang-dotnet="`Webm`" pulumi-lang-go="`webm`" pulumi-lang-python="`webm`" pulumi-lang-yaml="`webm`" pulumi-lang-java="`webm`">`webm`</span>.
  late final Output<String> container;

  /// A description of the preset (maximum 255 characters)
  late final Output<String?> description;

  /// The name of the preset. (maximum 40 characters)
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Thumbnail parameters object (documented below)
  late final Output<PresetThumbnails?> thumbnails;
  late final Output<String> type;

  /// Video parameters object (documented below)
  late final Output<PresetVideo?> video;

  /// Codec options for the video parameters
  ///
  /// See ["Create Preset"](http://docs.aws.amazon.com/elastictranscoder/latest/developerguide/create-preset.html) in the AWS docs for reference.
  late final Output<Map<String, String>?> videoCodecOptions;

  /// Watermark parameters for the video parameters (documented below)
  late final Output<List<PresetVideoWatermark>?> videoWatermarks;

  Preset(
    String name, {
    PresetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elastictranscoder/preset:Preset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.audio = Output.createUnknown<PresetAudio?>();
    this.audioCodecOptions = Output.createUnknown<PresetAudioCodecOptions>();
    this.container = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.thumbnails = Output.createUnknown<PresetThumbnails?>();
    this.type = Output.createUnknown<String>();
    this.video = Output.createUnknown<PresetVideo?>();
    this.videoCodecOptions = Output.createUnknown<Map<String, String>?>();
    this.videoWatermarks = Output.createUnknown<List<PresetVideoWatermark>?>();
  }
}
