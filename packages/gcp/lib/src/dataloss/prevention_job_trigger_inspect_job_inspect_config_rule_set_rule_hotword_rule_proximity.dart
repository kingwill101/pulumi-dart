// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity {
  /// Number of characters after the finding to consider. Either this or window_before must be specified
  final int? windowAfter;

  /// Number of characters before the finding to consider. Either this or window_after must be specified
  final int? windowBefore;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity].
  /// [windowAfter] Number of characters after the finding to consider. Either this or window_before must be specified
  /// [windowBefore] Number of characters before the finding to consider. Either this or window_after must be specified
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity({
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

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity(
      windowAfter:
          map['windowAfter'] == null ? null : map['windowAfter'] as int,
      windowBefore:
          map['windowBefore'] == null ? null : map['windowBefore'] as int,
    );
  }
}
