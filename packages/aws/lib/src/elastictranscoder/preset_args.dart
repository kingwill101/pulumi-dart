// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'preset_audio.dart';
import 'preset_audio_codec_options.dart';
import 'preset_thumbnails.dart';
import 'preset_video.dart';
import 'preset_video_watermark.dart';

/// {@template pulumi_elastictranscoder_preset_preset_args_doc}
/// The set of arguments for Preset.
/// {@endtemplate}
/// {@macro pulumi_elastictranscoder_preset_preset_args_doc}
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

  /// Creates a new [PresetArgs].
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
  PresetArgs({
    PresetAudio? audio,
    PresetAudioCodecOptions? audioCodecOptions,
    required String container,
    String? description,
    String? name,
    String? region,
    PresetThumbnails? thumbnails,
    String? type,
    PresetVideo? video,
    Map<String, String>? videoCodecOptions,
    List<PresetVideoWatermark>? videoWatermarks,
  })  : audio = pulumi.Input.asOptionalInput<PresetAudio>(audio),
        audioCodecOptions =
            pulumi.Input.asOptionalInput<PresetAudioCodecOptions>(
                audioCodecOptions),
        container = pulumi.Input.asInput<String>(container),
        description = pulumi.Input.asOptionalInput<String>(description),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        thumbnails = pulumi.Input.asOptionalInput<PresetThumbnails>(thumbnails),
        type = pulumi.Input.asOptionalInput<String>(type),
        video = pulumi.Input.asOptionalInput<PresetVideo>(video),
        videoCodecOptions = pulumi.Input.asOptionalInput<Map<String, String>>(
            videoCodecOptions),
        videoWatermarks =
            pulumi.Input.asOptionalInput<List<PresetVideoWatermark>>(
                videoWatermarks);

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
      audio: map['audio'] == null
          ? null
          : PresetAudio.fromMap((map['audio'] as Map).cast<String, dynamic>()),
      audioCodecOptions: map['audioCodecOptions'] == null
          ? null
          : PresetAudioCodecOptions.fromMap(
              (map['audioCodecOptions'] as Map).cast<String, dynamic>()),
      container: map['container'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      thumbnails: map['thumbnails'] == null
          ? null
          : PresetThumbnails.fromMap(
              (map['thumbnails'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      video: map['video'] == null
          ? null
          : PresetVideo.fromMap((map['video'] as Map).cast<String, dynamic>()),
      videoCodecOptions: map['videoCodecOptions'] == null
          ? null
          : (map['videoCodecOptions'] as Map).cast<String, String>(),
      videoWatermarks: map['videoWatermarks'] == null
          ? null
          : pulumi.Input.decodeList<PresetVideoWatermark>(
              map['videoWatermarks'],
              (value) => PresetVideoWatermark.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
