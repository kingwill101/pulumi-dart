// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_voices_voice/get_voices_voice.dart';

/// Arguments for getVoices.
class GetVoicesArgs {
  /// Engine used by Amazon Polly when processing input text for speech synthesis. Valid values are `standard`, `neural`, and `long-form`.
  final Input<String>? engine;

  /// Whether to return any bilingual voices that use the specified language as an additional language.
  final Input<bool>? includeAdditionalLanguageCodes;

  /// Language identification tag for filtering the list of voices returned. If not specified, all available voices are returned.
  final Input<String>? languageCode;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of voices with their properties. See `voices` Attribute Reference below.
  final Input<List<GetVoicesVoice>>? voices;

  GetVoicesArgs({
    this.engine,
    this.includeAdditionalLanguageCodes,
    this.languageCode,
    this.region,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final includeAdditionalLanguageCodesValue = includeAdditionalLanguageCodes;
    if (includeAdditionalLanguageCodesValue != null) {
      map['includeAdditionalLanguageCodes'] =
          includeAdditionalLanguageCodesValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final voicesValue = voices;
    if (voicesValue != null) {
      map['voices'] = Input.mapOptionalInputValue<List<GetVoicesVoice>,
              List<Map<String, dynamic>>>(
          voicesValue,
          (value) => Input.encodeList<GetVoicesVoice, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory GetVoicesArgs.fromMap(Map<String, dynamic> map) {
    return GetVoicesArgs(
      engine: Input.asOptionalInput<String>(map['engine']),
      includeAdditionalLanguageCodes:
          Input.asOptionalInput<bool>(map['includeAdditionalLanguageCodes']),
      languageCode: Input.asOptionalInput<String>(map['languageCode']),
      region: Input.asOptionalInput<String>(map['region']),
      voices: Input.asOptionalInput<List<GetVoicesVoice>>(map['voices']),
    );
  }
}
