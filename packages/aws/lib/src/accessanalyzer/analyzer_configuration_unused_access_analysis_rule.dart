// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyzer_configuration_unused_access_analysis_rule_exclusion.dart';

class AnalyzerConfigurationUnusedAccessAnalysisRule {
  /// List of rules for the analyzer containing criteria to exclude from analysis. Entities that meet the rule criteria will not generate findings. See `exclusion` Block for details.
  final List<AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion>?
  exclusions;

  /// Creates a new [AnalyzerConfigurationUnusedAccessAnalysisRule].
  /// [exclusions] List of rules for the analyzer containing criteria to exclude from analysis. Entities that meet the rule criteria will not generate findings. See `exclusion` Block for details.
  AnalyzerConfigurationUnusedAccessAnalysisRule({this.exclusions});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?exclusions == null
          ? null
          : pulumi.Input.encodeList<
              AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion,
              Map<String, dynamic>
            >(exclusions!, (value) => value.toMap()),
    };
  }

  factory AnalyzerConfigurationUnusedAccessAnalysisRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnalyzerConfigurationUnusedAccessAnalysisRule(
      exclusions: map['exclusions'] == null
          ? null
          : pulumi.Input.decodeList<
              AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion
            >(
              map['exclusions'],
              (value) =>
                  AnalyzerConfigurationUnusedAccessAnalysisRuleExclusion.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
