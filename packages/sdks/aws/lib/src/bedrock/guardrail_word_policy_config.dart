// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guardrail_word_policy_config_managed_word_lists_config.dart';
import 'guardrail_word_policy_config_words_config.dart';

class GuardrailWordPolicyConfig {
  /// Config for the list of managed words. See `managedWordListsConfig` Block for more information.
  final pulumi.Input<List<GuardrailWordPolicyConfigManagedWordListsConfig>?>? managedWordListsConfigs;
  /// List of custom word configs. See `wordsConfig` Block for more information.
  final pulumi.Input<List<GuardrailWordPolicyConfigWordsConfig>?>? wordsConfigs;

  /// Creates a new [GuardrailWordPolicyConfig].
  /// [managedWordListsConfigs] Config for the list of managed words. See `managedWordListsConfig` Block for more information.
  /// [wordsConfigs] List of custom word configs. See `wordsConfig` Block for more information.
  const GuardrailWordPolicyConfig({
    this.managedWordListsConfigs,
    this.wordsConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedWordListsConfigs': ?pulumi.Input.mapOptionalInputValue<List<GuardrailWordPolicyConfigManagedWordListsConfig>, List<Map<String, dynamic>>>(managedWordListsConfigs, (value) => pulumi.Input.encodeList<GuardrailWordPolicyConfigManagedWordListsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'wordsConfigs': ?pulumi.Input.mapOptionalInputValue<List<GuardrailWordPolicyConfigWordsConfig>, List<Map<String, dynamic>>>(wordsConfigs, (value) => pulumi.Input.encodeList<GuardrailWordPolicyConfigWordsConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GuardrailWordPolicyConfig.fromMap(Map<String, dynamic> map) {
    return GuardrailWordPolicyConfig(
      managedWordListsConfigs: (() { final guardedValue = map['managedWordListsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuardrailWordPolicyConfigManagedWordListsConfig>(guardedValue, (value) => GuardrailWordPolicyConfigManagedWordListsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      wordsConfigs: (() { final guardedValue = map['wordsConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GuardrailWordPolicyConfigWordsConfig>(guardedValue, (value) => GuardrailWordPolicyConfigWordsConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
