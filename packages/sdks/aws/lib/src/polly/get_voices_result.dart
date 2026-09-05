// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_voices_voice.dart';

/// Result data returned by getVoices.
class GetVoicesResult {
  final String? engine;
  /// Amazon Polly assigned voice ID.
  final String? id;
  final bool? includeAdditionalLanguageCodes;
  /// Language code of the voice.
  final String? languageCode;
  final String? region;
  /// List of voices with their properties. See `voices` Attribute Reference below.
  final List<GetVoicesVoice>? voices;

  /// Creates a new [GetVoicesResult].
  /// [engine] Optional.
  /// [id] Amazon Polly assigned voice ID.
  /// [includeAdditionalLanguageCodes] Optional.
  /// [languageCode] Language code of the voice.
  /// [region] Optional.
  /// [voices] List of voices with their properties. See `voices` Attribute Reference below.
  const GetVoicesResult({
    this.engine,
    this.id,
    this.includeAdditionalLanguageCodes,
    this.languageCode,
    this.region,
    this.voices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'id': ?id,
      'includeAdditionalLanguageCodes': ?includeAdditionalLanguageCodes,
      'languageCode': ?languageCode,
      'region': ?region,
      'voices': ?(() { final guardedValue = voices; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVoicesVoice, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVoicesResult.fromMap(Map<String, dynamic> map) {
    return GetVoicesResult(
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      includeAdditionalLanguageCodes: (() { final guardedValue = map['includeAdditionalLanguageCodes']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      languageCode: (() { final guardedValue = map['languageCode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      voices: (() { final guardedValue = map['voices']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVoicesVoice>(guardedValue, (value) => GetVoicesVoice.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
