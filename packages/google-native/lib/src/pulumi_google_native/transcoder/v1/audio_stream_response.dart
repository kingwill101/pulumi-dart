// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'audio_mapping_response.dart';

/// Audio stream resource.
class AudioStreamResponse {
  /// Audio bitrate in bits per second. Must be between 1 and 10,000,000.
  final int bitrateBps;

  /// Number of audio channels. Must be between 1 and 6. The default is 2.
  final int channelCount;

  /// A list of channel names specifying layout of the audio channels. This only affects the metadata embedded in the container headers, if supported by the specified format. The default is `["fl", "fr"]`. Supported channel names: - `fl` - Front left channel - `fr` - Front right channel - `sl` - Side left channel - `sr` - Side right channel - `fc` - Front center channel - `lfe` - Low frequency
  final List<String> channelLayout;

  /// The codec for this audio stream. The default is `aac`. Supported audio codecs: - `aac` - `aac-he` - `aac-he-v2` - `mp3` - `ac3` - `eac3`
  final String codec;

  /// The name for this particular audio stream that will be added to the HLS/DASH manifest. Not supported in MP4 files.
  final String displayName;

  /// The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not supported in MP4 files.
  final String languageCode;

  /// The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs.
  final List<AudioMappingResponse> mapping;

  /// The audio sample rate in Hertz. The default is 48000 Hertz.
  final int sampleRateHertz;

  AudioStreamResponse({
    required this.bitrateBps,
    required this.channelCount,
    required this.channelLayout,
    required this.codec,
    required this.displayName,
    required this.languageCode,
    required this.mapping,
    required this.sampleRateHertz,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bitrateBps'] = bitrateBps;
    map['channelCount'] = channelCount;
    map['channelLayout'] = channelLayout;
    map['codec'] = codec;
    map['displayName'] = displayName;
    map['languageCode'] = languageCode;
    map['mapping'] =
        Input.encodeList<AudioMappingResponse, Map<String, dynamic>>(
            mapping, (value) => value.toMap());
    map['sampleRateHertz'] = sampleRateHertz;
    return map;
  }

  factory AudioStreamResponse.fromMap(Map<String, dynamic> map) {
    return AudioStreamResponse(
      bitrateBps: map['bitrateBps'] as int,
      channelCount: map['channelCount'] as int,
      channelLayout: (map['channelLayout'] as List).cast<String>(),
      codec: map['codec'] as String,
      displayName: map['displayName'] as String,
      languageCode: map['languageCode'] as String,
      mapping: Input.decodeList<AudioMappingResponse>(
          map['mapping'],
          (value) => AudioMappingResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      sampleRateHertz: map['sampleRateHertz'] as int,
    );
  }
}
