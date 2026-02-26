// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../preset_audio/preset_audio.dart';
import '../preset_audio_codec_options/preset_audio_codec_options.dart';
import '../preset_thumbnails/preset_thumbnails.dart';
import '../preset_video/preset_video.dart';
import '../preset_video_watermark/preset_video_watermark.dart';

/// The set of arguments for Preset.
class PresetArgs {
  /// Audio parameters object (documented below).
  final Input<PresetAudio>? audio;

  /// Codec options for the audio parameters (documented below)
  final Input<PresetAudioCodecOptions>? audioCodecOptions;

  /// The container type for the output file. Valid values are <span pulumi-lang-nodejs="`flac`" pulumi-lang-dotnet="`Flac`" pulumi-lang-go="`flac`" pulumi-lang-python="`flac`" pulumi-lang-yaml="`flac`" pulumi-lang-java="`flac`">`flac`</span>, <span pulumi-lang-nodejs="`flv`" pulumi-lang-dotnet="`Flv`" pulumi-lang-go="`flv`" pulumi-lang-python="`flv`" pulumi-lang-yaml="`flv`" pulumi-lang-java="`flv`">`flv`</span>, <span pulumi-lang-nodejs="`fmp4`" pulumi-lang-dotnet="`Fmp4`" pulumi-lang-go="`fmp4`" pulumi-lang-python="`fmp4`" pulumi-lang-yaml="`fmp4`" pulumi-lang-java="`fmp4`">`fmp4`</span>, <span pulumi-lang-nodejs="`gif`" pulumi-lang-dotnet="`Gif`" pulumi-lang-go="`gif`" pulumi-lang-python="`gif`" pulumi-lang-yaml="`gif`" pulumi-lang-java="`gif`">`gif`</span>, <span pulumi-lang-nodejs="`mp3`" pulumi-lang-dotnet="`Mp3`" pulumi-lang-go="`mp3`" pulumi-lang-python="`mp3`" pulumi-lang-yaml="`mp3`" pulumi-lang-java="`mp3`">`mp3`</span>, <span pulumi-lang-nodejs="`mp4`" pulumi-lang-dotnet="`Mp4`" pulumi-lang-go="`mp4`" pulumi-lang-python="`mp4`" pulumi-lang-yaml="`mp4`" pulumi-lang-java="`mp4`">`mp4`</span>, <span pulumi-lang-nodejs="`mpg`" pulumi-lang-dotnet="`Mpg`" pulumi-lang-go="`mpg`" pulumi-lang-python="`mpg`" pulumi-lang-yaml="`mpg`" pulumi-lang-java="`mpg`">`mpg`</span>, <span pulumi-lang-nodejs="`mxf`" pulumi-lang-dotnet="`Mxf`" pulumi-lang-go="`mxf`" pulumi-lang-python="`mxf`" pulumi-lang-yaml="`mxf`" pulumi-lang-java="`mxf`">`mxf`</span>, <span pulumi-lang-nodejs="`oga`" pulumi-lang-dotnet="`Oga`" pulumi-lang-go="`oga`" pulumi-lang-python="`oga`" pulumi-lang-yaml="`oga`" pulumi-lang-java="`oga`">`oga`</span>, <span pulumi-lang-nodejs="`ogg`" pulumi-lang-dotnet="`Ogg`" pulumi-lang-go="`ogg`" pulumi-lang-python="`ogg`" pulumi-lang-yaml="`ogg`" pulumi-lang-java="`ogg`">`ogg`</span>, <span pulumi-lang-nodejs="`ts`" pulumi-lang-dotnet="`Ts`" pulumi-lang-go="`ts`" pulumi-lang-python="`ts`" pulumi-lang-yaml="`ts`" pulumi-lang-java="`ts`">`ts`</span>, and <span pulumi-lang-nodejs="`webm`" pulumi-lang-dotnet="`Webm`" pulumi-lang-go="`webm`" pulumi-lang-python="`webm`" pulumi-lang-yaml="`webm`" pulumi-lang-java="`webm`">`webm`</span>.
  final Input<String> container;

  /// A description of the preset (maximum 255 characters)
  final Input<String>? description;

  /// The name of the preset. (maximum 40 characters)
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Thumbnail parameters object (documented below)
  final Input<PresetThumbnails>? thumbnails;
  final Input<String>? type;

  /// Video parameters object (documented below)
  final Input<PresetVideo>? video;

  /// Codec options for the video parameters
  ///
  /// See ["Create Preset"](http://docs.aws.amazon.com/elastictranscoder/latest/developerguide/create-preset.html) in the AWS docs for reference.
  final Input<Map<String, String>>? videoCodecOptions;

  /// Watermark parameters for the video parameters (documented below)
  final Input<List<PresetVideoWatermark>>? videoWatermarks;

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
          Input.mapOptionalInputValue<PresetAudio, Map<String, dynamic>>(
              audioValue, (value) => value.toMap());
    }
    final audioCodecOptionsValue = audioCodecOptions;
    if (audioCodecOptionsValue != null) {
      map['audioCodecOptions'] = Input.mapOptionalInputValue<
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
      map['thumbnails'] =
          Input.mapOptionalInputValue<PresetThumbnails, Map<String, dynamic>>(
              thumbnailsValue, (value) => value.toMap());
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final videoValue = video;
    if (videoValue != null) {
      map['video'] =
          Input.mapOptionalInputValue<PresetVideo, Map<String, dynamic>>(
              videoValue, (value) => value.toMap());
    }
    final videoCodecOptionsValue = videoCodecOptions;
    if (videoCodecOptionsValue != null) {
      map['videoCodecOptions'] = videoCodecOptionsValue;
    }
    final videoWatermarksValue = videoWatermarks;
    if (videoWatermarksValue != null) {
      map['videoWatermarks'] = Input.mapOptionalInputValue<
              List<PresetVideoWatermark>, List<Map<String, dynamic>>>(
          videoWatermarksValue,
          (value) =>
              Input.encodeList<PresetVideoWatermark, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory PresetArgs.fromMap(Map<String, dynamic> map) {
    return PresetArgs(
      audio: Input.asOptionalInput<PresetAudio>(map['audio']),
      audioCodecOptions: Input.asOptionalInput<PresetAudioCodecOptions>(
          map['audioCodecOptions']),
      container: Input.asInput<String>(map['container']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      thumbnails: Input.asOptionalInput<PresetThumbnails>(map['thumbnails']),
      type: Input.asOptionalInput<String>(map['type']),
      video: Input.asOptionalInput<PresetVideo>(map['video']),
      videoCodecOptions:
          Input.asOptionalInput<Map<String, String>>(map['videoCodecOptions']),
      videoWatermarks: Input.asOptionalInput<List<PresetVideoWatermark>>(
          map['videoWatermarks']),
    );
  }
}
