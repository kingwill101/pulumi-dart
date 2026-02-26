// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cx_generative_settings_generative_safety_settings_banned_phrase/cx_generative_settings_generative_safety_settings_banned_phrase.dart';

class CxGenerativeSettingsGenerativeSafetySettings {
  /// Banned phrases for generated text.
  /// Structure is documented below.
  final List<CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase>?
      bannedPhrases;

  /// Optional. Default phrase match strategy for banned phrases.
  /// See [PhraseMatchStrategy](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/GenerativeSettings#phrasematchstrategy) for valid values.
  final String? defaultBannedPhraseMatchStrategy;

  CxGenerativeSettingsGenerativeSafetySettings({
    this.bannedPhrases,
    this.defaultBannedPhraseMatchStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bannedPhrasesValue = bannedPhrases;
    if (bannedPhrasesValue != null) {
      map['bannedPhrases'] = Input.encodeList<
          CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase,
          Map<String, dynamic>>(bannedPhrasesValue, (value) => value.toMap());
    }
    final defaultBannedPhraseMatchStrategyValue =
        defaultBannedPhraseMatchStrategy;
    if (defaultBannedPhraseMatchStrategyValue != null) {
      map['defaultBannedPhraseMatchStrategy'] =
          defaultBannedPhraseMatchStrategyValue;
    }
    return map;
  }

  factory CxGenerativeSettingsGenerativeSafetySettings.fromMap(
      Map<String, dynamic> map) {
    return CxGenerativeSettingsGenerativeSafetySettings(
      bannedPhrases: map['bannedPhrases'] == null
          ? null
          : Input.decodeList<
                  CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase>(
              map['bannedPhrases'],
              (value) =>
                  CxGenerativeSettingsGenerativeSafetySettingsBannedPhrase
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultBannedPhraseMatchStrategy:
          map['defaultBannedPhraseMatchStrategy'] == null
              ? null
              : map['defaultBannedPhraseMatchStrategy'] as String,
    );
  }
}
