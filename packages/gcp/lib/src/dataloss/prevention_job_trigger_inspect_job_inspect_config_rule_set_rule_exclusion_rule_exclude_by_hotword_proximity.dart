// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity {
  /// Number of characters after the finding to consider. Either this or window_before must be specified
  final int? windowAfter;

  /// Number of characters before the finding to consider. Either this or window_after must be specified
  final int? windowBefore;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity].
  /// [windowAfter] Number of characters after the finding to consider. Either this or window_before must be specified
  /// [windowBefore] Number of characters before the finding to consider. Either this or window_after must be specified
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity({
    this.windowAfter,
    this.windowBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowAfter': ?windowAfter,
      'windowBefore': ?windowBefore,
    };
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleExcludeByHotwordProximity(
      windowAfter: map['windowAfter'] == null
          ? null
          : map['windowAfter'] as int,
      windowBefore: map['windowBefore'] == null
          ? null
          : map['windowBefore'] as int,
    );
  }
}
