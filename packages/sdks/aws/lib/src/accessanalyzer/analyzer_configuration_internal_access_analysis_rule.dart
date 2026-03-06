// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyzer_configuration_internal_access_analysis_rule_inclusion.dart';

class AnalyzerConfigurationInternalAccessAnalysisRule {
  /// List of rules for the internal access analyzer containing criteria to include in analysis. Only resources that meet the rule criteria will generate findings. See `inclusion` Block for details.
  final pulumi.Input<List<AnalyzerConfigurationInternalAccessAnalysisRuleInclusion>>? inclusions;

  /// Creates a new [AnalyzerConfigurationInternalAccessAnalysisRule].
  /// [inclusions] List of rules for the internal access analyzer containing criteria to include in analysis. Only resources that meet the rule criteria will generate findings. See `inclusion` Block for details.
  const AnalyzerConfigurationInternalAccessAnalysisRule({
    this.inclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inclusions': ?pulumi.Input.mapOptionalInputValue<List<AnalyzerConfigurationInternalAccessAnalysisRuleInclusion>, List<Map<String, dynamic>>>(inclusions, (value) => pulumi.Input.encodeList<AnalyzerConfigurationInternalAccessAnalysisRuleInclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AnalyzerConfigurationInternalAccessAnalysisRule.fromMap(Map<String, dynamic> map) {
    return AnalyzerConfigurationInternalAccessAnalysisRule(
      inclusions: (() { final guardedValue = map['inclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalyzerConfigurationInternalAccessAnalysisRuleInclusion>(guardedValue, (value) => AnalyzerConfigurationInternalAccessAnalysisRuleInclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

