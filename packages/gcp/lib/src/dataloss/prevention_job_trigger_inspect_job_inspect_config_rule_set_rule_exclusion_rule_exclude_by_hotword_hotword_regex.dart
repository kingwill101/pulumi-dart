// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex {
  /// The index of the submatch to extract as findings. When not specified,
  /// the entire match is returned. No more than 3 may be included.
  final List<int>? groupIndexes;

  /// Pattern defining the regular expression. Its syntax
  /// (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.
  final String? pattern;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex].
  /// [groupIndexes] The index of the submatch to extract as findings. When not specified,
  /// [pattern] Pattern defining the regular expression. Its syntax
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex({
    this.groupIndexes,
    this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIndexes': ?groupIndexes,
      'pattern': ?pattern,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex(
      groupIndexes: map['groupIndexes'] == null
          ? null
          : (map['groupIndexes'] as List).cast<int>(),
      pattern: map['pattern'] == null ? null : map['pattern'] as String,
    );
  }
}
