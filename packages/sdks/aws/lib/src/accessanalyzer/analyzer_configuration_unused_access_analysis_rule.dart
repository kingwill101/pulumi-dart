// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyzer_configuration_unused_access_analysis_rule_exclusion.dart';

class AnalyzerConfigurationUnusedAccessAnalysisRule {
  /// List of rules for the analyzer containing criteria to exclude from analysis. Entities that meet the rule criteria will not generate findings. See `exclusion` Block for details.
  final pulumi.Input<List<AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion>>? exclusions;

  /// Creates a new [AnalyzerConfigurationUnusedAccessAnalysisRule].
  /// [exclusions] List of rules for the analyzer containing criteria to exclude from analysis. Entities that meet the rule criteria will not generate findings. See `exclusion` Block for details.
  const AnalyzerConfigurationUnusedAccessAnalysisRule({
    this.exclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AnalyzerConfigurationUnusedAccessAnalysisRule.fromMap(Map<String, dynamic> map) {
    return AnalyzerConfigurationUnusedAccessAnalysisRule(
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion>(guardedValue, (value) => AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

