// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analyzer_configuration_internal_access_analysis_rule.dart';

class AnalyzerConfigurationInternalAccess {
  /// Information about analysis rules for the internal access analyzer. These rules determine which resources and access patterns will be analyzed. See `analysis_rule` Block for Internal Access Analyzer for details.
  final pulumi.Input<AnalyzerConfigurationInternalAccessAnalysisRule>? analysisRule;

  /// Creates a new [AnalyzerConfigurationInternalAccess].
  /// [analysisRule] Information about analysis rules for the internal access analyzer. These rules determine which resources and access patterns will be analyzed. See `analysis_rule` Block for Internal Access Analyzer for details.
  AnalyzerConfigurationInternalAccess({
    this.analysisRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisRule': ?pulumi.Input.mapOptionalInputValue<AnalyzerConfigurationInternalAccessAnalysisRule, Map<String, dynamic>>(analysisRule, (value) => value.toMap()),
    };
  }

  factory AnalyzerConfigurationInternalAccess.fromMap(Map<String, dynamic> map) {
    return AnalyzerConfigurationInternalAccess(
      analysisRule: (() { final guardedValue = map['analysisRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalyzerConfigurationInternalAccessAnalysisRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

