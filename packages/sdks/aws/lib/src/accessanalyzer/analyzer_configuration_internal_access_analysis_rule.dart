// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyzer_configuration_internal_access_analysis_rule_inclusion.dart';

class AnalyzerConfigurationInternalAccessAnalysisRule {
  /// List of rules for the internal access analyzer containing criteria to include in analysis. Only resources that meet the rule criteria will generate findings. See `inclusion` Block for details.
  final List<AnalyzerConfigurationInternalAccessAnalysisRuleInclusion>? inclusions;

  /// Creates a new [AnalyzerConfigurationInternalAccessAnalysisRule].
  /// [inclusions] List of rules for the internal access analyzer containing criteria to include in analysis. Only resources that meet the rule criteria will generate findings. See `inclusion` Block for details.
  AnalyzerConfigurationInternalAccessAnalysisRule({
    this.inclusions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inclusions': ?inclusions == null ? null : pulumi.Input.encodeList<AnalyzerConfigurationInternalAccessAnalysisRuleInclusion, Map<String, dynamic>>(inclusions!, (value) => value.toMap()),
    };
  }

  factory AnalyzerConfigurationInternalAccessAnalysisRule.fromMap(Map<String, dynamic> map) {
    return AnalyzerConfigurationInternalAccessAnalysisRule(
      inclusions: map['inclusions'] == null ? null : pulumi.Input.decodeList<AnalyzerConfigurationInternalAccessAnalysisRuleInclusion>(map['inclusions'], (value) => AnalyzerConfigurationInternalAccessAnalysisRuleInclusion.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

