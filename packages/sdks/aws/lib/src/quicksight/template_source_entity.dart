// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'template_source_entity_source_analysis.dart';
import 'template_source_entity_source_template.dart';

class TemplateSourceEntity {
  /// The source analysis, if it is based on an analysis.. Only one of `source_analysis` or `source_template` should be configured. See source_analysis.
  final pulumi.Input<TemplateSourceEntitySourceAnalysis>? sourceAnalysis;
  /// The source template, if it is based on an template.. Only one of `source_analysis` or `source_template` should be configured. See source_template.
  final pulumi.Input<TemplateSourceEntitySourceTemplate>? sourceTemplate;

  /// Creates a new [TemplateSourceEntity].
  /// [sourceAnalysis] The source analysis, if it is based on an analysis.. Only one of `source_analysis` or `source_template` should be configured. See source_analysis.
  /// [sourceTemplate] The source template, if it is based on an template.. Only one of `source_analysis` or `source_template` should be configured. See source_template.
  TemplateSourceEntity({
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
      sourceAnalysis: map['sourceAnalysis'] == null ? null : (TemplateSourceEntitySourceAnalysis.fromMap((map['sourceAnalysis'] as Map).cast<String, dynamic>())).input(),
      sourceTemplate: map['sourceTemplate'] == null ? null : (TemplateSourceEntitySourceTemplate.fromMap((map['sourceTemplate'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

