// ignore_for_file: unused_element, unnecessary_cast

import '../analyzer_configuration_unused_access_analysis_rule/analyzer_configuration_unused_access_analysis_rule.dart';

class AnalyzerConfigurationUnusedAccess {
  /// Information about analysis rules for the analyzer. Analysis rules determine which entities will generate findings based on the criteria you define when you create the rule. See <span pulumi-lang-nodejs="`analysisRule`" pulumi-lang-dotnet="`AnalysisRule`" pulumi-lang-go="`analysisRule`" pulumi-lang-python="`analysis_rule`" pulumi-lang-yaml="`analysisRule`" pulumi-lang-java="`analysisRule`">`analysis_rule`</span> Block for Unused Access Analyzer for details.
  final AnalyzerConfigurationUnusedAccessAnalysisRule? analysisRule;

  /// Specified access age in days for which to generate findings for unused access.
  final int? unusedAccessAge;

  AnalyzerConfigurationUnusedAccess({
    this.analysisRule,
    this.unusedAccessAge,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final analysisRuleValue = analysisRule;
    if (analysisRuleValue != null) {
      map['analysisRule'] = analysisRuleValue.toMap();
    }
    final unusedAccessAgeValue = unusedAccessAge;
    if (unusedAccessAgeValue != null) {
      map['unusedAccessAge'] = unusedAccessAgeValue;
    }
    return map;
  }

  factory AnalyzerConfigurationUnusedAccess.fromMap(Map<String, dynamic> map) {
    return AnalyzerConfigurationUnusedAccess(
      analysisRule: map['analysisRule'] == null
          ? null
          : AnalyzerConfigurationUnusedAccessAnalysisRule.fromMap(
              (map['analysisRule'] as Map).cast<String, dynamic>()),
      unusedAccessAge:
          map['unusedAccessAge'] == null ? null : map['unusedAccessAge'] as int,
    );
  }
}
