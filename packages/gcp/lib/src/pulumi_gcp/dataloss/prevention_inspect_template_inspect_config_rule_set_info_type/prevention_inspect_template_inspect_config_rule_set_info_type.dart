// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_inspect_template_inspect_config_rule_set_info_type_sensitivity_score/prevention_inspect_template_inspect_config_rule_set_info_type_sensitivity_score.dart';

class PreventionInspectTemplateInspectConfigRuleSetInfoType {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed
  /// at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  final String name;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigRuleSetInfoTypeSensitivityScore?
      sensitivityScore;

  /// Version name for this InfoType.
  final String? version;

  PreventionInspectTemplateInspectConfigRuleSetInfoType({
    required this.name,
    this.sensitivityScore,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final sensitivityScoreValue = sensitivityScore;
    if (sensitivityScoreValue != null) {
      map['sensitivityScore'] = sensitivityScoreValue.toMap();
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory PreventionInspectTemplateInspectConfigRuleSetInfoType.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigRuleSetInfoType(
      name: map['name'] as String,
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : PreventionInspectTemplateInspectConfigRuleSetInfoTypeSensitivityScore
              .fromMap(
                  (map['sensitivityScore'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
