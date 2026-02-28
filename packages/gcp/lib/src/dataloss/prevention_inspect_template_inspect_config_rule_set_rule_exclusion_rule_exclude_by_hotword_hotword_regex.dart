// ignore_for_file: unused_element, unnecessary_cast

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex {
  /// The index of the submatch to extract as findings. When not specified,
  /// the entire match is returned. No more than 3 may be included.
  final List<int>? groupIndexes;

  /// Pattern defining the regular expression. Its syntax
  /// (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.
  final String pattern;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex].
  /// [groupIndexes] The index of the submatch to extract as findings. When not specified,
  /// [pattern] Pattern defining the regular expression. Its syntax
  PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex({
    this.groupIndexes,
    required this.pattern,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupIndexesValue = groupIndexes;
    if (groupIndexesValue != null) {
      map['groupIndexes'] = groupIndexesValue;
    }
    map['pattern'] = pattern;
    return map;
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordHotwordRegex(
      groupIndexes: map['groupIndexes'] == null
          ? null
          : (map['groupIndexes'] as List).cast<int>(),
      pattern: map['pattern'] as String,
    );
  }
}
