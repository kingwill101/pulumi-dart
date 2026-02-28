// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule_dictionary_cloud_storage_path.dart';
import 'prevention_job_trigger_inspect_job_inspect_config_rule_set_rule_exclusion_rule_dictionary_word_list.dart';

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionary {
  /// Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath?
      cloudStoragePath;

  /// List of words or phrases to search for.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryWordList?
      wordList;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionary].
  /// [cloudStoragePath] Newline-delimited file of words in Cloud Storage. Only a single file is accepted.
  /// [wordList] List of words or phrases to search for.
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionary({
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

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionary.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionary(
      cloudStoragePath: map['cloudStoragePath'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath
              .fromMap(
                  (map['cloudStoragePath'] as Map).cast<String, dynamic>()),
      wordList: map['wordList'] == null
          ? null
          : PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryWordList
              .fromMap((map['wordList'] as Map).cast<String, dynamic>()),
    );
  }
}
