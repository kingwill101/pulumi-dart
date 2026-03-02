// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_voices_voice.dart';

/// {@template pulumi_polly_get_voices_get_voices_args_doc}
/// Arguments for getVoices.
/// {@endtemplate}
/// {@macro pulumi_polly_get_voices_get_voices_args_doc}
class GetVoicesArgs {
  /// Engine used by Amazon Polly when processing input text for speech synthesis. Valid values are `standard`, `neural`, and `long-form`.
  final pulumi.Input<String>? engine;
  /// Whether to return any bilingual voices that use the specified language as an additional language.
  final pulumi.Input<bool>? includeAdditionalLanguageCodes;
  /// Language identification tag for filtering the list of voices returned. If not specified, all available voices are returned.
  final pulumi.Input<String>? languageCode;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of voices with their properties. See `voices` Attribute Reference below.
  final pulumi.Input<List<GetVoicesVoice>>? voices;

  /// Creates a new [GetVoicesArgs].
  /// [engine] Engine used by Amazon Polly when processing input text for speech synthesis. Valid values are `standard`, `neural`, and `long-form`.
  /// [includeAdditionalLanguageCodes] Whether to return any bilingual voices that use the specified language as an additional language.
  /// [languageCode] Language identification tag for filtering the list of voices returned. If not specified, all available voices are returned.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [voices] List of voices with their properties. See `voices` Attribute Reference below.
  GetVoicesArgs({
    this.engine,
    this.includeAdditionalLanguageCodes,
    this.languageCode,
    this.region,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'includeAdditionalLanguageCodes': ?includeAdditionalLanguageCodes,
      'languageCode': ?languageCode,
      'region': ?region,
      'voices': ?pulumi.Input.mapOptionalInputValue<List<GetVoicesVoice>, List<Map<String, dynamic>>>(voices, (value) => pulumi.Input.encodeList<GetVoicesVoice, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVoicesArgs.fromMap(Map<String, dynamic> map) {
    return GetVoicesArgs(
      engine: map['engine'] == null ? null : ((map['engine'] as String).input()).input(),
      includeAdditionalLanguageCodes: map['includeAdditionalLanguageCodes'] == null ? null : ((map['includeAdditionalLanguageCodes'] as bool).input()).input(),
      languageCode: map['languageCode'] == null ? null : ((map['languageCode'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      voices: map['voices'] == null ? null : ((pulumi.Input.decodeList<GetVoicesVoice>(map['voices']!, (value) => GetVoicesVoice.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

