// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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

  TextStream({
    this.codec,
    this.displayName,
    this.languageCode,
    this.mapping,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
      map['mapping'] = Input.encodeList<TextMapping, Map<String, dynamic>>(
          mappingValue, (value) => value.toMap());
    }
    return map;
  }

  factory TextStream.fromMap(Map<String, dynamic> map) {
    return TextStream(
      codec: map['codec'] == null ? null : map['codec'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      mapping: map['mapping'] == null
          ? null
          : Input.decodeList<TextMapping>(
              map['mapping'],
              (value) =>
                  TextMapping.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
