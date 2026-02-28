// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_voices_voice.dart';

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

  /// Creates a new [GetVoicesResult].
  /// [engine] Optional.
  /// [id] Amazon Polly assigned voice ID.
  /// [includeAdditionalLanguageCodes] Optional.
  /// [languageCode] Language code of the voice.
  /// [region] Required.
  /// [voices] List of voices with their properties. See `voices` Attribute Reference below.
  GetVoicesResult({
    this.engine,
    required this.id,
    this.includeAdditionalLanguageCodes,
    this.languageCode,
    required this.region,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'id': id,
      'includeAdditionalLanguageCodes': ?includeAdditionalLanguageCodes,
      'languageCode': ?languageCode,
      'region': region,
      'voices': ?voices == null ? null : pulumi.Input.encodeList<GetVoicesVoice, Map<String, dynamic>>(voices!, (value) => value.toMap()),
    };
  }

  factory GetVoicesResult.fromMap(Map<String, dynamic> map) {
    return GetVoicesResult(
      engine: map['engine'] == null ? null : map['engine'] as String,
      id: map['id'] as String,
      includeAdditionalLanguageCodes: map['includeAdditionalLanguageCodes'] == null ? null : map['includeAdditionalLanguageCodes'] as bool,
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
      region: map['region'] as String,
      voices: map['voices'] == null ? null : pulumi.Input.decodeList<GetVoicesVoice>(map['voices'], (value) => GetVoicesVoice.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

