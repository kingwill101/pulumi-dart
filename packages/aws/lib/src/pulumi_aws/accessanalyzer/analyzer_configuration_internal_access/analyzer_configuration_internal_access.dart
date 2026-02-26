// ignore_for_file: unused_element, unnecessary_cast

import '../analyzer_configuration_internal_access_analysis_rule/analyzer_configuration_internal_access_analysis_rule.dart';

class AnalyzerConfigurationInternalAccess {
  /// Information about analysis rules for the internal access analyzer. These rules determine which resources and access patterns will be analyzed. See <span pulumi-lang-nodejs="`analysisRule`" pulumi-lang-dotnet="`AnalysisRule`" pulumi-lang-go="`analysisRule`" pulumi-lang-python="`analysis_rule`" pulumi-lang-yaml="`analysisRule`" pulumi-lang-java="`analysisRule`">`analysis_rule`</span> Block for Internal Access Analyzer for details.
  final AnalyzerConfigurationInternalAccessAnalysisRule? analysisRule;

  AnalyzerConfigurationInternalAccess({
    this.analysisRule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analysisRuleValue = analysisRule;
    if (analysisRuleValue != null) {
      map['analysisRule'] = analysisRuleValue.toMap();
    }
    return map;
  }

  factory AnalyzerConfigurationInternalAccess.fromMap(
      Map<String, dynamic> map) {
    return AnalyzerConfigurationInternalAccess(
      analysisRule: map['analysisRule'] == null
          ? null
          : AnalyzerConfigurationInternalAccessAnalysisRule.fromMap(
              (map['analysisRule'] as Map).cast<String, dynamic>()),
    );
  }
}
