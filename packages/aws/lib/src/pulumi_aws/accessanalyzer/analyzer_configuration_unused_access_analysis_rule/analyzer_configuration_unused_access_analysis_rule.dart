// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../analyzer_configuration_unused_access_analysis_rule_exclusion/analyzer_configuration_unused_access_analysis_rule_exclusion.dart';

class AnalyzerConfigurationUnusedAccessAnalysisRule {
  /// List of rules for the analyzer containing criteria to exclude from analysis. Entities that meet the rule criteria will not generate findings. See `exclusion` Block for details.
  final List<AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion>?
      exclusions;

  AnalyzerConfigurationUnusedAccessAnalysisRule({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final exclusionsValue = exclusions;
    if (exclusionsValue != null) {
      map['exclusions'] = Input.encodeList<
          AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion,
          Map<String, dynamic>>(exclusionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnalyzerConfigurationUnusedAccessAnalysisRule.fromMap(
      Map<String, dynamic> map) {
    return AnalyzerConfigurationUnusedAccessAnalysisRule(
      exclusions: map['exclusions'] == null
          ? null
          : Input.decodeList<
                  AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion>(
              map['exclusions'],
              (value) => AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
