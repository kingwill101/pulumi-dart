// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_source_entity_source_analysis.dart';
import 'template_source_entity_source_template.dart';

class TemplateSourceEntity {
  /// Source analysis, if it is based on an analysis. Only one of `sourceAnalysis` or `sourceTemplate` should be configured. See `sourceAnalysis` Block.
  final pulumi.Input<TemplateSourceEntitySourceAnalysis?>? sourceAnalysis;
  /// Source template, if it is based on a template. Only one of `sourceAnalysis` or `sourceTemplate` should be configured. See `sourceTemplate` Block.
  final pulumi.Input<TemplateSourceEntitySourceTemplate?>? sourceTemplate;

  /// Creates a new [TemplateSourceEntity].
  /// [sourceAnalysis] Source analysis, if it is based on an analysis. Only one of `sourceAnalysis` or `sourceTemplate` should be configured. See `sourceAnalysis` Block.
  /// [sourceTemplate] Source template, if it is based on a template. Only one of `sourceAnalysis` or `sourceTemplate` should be configured. See `sourceTemplate` Block.
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
