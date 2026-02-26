// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_dictionary_cloud_storage_path/prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_dictionary_cloud_storage_path.dart';
import '../prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_dictionary_word_list/prevention_inspect_template_inspect_config_rule_set_rule_exclusion_rule_dictionary_word_list.dart';

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath?
      cloudStoragePath;

  /// List of words or phrases to search for.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryWordList?
      wordList;

  PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary({
    this.cloudStoragePath,
    this.wordList,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudStoragePathValue = cloudStoragePath;
    if (cloudStoragePathValue != null) {
      map['cloudStoragePath'] = cloudStoragePathValue.toMap();
    }
    final wordListValue = wordList;
    if (wordListValue != null) {
      map['wordList'] = wordListValue.toMap();
    }
    return map;
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionary(
      cloudStoragePath: map['cloudStoragePath'] == null
          ? null
          : PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath
              .fromMap(
                  (map['cloudStoragePath'] as Map).cast<String, dynamic>()),
      wordList: map['wordList'] == null
          ? null
          : PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleDictionaryWordList
              .fromMap((map['wordList'] as Map).cast<String, dynamic>()),
    );
  }
}
