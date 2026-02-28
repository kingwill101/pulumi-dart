// ignore_for_file: unused_element, unnecessary_cast

class PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity {
  /// Number of characters after the finding to consider.
  final int? windowAfter;

  /// Number of characters before the finding to consider.
  final int? windowBefore;

  /// Creates a new [PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity].
  /// [windowAfter] Number of characters after the finding to consider.
  /// [windowBefore] Number of characters before the finding to consider.
  PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity({
    this.windowAfter,
    this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final windowAfterValue = windowAfter;
    if (windowAfterValue != null) {
      map['windowAfter'] = windowAfterValue;
    }
    final windowBeforeValue = windowBefore;
    if (windowBeforeValue != null) {
      map['windowBefore'] = windowBeforeValue;
    }
    return map;
  }

  factory PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity(
      windowAfter:
          map['windowAfter'] == null ? null : map['windowAfter'] as int,
      windowBefore:
          map['windowBefore'] == null ? null : map['windowBefore'] as int,
    );
  }
}
