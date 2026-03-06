// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyzer_configuration_unused_access_analysis_rule.dart';

class AnalyzerConfigurationUnusedAccess {
  /// Information about analysis rules for the analyzer. Analysis rules determine which entities will generate findings based on the criteria you define when you create the rule. See `analysis_rule` Block for Unused Access Analyzer for details.
  final pulumi.Input<AnalyzerConfigurationUnusedAccessAnalysisRule>? analysisRule;
  /// Specified access age in days for which to generate findings for unused access.
  final pulumi.Input<int>? unusedAccessAge;

  /// Creates a new [AnalyzerConfigurationUnusedAccess].
  /// [analysisRule] Information about analysis rules for the analyzer. Analysis rules determine which entities will generate findings based on the criteria you define when you create the rule. See `analysis_rule` Block for Unused Access Analyzer for details.
  /// [unusedAccessAge] Specified access age in days for which to generate findings for unused access.
  const AnalyzerConfigurationUnusedAccess({
    this.analysisRule,
    this.unusedAccessAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisRule': ?pulumi.Input.mapOptionalInputValue<AnalyzerConfigurationUnusedAccessAnalysisRule, Map<String, dynamic>>(analysisRule, (value) => value.toMap()),
      'unusedAccessAge': ?unusedAccessAge,
    };
  }

  factory AnalyzerConfigurationUnusedAccess.fromMap(Map<String, dynamic> map) {
    return AnalyzerConfigurationUnusedAccess(
      analysisRule: (() { final guardedValue = map['analysisRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyzerConfigurationUnusedAccessAnalysisRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      unusedAccessAge: (() { final guardedValue = map['unusedAccessAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

