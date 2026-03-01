// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_word_policy_config_managed_word_lists_config.dart';
import 'guardrail_word_policy_config_words_config.dart';

class GuardrailWordPolicyConfig {
  /// A config for the list of managed words. See Managed Word Lists Config for more information.
  final List<GuardrailWordPolicyConfigManagedWordListsConfig>?
  managedWordListsConfigs;

  /// List of custom word configs. See Words Config for more information.
  final List<GuardrailWordPolicyConfigWordsConfig>? wordsConfigs;

  /// Creates a new [GuardrailWordPolicyConfig].
  /// [managedWordListsConfigs] A config for the list of managed words. See Managed Word Lists Config for more information.
  /// [wordsConfigs] List of custom word configs. See Words Config for more information.
  GuardrailWordPolicyConfig({this.managedWordListsConfigs, this.wordsConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedWordListsConfigs': ?managedWordListsConfigs == null
          ? null
          : pulumi.Input.encodeList<
              GuardrailWordPolicyConfigManagedWordListsConfig,
              Map<String, dynamic>
            >(managedWordListsConfigs!, (value) => value.toMap()),
      'wordsConfigs': ?wordsConfigs == null
          ? null
          : pulumi.Input.encodeList<
              GuardrailWordPolicyConfigWordsConfig,
              Map<String, dynamic>
            >(wordsConfigs!, (value) => value.toMap()),
    };
  }

  factory GuardrailWordPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailWordPolicyConfig(
      managedWordListsConfigs: map['managedWordListsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              GuardrailWordPolicyConfigManagedWordListsConfig
            >(
              map['managedWordListsConfigs'],
              (value) =>
                  GuardrailWordPolicyConfigManagedWordListsConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      wordsConfigs: map['wordsConfigs'] == null
          ? null
          : pulumi.Input.decodeList<GuardrailWordPolicyConfigWordsConfig>(
              map['wordsConfigs'],
              (value) => GuardrailWordPolicyConfigWordsConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
