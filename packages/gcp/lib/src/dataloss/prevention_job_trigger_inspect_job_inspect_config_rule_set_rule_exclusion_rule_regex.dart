// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleRegex {
  /// The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included.
  final List<int>? groupIndexes;

  /// Pattern defining the regular expression.
  /// Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.
  final String pattern;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleRegex].
  /// [groupIndexes] The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included.
  /// [pattern] Pattern defining the regular expression.
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleRegex({
    this.groupIndexes,
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'groupIndexes': ?groupIndexes, 'pattern': pattern};
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleRegex.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleRegex(
      groupIndexes: map['groupIndexes'] == null
          ? null
          : (map['groupIndexes'] as List).cast<int>(),
      pattern: map['pattern'] as String,
    );
  }
}
