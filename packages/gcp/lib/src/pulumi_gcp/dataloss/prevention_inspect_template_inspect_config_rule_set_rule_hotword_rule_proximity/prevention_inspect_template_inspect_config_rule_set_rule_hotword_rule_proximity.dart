// ignore_for_file: unused_element, unnecessary_cast

class PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity {
  /// Number of characters after the finding to consider.
  final int? windowAfter;

  /// Number of characters before the finding to consider.
  final int? windowBefore;

  PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity({
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

  factory PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetRuleHotwordRuleProximity(
      windowAfter:
          map['windowAfter'] == null ? null : map['windowAfter'] as int,
      windowBefore:
          map['windowBefore'] == null ? null : map['windowBefore'] as int,
    );
  }
}
