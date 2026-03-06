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
  const PresetState({
    this.arn,
    this.audio,
    this.audioCodecOptions,
    this.container,
    this.description,
    this.name,
    this.region,
    this.thumbnails,
    this.type,
    this.video,
    this.videoCodecOptions,
    this.videoWatermarks,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audio: (() { final guardedValue = map['audio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PresetAudio.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      audioCodecOptions: (() { final guardedValue = map['audioCodecOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PresetAudioCodecOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbnails: (() { final guardedValue = map['thumbnails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PresetThumbnails.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      video: (() { final guardedValue = map['video']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PresetVideo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      videoCodecOptions: (() { final guardedValue = map['videoCodecOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      videoWatermarks: (() { final guardedValue = map['videoWatermarks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PresetVideoWatermark>(guardedValue, (value) => PresetVideoWatermark.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

