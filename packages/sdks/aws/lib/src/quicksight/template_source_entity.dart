// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_source_entity_source_analysis.dart';
import 'template_source_entity_source_template.dart';

class TemplateSourceEntity {
  /// The source analysis, if it is based on an analysis.. Only one of `sourceAnalysis` or `sourceTemplate` should be configured. See source_analysis.
  final pulumi.Input<TemplateSourceEntitySourceAnalysis?>? sourceAnalysis;
  /// The source template, if it is based on an template.. Only one of `sourceAnalysis` or `sourceTemplate` should be configured. See source_template.
  final pulumi.Input<TemplateSourceEntitySourceTemplate?>? sourceTemplate;

  /// Creates a new [TemplateSourceEntity].
  /// [sourceAnalysis] The source analysis, if it is based on an analysis.. Only one of `sourceAnalysis` or `sourceTemplate` should be configured. See source_analysis.
  /// [sourceTemplate] The source template, if it is based on an template.. Only one of `sourceAnalysis` or `sourceTemplate` should be configured. See source_template.
  const TemplateSourceEntity({
    this.sourceAnalysis,
    this.sourceTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceAnalysis': ?pulumi.Input.mapOptionalInputValue<TemplateSourceEntitySourceAnalysis, Map<String, dynamic>>(sourceAnalysis, (value) => value.toMap()),
      'sourceTemplate': ?pulumi.Input.mapOptionalInputValue<TemplateSourceEntitySourceTemplate, Map<String, dynamic>>(sourceTemplate, (value) => value.toMap()),
    };
  }

  factory TemplateSourceEntity.fromMap(Map<String, dynamic> map) {
    return TemplateSourceEntity(
      sourceAnalysis: (() { final guardedValue = map['sourceAnalysis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateSourceEntitySourceAnalysis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceTemplate: (() { final guardedValue = map['sourceTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateSourceEntitySourceTemplate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
