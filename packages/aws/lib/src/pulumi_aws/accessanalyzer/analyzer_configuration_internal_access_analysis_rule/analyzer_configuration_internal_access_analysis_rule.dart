// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../analyzer_configuration_internal_access_analysis_rule_inclusion/analyzer_configuration_internal_access_analysis_rule_inclusion.dart';

class AnalyzerConfigurationInternalAccessAnalysisRule {
  /// List of rules for the internal access analyzer containing criteria to include in analysis. Only resources that meet the rule criteria will generate findings. See `inclusion` Block for details.
  final List<AnalyzerConfigurationInternalAccessAnalysisRuleInclusion>?
      inclusions;

  AnalyzerConfigurationInternalAccessAnalysisRule({
    this.inclusions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inclusionsValue = inclusions;
    if (inclusionsValue != null) {
      map['inclusions'] = Input.encodeList<
          AnalyzerConfigurationInternalAccessAnalysisRuleInclusion,
          Map<String, dynamic>>(inclusionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnalyzerConfigurationInternalAccessAnalysisRule.fromMap(
      Map<String, dynamic> map) {
    return AnalyzerConfigurationInternalAccessAnalysisRule(
      inclusions: map['inclusions'] == null
          ? null
          : Input.decodeList<
                  AnalyzerConfigurationInternalAccessAnalysisRuleInclusion>(
              map['inclusions'],
              (value) =>
                  AnalyzerConfigurationInternalAccessAnalysisRuleInclusion
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
