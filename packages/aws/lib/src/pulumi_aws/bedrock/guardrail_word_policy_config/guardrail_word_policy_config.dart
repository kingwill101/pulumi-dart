// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../guardrail_word_policy_config_managed_word_lists_config/guardrail_word_policy_config_managed_word_lists_config.dart';
import '../guardrail_word_policy_config_words_config/guardrail_word_policy_config_words_config.dart';

class GuardrailWordPolicyConfig {
  /// A config for the list of managed words. See Managed Word Lists Config for more information.
  final List<GuardrailWordPolicyConfigManagedWordListsConfig>?
      managedWordListsConfigs;

  /// List of custom word configs. See Words Config for more information.
  final List<GuardrailWordPolicyConfigWordsConfig>? wordsConfigs;

  GuardrailWordPolicyConfig({
    this.managedWordListsConfigs,
    this.wordsConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final managedWordListsConfigsValue = managedWordListsConfigs;
    if (managedWordListsConfigsValue != null) {
      map['managedWordListsConfigs'] = pulumi.Input.encodeList<
              GuardrailWordPolicyConfigManagedWordListsConfig,
              Map<String, dynamic>>(
          managedWordListsConfigsValue, (value) => value.toMap());
    }
    final wordsConfigsValue = wordsConfigs;
    if (wordsConfigsValue != null) {
      map['wordsConfigs'] = pulumi.Input.encodeList<
          GuardrailWordPolicyConfigWordsConfig,
          Map<String, dynamic>>(wordsConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GuardrailWordPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailWordPolicyConfig(
      managedWordListsConfigs: map['managedWordListsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
                  GuardrailWordPolicyConfigManagedWordListsConfig>(
              map['managedWordListsConfigs'],
              (value) =>
                  GuardrailWordPolicyConfigManagedWordListsConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      wordsConfigs: map['wordsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<GuardrailWordPolicyConfigWordsConfig>(
              map['wordsConfigs'],
              (value) => GuardrailWordPolicyConfigWordsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
