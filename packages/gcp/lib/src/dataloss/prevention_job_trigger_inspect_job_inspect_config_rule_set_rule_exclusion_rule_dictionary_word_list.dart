// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryWordList {
  /// Words or phrases defining the dictionary. The dictionary must contain at least one
  /// phrase and every phrase must contain at least 2 characters that are letters or digits.
  final List<String> words;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryWordList].
  /// [words] Words or phrases defining the dictionary. The dictionary must contain at least one
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryWordList({
    required this.words,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'words': words};
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryWordList.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryWordList(
      words: (map['words'] as List).cast<String>(),
    );
  }
}
