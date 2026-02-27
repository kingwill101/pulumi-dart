// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_voices_voice/get_voices_voice.dart';

/// Result data returned by getVoices.
class GetVoicesResult {
  final String? engine;

  /// Amazon Polly assigned voice ID.
  final String id;
  final bool? includeAdditionalLanguageCodes;

  /// Language code of the voice.
  final String? languageCode;
  final String region;

  /// List of voices with their properties. See `voices` Attribute Reference below.
  final List<GetVoicesVoice>? voices;

  GetVoicesResult({
    this.engine,
    required this.id,
    this.includeAdditionalLanguageCodes,
    this.languageCode,
    required this.region,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    map['id'] = id;
    final includeAdditionalLanguageCodesValue = includeAdditionalLanguageCodes;
    if (includeAdditionalLanguageCodesValue != null) {
      map['includeAdditionalLanguageCodes'] =
          includeAdditionalLanguageCodesValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    map['region'] = region;
    final voicesValue = voices;
    if (voicesValue != null) {
      map['voices'] = Input.encodeList<GetVoicesVoice, Map<String, dynamic>>(
          voicesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetVoicesResult.fromMap(Map<String, dynamic> map) {
    return GetVoicesResult(
      engine: map['engine'] == null ? null : map['engine'] as String,
      id: map['id'] as String,
      includeAdditionalLanguageCodes:
          map['includeAdditionalLanguageCodes'] == null
              ? null
              : map['includeAdditionalLanguageCodes'] as bool,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      region: map['region'] as String,
      voices: map['voices'] == null
          ? null
          : Input.decodeList<GetVoicesVoice>(
              map['voices'],
              (value) => GetVoicesVoice.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
