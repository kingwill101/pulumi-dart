// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preset_audio.dart';
import 'preset_audio_codec_options.dart';
import 'preset_thumbnails.dart';
import 'preset_video.dart';
import 'preset_video_watermark.dart';

/// Input properties used for looking up and filtering Preset resources.
class PresetState {
  /// Amazon Resource Name (ARN) of the Elastic Transcoder Preset.
  final pulumi.Input<String>? arn;
  /// Audio parameters object (documented below).
  final pulumi.Input<PresetAudio>? audio;
  /// Codec options for the audio parameters (documented below)
  final pulumi.Input<PresetAudioCodecOptions>? audioCodecOptions;
  /// The container type for the output file. Valid values are `flac`, `flv`, `fmp4`, `gif`, `mp3`, `mp4`, `mpg`, `mxf`, `oga`, `ogg`, `ts`, and `webm`.
  final pulumi.Input<String>? container;
  /// A description of the preset (maximum 255 characters)
  final pulumi.Input<String>? description;
  /// The name of the preset. (maximum 40 characters)
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Thumbnail parameters object (documented below)
  final pulumi.Input<PresetThumbnails>? thumbnails;
  final pulumi.Input<String>? type;
  /// Video parameters object (documented below)
  final pulumi.Input<PresetVideo>? video;
  /// Codec options for the video parameters
  ///
  /// See ["Create Preset"](http://docs.aws.amazon.com/elastictranscoder/latest/developerguide/create-preset.html) in the AWS docs for reference.
  final pulumi.Input<Map<String, String>>? videoCodecOptions;
  /// Watermark parameters for the video parameters (documented below)
  final pulumi.Input<List<PresetVideoWatermark>>? videoWatermarks;

  /// Creates a new [PresetState].
  /// [arn] Amazon Resource Name (ARN) of the Elastic Transcoder Preset.
  /// [audio] Audio parameters object (documented below).
  /// [audioCodecOptions] Codec options for the audio parameters (documented below)
  /// [container] The container type for the output file. Valid values are `flac`, `flv`, `fmp4`, `gif`, `mp3`, `mp4`, `mpg`, `mxf`, `oga`, `ogg`, `ts`, and `webm`.
  /// [description] A description of the preset (maximum 255 characters)
  /// [name] The name of the preset. (maximum 40 characters)
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [thumbnails] Thumbnail parameters object (documented below)
  /// [type] Optional.
  /// [video] Video parameters object (documented below)
  /// [videoCodecOptions] Codec options for the video parameters
  /// [videoWatermarks] Watermark parameters for the video parameters (documented below)
  PresetState({
    pulumi.Output<String>? arn,
    pulumi.Output<PresetAudio>? audio,
    pulumi.Output<PresetAudioCodecOptions>? audioCodecOptions,
    pulumi.Output<String>? container,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<PresetThumbnails>? thumbnails,
    pulumi.Output<String>? type,
    pulumi.Output<PresetVideo>? video,
    pulumi.Output<Map<String, String>>? videoCodecOptions,
    pulumi.Output<List<PresetVideoWatermark>>? videoWatermarks,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      audio = pulumi.Input.asOptionalInput<PresetAudio>(audio),
      audioCodecOptions = pulumi.Input.asOptionalInput<PresetAudioCodecOptions>(audioCodecOptions),
      container = pulumi.Input.asOptionalInput<String>(container),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      thumbnails = pulumi.Input.asOptionalInput<PresetThumbnails>(thumbnails),
      type = pulumi.Input.asOptionalInput<String>(type),
      video = pulumi.Input.asOptionalInput<PresetVideo>(video),
      videoCodecOptions = pulumi.Input.asOptionalInput<Map<String, String>>(videoCodecOptions),
      videoWatermarks = pulumi.Input.asOptionalInput<List<PresetVideoWatermark>>(videoWatermarks);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'audio': ?pulumi.Input.mapOptionalInputValue<PresetAudio, Map<String, dynamic>>(audio, (value) => value.toMap()),
      'audioCodecOptions': ?pulumi.Input.mapOptionalInputValue<PresetAudioCodecOptions, Map<String, dynamic>>(audioCodecOptions, (value) => value.toMap()),
      'container': ?container,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'thumbnails': ?pulumi.Input.mapOptionalInputValue<PresetThumbnails, Map<String, dynamic>>(thumbnails, (value) => value.toMap()),
      'type': ?type,
      'video': ?pulumi.Input.mapOptionalInputValue<PresetVideo, Map<String, dynamic>>(video, (value) => value.toMap()),
      'videoCodecOptions': ?videoCodecOptions,
      'videoWatermarks': ?pulumi.Input.mapOptionalInputValue<List<PresetVideoWatermark>, List<Map<String, dynamic>>>(videoWatermarks, (value) => pulumi.Input.encodeList<PresetVideoWatermark, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PresetState.fromMap(Map<String, dynamic> map) {
    return PresetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      audio: map['audio'] == null ? null : pulumi.Output.create<PresetAudio>(PresetAudio.fromMap((map['audio'] as Map).cast<String, dynamic>())),
      audioCodecOptions: map['audioCodecOptions'] == null ? null : pulumi.Output.create<PresetAudioCodecOptions>(PresetAudioCodecOptions.fromMap((map['audioCodecOptions'] as Map).cast<String, dynamic>())),
      container: map['container'] == null ? null : pulumi.Output.create<String>(map['container'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      thumbnails: map['thumbnails'] == null ? null : pulumi.Output.create<PresetThumbnails>(PresetThumbnails.fromMap((map['thumbnails'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      video: map['video'] == null ? null : pulumi.Output.create<PresetVideo>(PresetVideo.fromMap((map['video'] as Map).cast<String, dynamic>())),
      videoCodecOptions: map['videoCodecOptions'] == null ? null : pulumi.Output.create<Map<String, String>>((map['videoCodecOptions'] as Map).cast<String, String>()),
      videoWatermarks: map['videoWatermarks'] == null ? null : pulumi.Output.create<List<PresetVideoWatermark>>(pulumi.Input.decodeList<PresetVideoWatermark>(map['videoWatermarks'], (value) => PresetVideoWatermark.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

