// ignore_for_file: unused_element, unnecessary_cast

import 'analysis_source_entity_source_template.dart';

class AnalysisSourceEntity {
  /// The source template. See source_template.
  final AnalysisSourceEntitySourceTemplate? sourceTemplate;

  /// Creates a new [AnalysisSourceEntity].
  /// [sourceTemplate] The source template. See source_template.
  AnalysisSourceEntity({
    this.sourceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceTemplate': ?sourceTemplate == null ? null : sourceTemplate!.toMap(),
    };
  }

  factory AnalysisSourceEntity.fromMap(Map<String, dynamic> map) {
    return AnalysisSourceEntity(
      sourceTemplate: map['sourceTemplate'] == null ? null : AnalysisSourceEntitySourceTemplate.fromMap((map['sourceTemplate'] as Map).cast<String, dynamic>()),
    );
  }
}

