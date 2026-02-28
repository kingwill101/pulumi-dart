// ignore_for_file: unused_element, unnecessary_cast

import 'analyzer_configuration_internal_access_analysis_rule.dart';

class AnalyzerConfigurationInternalAccess {
  /// Information about analysis rules for the internal access analyzer. These rules determine which resources and access patterns will be analyzed. See `analysis_rule` Block for Internal Access Analyzer for details.
  final AnalyzerConfigurationInternalAccessAnalysisRule? analysisRule;

  /// Creates a new [AnalyzerConfigurationInternalAccess].
  /// [analysisRule] Information about analysis rules for the internal access analyzer. These rules determine which resources and access patterns will be analyzed. See `analysis_rule` Block for Internal Access Analyzer for details.
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
