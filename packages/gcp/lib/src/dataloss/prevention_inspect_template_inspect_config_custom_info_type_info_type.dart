// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_inspect_template_inspect_config_custom_info_type_info_type_sensitivity_score.dart';

class PreventionInspectTemplateInspectConfigCustomInfoTypeInfoType {
  /// Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
  /// listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.
  final String name;

  /// Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// Structure is documented below.
  final PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeSensitivityScore?
      sensitivityScore;

  /// Version name for this InfoType.
  final String? version;

  /// Creates a new [PreventionInspectTemplateInspectConfigCustomInfoTypeInfoType].
  /// [name] Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names
  /// [sensitivityScore] Optional custom sensitivity for this InfoType. This only applies to data profiling.
  /// [version] Version name for this InfoType.
  PreventionInspectTemplateInspectConfigCustomInfoTypeInfoType({
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

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeInfoType.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeInfoType(
      name: map['name'] as String,
      sensitivityScore: map['sensitivityScore'] == null
          ? null
          : PreventionInspectTemplateInspectConfigCustomInfoTypeInfoTypeSensitivityScore
              .fromMap(
                  (map['sensitivityScore'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
