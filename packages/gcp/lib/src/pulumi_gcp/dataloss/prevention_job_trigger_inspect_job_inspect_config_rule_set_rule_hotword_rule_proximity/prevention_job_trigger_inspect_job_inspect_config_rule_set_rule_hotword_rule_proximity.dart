// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleHotwordRuleProximity {
  /// Number of characters after the finding to consider. Either this or<span pulumi-lang-nodejs=" windowBefore " pulumi-lang-dotnet=" WindowBefore " pulumi-lang-go=" windowBefore " pulumi-lang-python=" window_before " pulumi-lang-yaml=" windowBefore " pulumi-lang-java=" windowBefore "> window_before </span>must be specified
  final int? windowAfter;

  /// Number of characters before the finding to consider. Either this or<span pulumi-lang-nodejs=" windowAfter " pulumi-lang-dotnet=" WindowAfter " pulumi-lang-go=" windowAfter " pulumi-lang-python=" window_after " pulumi-lang-yaml=" windowAfter " pulumi-lang-java=" windowAfter "> window_after </span>must be specified
  final int? windowBefore;

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
