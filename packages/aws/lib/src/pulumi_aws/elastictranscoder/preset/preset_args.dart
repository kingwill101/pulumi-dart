// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../preset_audio/preset_audio.dart';
import '../preset_audio_codec_options/preset_audio_codec_options.dart';
import '../preset_thumbnails/preset_thumbnails.dart';
import '../preset_video/preset_video.dart';
import '../preset_video_watermark/preset_video_watermark.dart';

/// The set of arguments for Preset.
class PresetArgs {
  /// Audio parameters object (documented below).
  final pulumi.Input<PresetAudio>? audio;

  /// Codec options for the audio parameters (documented below)
  final pulumi.Input<PresetAudioCodecOptions>? audioCodecOptions;

  /// The container type for the output file. Valid values are `flac`, `flv`, `fmp4`, `gif`, `mp3`, `mp4`, `mpg`, `mxf`, `oga`, `ogg`, `ts`, and `webm`.
  final pulumi.Input<String> container;

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

  PresetArgs({
    this.audio,
    this.audioCodecOptions,
    required this.container,
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
    final map = <String, dynamic>{};
    final audioValue = audio;
    if (audioValue != null) {
      map['audio'] =
          pulumi.Input.mapOptionalInputValue<PresetAudio, Map<String, dynamic>>(
              audioValue, (value) => value.toMap());
    }
    final audioCodecOptionsValue = audioCodecOptions;
    if (audioCodecOptionsValue != null) {
      map['audioCodecOptions'] = pulumi.Input.mapOptionalInputValue<
              PresetAudioCodecOptions, Map<String, dynamic>>(
          audioCodecOptionsValue, (value) => value.toMap());
    }
    map['container'] = container;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final thumbnailsValue = thumbnails;
    if (thumbnailsValue != null) {
      map['thumbnails'] = pulumi.Input.mapOptionalInputValue<PresetThumbnails,
          Map<String, dynamic>>(thumbnailsValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final videoValue = video;
    if (videoValue != null) {
      map['video'] =
          pulumi.Input.mapOptionalInputValue<PresetVideo, Map<String, dynamic>>(
              videoValue, (value) => value.toMap());
    }
    final videoCodecOptionsValue = videoCodecOptions;
    if (videoCodecOptionsValue != null) {
      map['videoCodecOptions'] = videoCodecOptionsValue;
    }
    final videoWatermarksValue = videoWatermarks;
    if (videoWatermarksValue != null) {
      map['videoWatermarks'] = pulumi.Input.mapOptionalInputValue<
              List<PresetVideoWatermark>, List<Map<String, dynamic>>>(
          videoWatermarksValue,
          (value) => pulumi.Input.encodeList<PresetVideoWatermark,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory PresetArgs.fromMap(Map<String, dynamic> map) {
    return PresetArgs(
      audio: pulumi.Input.asOptionalInput<PresetAudio>(map['audio']),
      audioCodecOptions: pulumi.Input.asOptionalInput<PresetAudioCodecOptions>(
          map['audioCodecOptions']),
      container: pulumi.Input.asInput<String>(map['container']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      thumbnails:
          pulumi.Input.asOptionalInput<PresetThumbnails>(map['thumbnails']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
      video: pulumi.Input.asOptionalInput<PresetVideo>(map['video']),
      videoCodecOptions: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['videoCodecOptions']),
      videoWatermarks: pulumi.Input.asOptionalInput<List<PresetVideoWatermark>>(
          map['videoWatermarks']),
    );
  }
}
