// ignore_for_file: unused_element, unnecessary_cast

import 'max_age_rule_response.dart';
import 'max_count_rule_response.dart';

/// Definition of ApplicationVersionLifecycleConfig
class ApplicationVersionLifecycleConfigResponse {
  /// Specify a max age rule to restrict the length of time that application versions are retained for an application.
  final MaxAgeRuleResponse? maxAgeRule;
  /// Specify a max count rule to restrict the number of application versions that are retained for an application.
  final MaxCountRuleResponse? maxCountRule;

  /// Creates a new [ApplicationVersionLifecycleConfigResponse].
  /// [maxAgeRule] Specify a max age rule to restrict the length of time that application versions are retained for an application.
  /// [maxCountRule] Specify a max count rule to restrict the number of application versions that are retained for an application.
  ApplicationVersionLifecycleConfigResponse({
    this.maxAgeRule,
    this.maxCountRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxAgeRule': ?maxAgeRule == null ? null : maxAgeRule!.toMap(),
      'maxCountRule': ?maxCountRule == null ? null : maxCountRule!.toMap(),
    };
  }

  factory ApplicationVersionLifecycleConfigResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationVersionLifecycleConfigResponse(
      maxAgeRule: map['maxAgeRule'] == null ? null : MaxAgeRuleResponse.fromMap((map['maxAgeRule'] as Map).cast<String, dynamic>()),
      maxCountRule: map['maxCountRule'] == null ? null : MaxCountRuleResponse.fromMap((map['maxCountRule'] as Map).cast<String, dynamic>()),
    );
  }
}

