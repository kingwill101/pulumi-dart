// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audio_mapping.dart';

/// Audio stream resource.
class AudioStream {
  /// Audio bitrate in bits per second. Must be between 1 and 10,000,000.
  final int bitrateBps;

  /// Number of audio channels. Must be between 1 and 6. The default is 2.
  final int? channelCount;

  /// A list of channel names specifying layout of the audio channels. This only affects the metadata embedded in the container headers, if supported by the specified format. The default is `["fl", "fr"]`. Supported channel names: - `fl` - Front left channel - `fr` - Front right channel - `sl` - Side left channel - `sr` - Side right channel - `fc` - Front center channel - `lfe` - Low frequency
  final List<String>? channelLayout;

  /// The codec for this audio stream. The default is `aac`. Supported audio codecs: - `aac` - `aac-he` - `aac-he-v2` - `mp3` - `ac3` - `eac3`
  final String? codec;

  /// The name for this particular audio stream that will be added to the HLS/DASH manifest. Not supported in MP4 files.
  final String? displayName;

  /// The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not supported in MP4 files.
  final String? languageCode;

  /// The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs.
  final List<AudioMapping>? mapping;

  /// The audio sample rate in Hertz. The default is 48000 Hertz.
  final int? sampleRateHertz;

  /// Creates a new [AudioStream].
  /// [bitrateBps] Audio bitrate in bits per second. Must be between 1 and 10,000,000.
  /// [channelCount] Number of audio channels. Must be between 1 and 6. The default is 2.
  /// [channelLayout] A list of channel names specifying layout of the audio channels. This only affects the metadata embedded in the container headers, if supported by the specified format. The default is `["fl", "fr"]`. Supported channel names: - `fl` - Front left channel - `fr` - Front right channel - `sl` - Side left channel - `sr` - Side right channel - `fc` - Front center channel - `lfe` - Low frequency
  /// [codec] The codec for this audio stream. The default is `aac`. Supported audio codecs: - `aac` - `aac-he` - `aac-he-v2` - `mp3` - `ac3` - `eac3`
  /// [displayName] The name for this particular audio stream that will be added to the HLS/DASH manifest. Not supported in MP4 files.
  /// [languageCode] The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not supported in MP4 files.
  /// [mapping] The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs.
  /// [sampleRateHertz] The audio sample rate in Hertz. The default is 48000 Hertz.
  AudioStream({
    required this.bitrateBps,
    this.channelCount,
    this.channelLayout,
    this.codec,
    this.displayName,
    this.languageCode,
    this.mapping,
    this.sampleRateHertz,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bitrateBps'] = bitrateBps;
    final channelCountValue = channelCount;
    if (channelCountValue != null) {
      map['channelCount'] = channelCountValue;
    }
    final channelLayoutValue = channelLayout;
    if (channelLayoutValue != null) {
      map['channelLayout'] = channelLayoutValue;
    }
    final codecValue = codec;
    if (codecValue != null) {
      map['codec'] = codecValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final mappingValue = mapping;
    if (mappingValue != null) {
      map['mapping'] =
          pulumi.Input.encodeList<AudioMapping, Map<String, dynamic>>(
              mappingValue, (value) => value.toMap());
    }
    final sampleRateHertzValue = sampleRateHertz;
    if (sampleRateHertzValue != null) {
      map['sampleRateHertz'] = sampleRateHertzValue;
    }
    return map;
  }

  factory AudioStream.fromMap(Map<String, dynamic> map) {
    return AudioStream(
      bitrateBps: map['bitrateBps'] as int,
      channelCount:
          map['channelCount'] == null ? null : map['channelCount'] as int,
      channelLayout: map['channelLayout'] == null
          ? null
          : (map['channelLayout'] as List).cast<String>(),
      codec: map['codec'] == null ? null : map['codec'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      mapping: map['mapping'] == null
          ? null
          : pulumi.Input.decodeList<AudioMapping>(
              map['mapping'],
              (value) =>
                  AudioMapping.fromMap((value as Map).cast<String, dynamic>())),
      sampleRateHertz:
          map['sampleRateHertz'] == null ? null : map['sampleRateHertz'] as int,
    );
  }
}
