// ignore_for_file: unused_element, unnecessary_cast

import '../analysis_source_entity_source_template/analysis_source_entity_source_template.dart';

class AnalysisSourceEntity {
  /// The source template. See source_template.
  final AnalysisSourceEntitySourceTemplate? sourceTemplate;

  AnalysisSourceEntity({
    this.sourceTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceTemplateValue = sourceTemplate;
    if (sourceTemplateValue != null) {
      map['sourceTemplate'] = sourceTemplateValue.toMap();
    }
    return map;
  }

  factory AnalysisSourceEntity.fromMap(Map<String, dynamic> map) {
    return AnalysisSourceEntity(
      sourceTemplate: map['sourceTemplate'] == null
          ? null
          : AnalysisSourceEntitySourceTemplate.fromMap(
              (map['sourceTemplate'] as Map).cast<String, dynamic>()),
    );
  }
}
