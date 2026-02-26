// ignore_for_file: unused_element, unnecessary_cast

import '../template_source_entity_source_analysis/template_source_entity_source_analysis.dart';
import '../template_source_entity_source_template/template_source_entity_source_template.dart';

class TemplateSourceEntity {
  /// The source analysis, if it is based on an analysis.. Only one of <span pulumi-lang-nodejs="`sourceAnalysis`" pulumi-lang-dotnet="`SourceAnalysis`" pulumi-lang-go="`sourceAnalysis`" pulumi-lang-python="`source_analysis`" pulumi-lang-yaml="`sourceAnalysis`" pulumi-lang-java="`sourceAnalysis`">`source_analysis`</span> or <span pulumi-lang-nodejs="`sourceTemplate`" pulumi-lang-dotnet="`SourceTemplate`" pulumi-lang-go="`sourceTemplate`" pulumi-lang-python="`source_template`" pulumi-lang-yaml="`sourceTemplate`" pulumi-lang-java="`sourceTemplate`">`source_template`</span> should be configured. See source_analysis.
  final TemplateSourceEntitySourceAnalysis? sourceAnalysis;

  /// The source template, if it is based on an template.. Only one of <span pulumi-lang-nodejs="`sourceAnalysis`" pulumi-lang-dotnet="`SourceAnalysis`" pulumi-lang-go="`sourceAnalysis`" pulumi-lang-python="`source_analysis`" pulumi-lang-yaml="`sourceAnalysis`" pulumi-lang-java="`sourceAnalysis`">`source_analysis`</span> or <span pulumi-lang-nodejs="`sourceTemplate`" pulumi-lang-dotnet="`SourceTemplate`" pulumi-lang-go="`sourceTemplate`" pulumi-lang-python="`source_template`" pulumi-lang-yaml="`sourceTemplate`" pulumi-lang-java="`sourceTemplate`">`source_template`</span> should be configured. See source_template.
  final TemplateSourceEntitySourceTemplate? sourceTemplate;

  TemplateSourceEntity({
    this.sourceAnalysis,
    this.sourceTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceAnalysisValue = sourceAnalysis;
    if (sourceAnalysisValue != null) {
      map['sourceAnalysis'] = sourceAnalysisValue.toMap();
    }
    final sourceTemplateValue = sourceTemplate;
    if (sourceTemplateValue != null) {
      map['sourceTemplate'] = sourceTemplateValue.toMap();
    }
    return map;
  }

  factory TemplateSourceEntity.fromMap(Map<String, dynamic> map) {
    return TemplateSourceEntity(
      sourceAnalysis: map['sourceAnalysis'] == null
          ? null
          : TemplateSourceEntitySourceAnalysis.fromMap(
              (map['sourceAnalysis'] as Map).cast<String, dynamic>()),
      sourceTemplate: map['sourceTemplate'] == null
          ? null
          : TemplateSourceEntitySourceTemplate.fromMap(
              (map['sourceTemplate'] as Map).cast<String, dynamic>()),
    );
  }
}
