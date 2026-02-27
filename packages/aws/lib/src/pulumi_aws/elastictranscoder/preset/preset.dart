import 'package:pulumi/pulumi.dart' as pulumi;
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
  late final pulumi.Output<List<PresetVideoWatermark>?> videoWatermarks;

  Preset(
    String name, {
    PresetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elastictranscoder/preset:Preset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.audio = registerOutput<PresetAudio?>('audio');
    this.audioCodecOptions =
        registerOutput<PresetAudioCodecOptions>('audioCodecOptions');
    this.container = registerOutput<String>('container');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.thumbnails = registerOutput<PresetThumbnails?>('thumbnails');
    this.type = registerOutput<String>('type');
    this.video = registerOutput<PresetVideo?>('video');
    this.videoCodecOptions =
        registerOutput<Map<String, String>?>('videoCodecOptions');
    this.videoWatermarks =
        registerOutput<List<PresetVideoWatermark>?>('videoWatermarks');
  }
}
