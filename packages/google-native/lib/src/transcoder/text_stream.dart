// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'text_mapping.dart';

/// Encoding of a text stream. For example, closed captions or subtitles.
class TextStream {
  /// The codec for this text stream. The default is `webvtt`. Supported text codecs: - `srt` - `ttml` - `cea608` - `cea708` - `webvtt`
  final String? codec;
  /// The name for this particular text stream that will be added to the HLS/DASH manifest. Not supported in MP4 files.
  final String? displayName;
  /// The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not supported in MP4 files.
  final String? languageCode;
  /// The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs.
  final List<TextMapping>? mapping;

  /// Creates a new [TextStream].
  /// [codec] The codec for this text stream. The default is `webvtt`. Supported text codecs: - `srt` - `ttml` - `cea608` - `cea708` - `webvtt`
  /// [displayName] The name for this particular text stream that will be added to the HLS/DASH manifest. Not supported in MP4 files.
  /// [languageCode] The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information, see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not supported in MP4 files.
  /// [mapping] The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs.
  TextStream({
    this.codec,
    this.displayName,
    this.languageCode,
    this.mapping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codec': ?codec,
      'displayName': ?displayName,
      'languageCode': ?languageCode,
      'mapping': ?mapping == null ? null : pulumi.Input.encodeList<TextMapping, Map<String, dynamic>>(mapping!, (value) => value.toMap()),
    };
  }

  factory TextStream.fromMap(Map<String, dynamic> map) {
    return TextStream(
      codec: map['codec'] == null ? null : map['codec'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
      mapping: map['mapping'] == null ? null : pulumi.Input.decodeList<TextMapping>(map['mapping'], (value) => TextMapping.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

